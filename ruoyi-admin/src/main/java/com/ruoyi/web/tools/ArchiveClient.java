package com.ruoyi.web.tools;

import Greeter.Copyservice;
import Greeter.GreetGrpc;
import io.grpc.ManagedChannel;
import io.grpc.ManagedChannelBuilder;
import io.grpc.stub.StreamObserver;
import lombok.extern.slf4j.Slf4j;

/**
 * 与C#通信工具类
 */
public class ArchiveClient {



    private final GreetGrpc.GreetBlockingStub blockingStub;
    private final GreetGrpc.GreetStub stub;


    public ArchiveClient(String host,int port) {
        this(ManagedChannelBuilder.forAddress(host,port).usePlaintext());
    }

    public ArchiveClient(GreetGrpc.GreetBlockingStub blockingStub, GreetGrpc.GreetStub stub) {
        this.blockingStub = blockingStub;
        this.stub = stub;
    }

    public ArchiveClient(ManagedChannelBuilder<?> channelBuilder){

        ManagedChannel channel = channelBuilder.build();
        blockingStub = GreetGrpc.newBlockingStub(channel);
        stub = GreetGrpc.newStub(channel);
    }


    public void startResolve(String path){
        Greeter.Copyservice.StringMsg.Builder builder = Greeter.Copyservice.StringMsg.newBuilder();
        builder.setMsg(path);
        Greeter.Copyservice.StringMsg request = builder.build();
//        Greeter.Copyservice.StringMsg reply = blockingStub.beginGD(request);
//        System.out.println("reply:"+reply.getMsg());
        stub.beginGD(request, new StreamObserver<Copyservice.StringMsg>() {
            @Override
            public void onNext(Copyservice.StringMsg stringMsg) {
                System.out.println("onNext:"+stringMsg.getMsg());
            }

            @Override
            public void onError(Throwable throwable) {
                System.out.println("reply:"+throwable.getMessage());
            }

            @Override
            public void onCompleted() {
                System.out.println("onCompleted:");
            }
        });

    }
}

package com.ruoyi.web.tools;

import greet.Greet;
import greet.GreeterGrpc;
import io.grpc.ManagedChannel;
import io.grpc.ManagedChannelBuilder;

/**
 * 与C#通信工具类
 */
public class ArchiveClient {



    private final GreeterGrpc.GreeterBlockingStub blockingStub;
    private final GreeterGrpc.GreeterStub stub;


    public ArchiveClient(String host,int port) {
        this(ManagedChannelBuilder.forAddress(host,port).usePlaintext());
    }

    public ArchiveClient(GreeterGrpc.GreeterBlockingStub blockingStub, GreeterGrpc.GreeterStub stub) {
        this.blockingStub = blockingStub;
        this.stub = stub;
    }

    public ArchiveClient(ManagedChannelBuilder<?> channelBuilder){

        ManagedChannel channel = channelBuilder.build();
        blockingStub = GreeterGrpc.newBlockingStub(channel);
        stub = GreeterGrpc.newStub(channel);
    }


    public void startResolve(String path){
        Greet.HelloRequest.Builder builder = Greet.HelloRequest.newBuilder();
        builder.setName(path);
        Greet.HelloRequest request = builder.build();
        Greet.HelloReply reply = blockingStub.sayHello(request);
        System.out.println("reply:"+reply.getMessage());
    }
}

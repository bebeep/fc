package com.ruoyi.web.tools;

import Greeter.GreetGrpc;
import io.grpc.ManagedChannel;
import io.grpc.ManagedChannelBuilder;
import lombok.extern.slf4j.Slf4j;

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


    public void sayHello(){
        Greeter.Copyservice.HelloRequest.Builder builder = Greeter.Copyservice.HelloRequest.newBuilder();
        builder.setName("fc---");
        Greeter.Copyservice.HelloRequest request = builder.build();
        Greeter.Copyservice.HelloReply reply = blockingStub.sayHello(request);
        System.out.println("reply:"+reply.getMessage());
    }
}

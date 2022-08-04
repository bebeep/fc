package com.ruoyi.web.thumbutils;

import lombok.SneakyThrows;
import net.coobird.thumbnailator.Thumbnails;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.util.concurrent.BlockingQueue;

public class test2 extends Thread{
    private BlockingQueue<byte[]> queueByte;//原图
    private BlockingQueue<byte[]> GetImgYs;//缩略图

    public test2(BlockingQueue<byte[]> queueByte, BlockingQueue<byte[]> getImgYs){
        this.queueByte = queueByte;
        this.GetImgYs = getImgYs;
    }

    @SneakyThrows
    @Override
    public void run() {
        while (true){
            long startTime = System.currentTimeMillis();
            ByteArrayInputStream in = new ByteArrayInputStream(queueByte.take());
            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            BufferedImage bimg = ImageIO.read(in);
            BufferedImage bimg2 = Thumbnails.of(bimg).size(200,200).asBufferedImage();
            ImageIO.write(bimg2,"jpg",baos);
            System.out.println("压缩用时-new："+(System.currentTimeMillis() - startTime) );
            GetImgYs.add(baos.toByteArray());

        }
    }
}

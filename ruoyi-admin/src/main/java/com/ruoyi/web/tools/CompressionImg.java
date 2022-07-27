package com.ruoyi.web.tools;

import lombok.SneakyThrows;
import net.coobird.thumbnailator.Thumbnails;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.BlockingQueue;

public class CompressionImg extends Thread{
    private BlockingQueue<ElementByte> queueByte;
    private BlockingQueue<ElementByte> GetImgYs;

    public CompressionImg(BlockingQueue<ElementByte> getImgYs, BlockingQueue<ElementByte> queueByte) {
        this.GetImgYs = getImgYs;
        this.queueByte = queueByte;
    }

    @SneakyThrows
    @Override
    public void run() {
        while (true){
            ElementByte eb = queueByte.take();
            long startTime = System.currentTimeMillis();
            ByteArrayInputStream intputStream = new ByteArrayInputStream(eb.getBytes());
            Thumbnails.Builder<? extends InputStream> builder = Thumbnails.of(intputStream).size(200, 200);
            try {
                BufferedImage bufferedImage = builder.asBufferedImage();
                ByteArrayOutputStream baos = new ByteArrayOutputStream();
                ImageIO.write(bufferedImage, "jpg", baos);
                byte[] byteArray = baos.toByteArray();
                ElementByte e = new ElementByte();
                e.setImgID(eb.getImgID());
                e.setBytes(byteArray);
                GetImgYs.put(e);
                System.out.println("压缩用时-new："+(System.currentTimeMillis() - startTime) );
            } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
    }

}

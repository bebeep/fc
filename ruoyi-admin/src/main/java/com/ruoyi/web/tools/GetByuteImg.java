package com.ruoyi.web.tools;

import com.ruoyi.system.service.IFcThumbService;
import lombok.SneakyThrows;
import org.springframework.beans.factory.annotation.Autowired;
import javax.annotation.PostConstruct;
import java.io.File;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.concurrent.BlockingQueue;



public class GetByuteImg extends Thread{

    private BlockingQueue<File> getPath;
    private BlockingQueue<ElementByte> queueByte;




    public GetByuteImg(BlockingQueue<File>  getPath, BlockingQueue<ElementByte> queueByte) {
        this.getPath = getPath;
        this.queueByte = queueByte;
    }



    @SneakyThrows
    @Override
    public void run(){

        while (true){
            try {
                String path = getPath.take().getAbsolutePath();
                System.out.println("正在获取"+path+"中的图片");
                Class.forName("org.sqlite.JDBC");
                Connection conn = DriverManager.getConnection("jdbc:sqlite:" +path);
                String sql = "SELECT imgGUID,imgContent from imgInfo;";
                PreparedStatement ps = conn.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();
                byte[] imgContent = null;
                while ( rs.next() ) {
                    byte[] oldBytes = rs.getBytes("imgContent");
                    long imgGUID = rs.getLong("imgGUID");
                    imgContent = new byte[oldBytes.length-8];
                    System.arraycopy(oldBytes, 8, imgContent, 0, imgContent.length);
                    ElementByte e = new ElementByte();
                    e.setImgID(imgGUID);
                    e.setBytes(imgContent);
                    queueByte.put(e);
                }

                ThumbUtils.fcThumbService.insertFcThumb(path,String.valueOf(getPath.take().lastModified()));

            }catch (Exception e){
                e.printStackTrace();
            }
        }

    }
}

package com.ruoyi.web.tools;

import lombok.SneakyThrows;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.util.concurrent.BlockingQueue;

public class SaveByteImg extends Thread{
    private BlockingQueue<ElementByte> getImgYs;
    private String tablePath;

    public SaveByteImg(String tablePath, BlockingQueue<ElementByte> getImgYs) {
        this.tablePath = tablePath;
        this.getImgYs = getImgYs;
    }
    @SneakyThrows
    @Override
    public void run() {
        while (true){
            ElementByte ee = getImgYs.take();
            Connection conn = null;
            try {
                conn = DriverManager.getConnection("jdbc:sqlite:"+tablePath+"\\thumbDB.db");
                conn.setAutoCommit(false);
                Statement stat = conn.createStatement();
                //开始插入缩略图
                stat.execute("CREATE TABLE IF NOT EXISTS thumbImage(imgKey INT64 PRIMARY KEY,thumbImage BLOB);");
                String thumbSql="insert into thumbImage (imgKey,thumbImage)  values ("+ee.getImgID()+",?)";
                PreparedStatement pstmt = conn.prepareStatement(thumbSql);

                pstmt.setBytes(1,ee.getBytes());
                pstmt.executeUpdate();

                conn.commit();
                conn.close();
            } catch ( Exception e ) {
                System.err.println( e.getClass().getName() + ": " + e.getMessage() );
            }
        }
    }
}

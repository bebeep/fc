package com.ruoyi.web.thumbutils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.util.Queue;
import java.util.concurrent.BlockingQueue;

public class test3 extends Thread{
    private BlockingQueue<byte[]> GetImgYs;//缩略图
    private String tablePath;
    private BlockingQueue<Long> queueID;

    public test3(BlockingQueue<Long> queueID, String tablePath, BlockingQueue<byte[]> GetImgYs){
        this.queueID = queueID;
        this.tablePath = tablePath;
        this.GetImgYs = GetImgYs;
    }

    //在指定目录下创建文件夹保存缩略图
    @Override
    public void run() {
        Connection conn = null;
        try {
            Class.forName("org.sqlite.JDBC");
            conn = DriverManager.getConnection("jdbc:sqlite:"+tablePath+"\\thumbDB.db");
            conn.setAutoCommit(false);
            Statement stat = conn.createStatement();
            stat.execute("CREATE TABLE IF NOT EXISTS thumbImage(imgKey INT64 PRIMARY KEY,thumbImage BLOB);");
            String thumbSql="insert into thumbImage (imgKey,thumbImage)  values ("+queueID.take()+",?)";
            PreparedStatement pstmt = conn.prepareStatement(thumbSql);

            pstmt.setBytes(1,GetImgYs.take());
            pstmt.executeUpdate();

            conn.commit();
            conn.close();
        } catch ( Exception e ) {
            System.err.println( e.getClass().getName() + ": " + e.getMessage() );
        }
    }

}

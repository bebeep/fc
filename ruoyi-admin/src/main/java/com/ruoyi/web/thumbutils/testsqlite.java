package com.ruoyi.web.thumbutils;


import com.ruoyi.web.copy.DomReadXML;
import lombok.SneakyThrows;

import java.sql.*;
import java.util.LinkedList;
import java.util.Queue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingDeque;

public class testsqlite extends Thread{
    //private static final DomReadXML domReadXML = new DomReadXML();
    //private static final String path = domReadXML.readXml().get(2);

    private static String paths = "D:\\天窗数据\\2022-03-06\\2022_03_06_22_15_17_沪蓉_浦口站-全椒站_下行\\DB\\C1_1.subDb";
    private static String tablePath = "D:\\天窗数据\\2022-03-06\\2022_03_06_22_15_17_沪蓉_浦口站-全椒站_下行\\DB";

    private static BlockingQueue<byte[]> queueByte = new LinkedBlockingDeque();//存放查出来的byte图片二进制数组
    private static BlockingQueue<Long> queueID = new LinkedBlockingDeque();//存放ID
    private static BlockingQueue<byte[]> GetImgYs = new LinkedBlockingDeque<>();//保存压缩好的缩略图


    @SneakyThrows
    @Override
    public void run(){
        try {
            Class.forName("org.sqlite.JDBC");
            Connection conn = DriverManager.getConnection("jdbc:sqlite:" +paths);
            String sql = "SELECT imgGUID,imgContent from imgInfo;";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            byte[] imgContent = null;
            while ( rs.next() ) {
                byte[] oldBytes = rs.getBytes("imgContent");
                long imgGUID = rs.getLong("imgGUID");
                imgContent = new byte[oldBytes.length-8];
                System.arraycopy(oldBytes, 8, imgContent, 0, imgContent.length);
                queueByte.put(imgContent);
                queueID.put(imgGUID);
            }


        }catch (Exception e){
            e.printStackTrace();
        }

    }

    public void m(){
        System.out.println("开启线程");
        //获取图
        testsqlite testsqlite = new testsqlite();
        testsqlite.start();
        //压缩
        test2 t2 = new test2(queueByte,GetImgYs);
        t2.start();
        test2 t22 = new test2(queueByte,GetImgYs);
        t22.start();


        test2 test2 = new test2(queueByte,GetImgYs);
        test2.start();
        test2 test3 = new test2(queueByte,GetImgYs);
        test3.start();
        test2 test4 = new test2(queueByte,GetImgYs);
        test4.start();
        test2 test5 = new test2(queueByte,GetImgYs);
        test5.start();

        //保存
        test3 t3 = new test3(queueID,tablePath,GetImgYs);
        t3.start();

        System.out.println("开启线程完成");
    }

}

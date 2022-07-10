package com.ruoyi.web.tools;

import java.io.*;
import java.sql.*;

public class DBUtils {




    public static void main(String[] args) throws IOException {
//        addThumb();
        selectImageThumb("D:\\天窗数据\\2022-03-05\\2022_03_05_14_04_02_双雷线_双墩集站-雷麻店站_下行1\\DB");

    }


    /**
     * 传入文件夹路径，将该文件夹下的所有subdb文件遍历，将图像数据取出来压缩后再保存到新的db文件；
     * @return
     */
    public static void selectImageThumb(String tablePath){
        File imageDb = new File(tablePath);
        if (!imageDb.exists() || !imageDb.isDirectory()){
            return;
        }

        File[] subdbFiles = imageDb.listFiles();

        Connection conn = null;
        PreparedStatement ps = null;

        try {
            Class.forName("org.sqlite.JDBC");
            for (File subddbFile:subdbFiles){
                if (!subddbFile.getPath().endsWith(".subDb"))continue;
                conn = DriverManager.getConnection("jdbc:sqlite:"+subddbFile.getPath());
                Statement stat = conn.createStatement();
                conn.setAutoCommit(false);

                String sql = "SELECT imgGUID,imgContent from imgInfo;";
                ps = conn.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();

                byte[] imgContent = null;
                while ( rs.next() ) {
                    byte[] oldBytes = rs.getBytes("imgContent");
                    long imgGUID = rs.getLong("imgGUID");

                    imgContent = new byte[oldBytes.length-8];
                    System.arraycopy(oldBytes, 8, imgContent, 0, imgContent.length);
                    byte[] bb = TaskUtils.compressImage(imgContent);
                    //开始插入缩略图
                    addThumb(imgGUID,bb);

                }
                rs.close();
                ps.close();


                conn.commit();
                conn.close();

            }
        } catch ( Exception e ) {
            System.err.println( e.getClass().getName() + ": " + e.getMessage() );
        }
    }



    private static void addThumb(long imgGUID,byte[] imgContent){
        Connection conn = null;
        try {
            conn = DriverManager.getConnection("jdbc:sqlite:"+TaskUtils.basePath+"thumbDB.db");
            conn.setAutoCommit(false);
            Statement stat = conn.createStatement();
            //开始插入缩略图
            stat.execute("CREATE TABLE IF NOT EXISTS thumbImage(imgKey INT64 ,thumbImage BLOB);");
            String thumbSql="insert into thumbImage (imgKey,thumbImage)  values ("+imgGUID+",?)";
            PreparedStatement pstmt = conn.prepareStatement(thumbSql);

            pstmt.setBytes(1,imgContent);
            pstmt.executeUpdate();

            conn.commit();
            conn.close();
        } catch ( Exception e ) {
            System.err.println( e.getClass().getName() + ": " + e.getMessage() );
        }
    }


}

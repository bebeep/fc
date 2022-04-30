package com.ruoyi.web.sqlite;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class SqliteTest {
    public static void main( String args[] )
    {
        Connection conn = null;
        PreparedStatement ps = null;
        try {
            Class.forName("org.sqlite.JDBC");
            conn = DriverManager.getConnection("jdbc:sqlite:G:/work/java/RuoYi-master/ruoyi-admin/sql/C9_9.subDb");
            conn.setAutoCommit(false);
            System.out.println("Opened database successfully");

            String sql = "SELECT * from imgInfo;";
            ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            String targetPath;
            while ( rs.next() ) {
                System.out.println("imgGUID:"+rs.getLong("imgGUID"));
                System.out.println("imgContent:"+rs.getBytes("imgContent").length);
                System.out.println("======================================");

                targetPath = "G:\\work\\java\\RuoYi-master\\doc\\out_"+rs.getLong("imgGUID")+".png";
//                InputStream in = rs.getBlob("imgContent").getBinaryStream();
//                byte[] in = rs.getBytes("imgContent");
//                readBin2Image(in,targetPath);

                byteToFile(rs.getBytes("imgContent"),targetPath);
            }

            ps.close();
            conn.commit();
            conn.close();
        } catch ( Exception e ) {
            System.err.println( e.getClass().getName() + ": " + e.getMessage() );
            System.exit(0);
        }
        System.out.println("Records created successfully");
    }


    public static void readBin2Image(InputStream  in,String targetPath){
        File file = new File(targetPath);
        String path = targetPath.substring(0, targetPath.lastIndexOf("/"));
        if (!file.exists()) {
            new File(path).mkdir();
        }
        FileOutputStream fos = null;
        try {
            fos = new FileOutputStream(file);
            int len = 0;
            byte[] buf = new byte[1024];
            while ((len = in.read(buf)) != -1) {
                fos.write(buf, 0, len);
            }
            fos.flush();
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            if (null != fos){
                try {
                    fos.close();
                }catch (Exception e){
                    e.printStackTrace();
                }
            }
        }
    }


    static void byteToFile(byte[] bytes,String filePath)throws Exception{
        ByteArrayInputStream bais = new ByteArrayInputStream(bytes);
        BufferedImage bi1 =ImageIO.read(bais);
        try {
            File w2 = new File(filePath);//可以是jpg,png,gif格式
            ImageIO.write(bi1, "jpg", w2);//不管输出什么格式图片，此处不需改动
        } catch (IOException e) {
            e.printStackTrace();
        }finally{
            bais.close();
        }
    }
}

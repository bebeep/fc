package com.ruoyi.web.tools;


import com.ruoyi.system.domain.FcThumb;
import com.ruoyi.system.service.IFcThumbService;
import lombok.SneakyThrows;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.*;
import java.util.concurrent.BlockingQueue;


@Component
public class ThumbUtils {
    @Autowired
    private IFcThumbService service;

    static IFcThumbService fcThumbService;

    @PostConstruct
    public void init() {
        fcThumbService = service;
    }

    public static void main(String[] args) throws IOException {
//        addThumb();
//        selectImageThumb("D:\\天窗数据\\2022-03-05\\2022_03_05_14_04_02_双雷线_双墩集站-雷麻店站_下行1\\DB");
//        saveThumbImages(new File(TaskUtils.basePath));


        ArchiveClient client = new ArchiveClient("localhost",5000);
        client.startResolve("D:\\天窗数据\\2022-03-06\\2022_03_06_22_15_17_沪蓉_浦口站-全椒站_下行\\DB");
    }

    /**
     * 递归查找所有.subDb文件，根据修改时间确定是否生成缩略图
     * @param file
     */
    @SneakyThrows
    public static void saveThumbImages(File file,BlockingQueue<File> getPath) {
        File flist[] = file.listFiles();
        if (flist == null || flist.length == 0) {
            return;
        }
        for (File f : flist) {
            if (f.isDirectory()) { //文件夹
                saveThumbImages(f,getPath);
            } else { //文件
                if (f.getAbsolutePath().endsWith(".subDb")){//所有的图片文件
                    //先从数据库查找该路径的subDB是否已经生成缩略图，
                    // 并且判断该subDb文件的修改时间是否与数据库中数据相匹配，
                    // 如果该subDb文件发生了修改，则删除缩略图文件，重新生成缩略图文件；
                    File thumbFile = new File(f.getParentFile().getAbsolutePath()+"\\thumbDB.db");
                    FcThumb fcThumb = fcThumbService.selectFcThumbById(f.getAbsolutePath());
                    if (!thumbFile.exists() || fcThumb == null || !fcThumb.getEdittime().equals(String.valueOf(f.lastModified()))){
                        getPath.put(f);
                        //setImageThumb(f);
                        //获取原图

                    }else {
                        System.out.println("---缩略图任务---已经有缩略图并且是最新的:"+thumbFile.getAbsolutePath());
                    }

                }

            }
        }



    }


    /**





     */


    /**
     * 传入文件夹路径，将该文件夹下的所有subdb文件遍历，将图像数据取出来压缩后再保存到新的db文件；
     * @return
     */
    /**
    private static boolean setImageThumb(File file){
        if (!file.exists()){
            return false;
        }

        Connection conn = null;
        PreparedStatement ps = null;
        try {
            Class.forName("org.sqlite.JDBC");
            conn = DriverManager.getConnection("jdbc:sqlite:"+file.getAbsolutePath());
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
                addThumb(file.getParentFile().getAbsolutePath(),imgGUID,bb);
            }
            rs.close();
            ps.close();


            conn.commit();
            conn.close();

            fcThumbService.insertFcThumb(file.getAbsolutePath(),String.valueOf(file.lastModified()));
            return true;
        } catch ( Exception e ) {
            System.err.println( e.getClass().getName() + ": " + e.getMessage() );
        }
        return false;
    }



    private static void addThumb(String tablePath,long imgGUID,byte[] imgContent){
        Connection conn = null;
        try {
            conn = DriverManager.getConnection("jdbc:sqlite:"+tablePath+"\\thumbDB.db");
            conn.setAutoCommit(false);
            Statement stat = conn.createStatement();
            //开始插入缩略图
            stat.execute("CREATE TABLE IF NOT EXISTS thumbImage(imgKey INT64 PRIMARY KEY,thumbImage BLOB);");
            String thumbSql="replace into thumbImage (imgKey,thumbImage)  values ("+imgGUID+",?)";
            PreparedStatement pstmt = conn.prepareStatement(thumbSql);

            pstmt.setBytes(1,imgContent);
            pstmt.executeUpdate();

            conn.commit();
            conn.close();
        } catch ( Exception e ) {
            System.err.println( e.getClass().getName() + ": " + e.getMessage() );
        }
    }

**/



    /**
     * 逆时针旋转90度
     * @return
     */
    public static byte[] rotate90AW(byte[] bytes)
    {
        try {
            BufferedImage bi = ImageIO.read(new ByteArrayInputStream(bytes));
            int width = bi.getWidth();
            int height = bi.getHeight();

            BufferedImage biFlip = new BufferedImage(height, width, bi.getType());

            for (int i = 0; i < width; i++)
                for (int j = 0; j < height; j++)
                    biFlip.setRGB(j, width - 1 - i, bi.getRGB(i, j));

            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            ImageIO.write(biFlip, "jpg", baos);
            baos.flush();
            return baos.toByteArray();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    /**
     * 顺时针旋转90度
     * @return
     */
    public static byte[] rotate90CW(byte[] bytes)
    {
        try {
            BufferedImage bi = ImageIO.read(new ByteArrayInputStream(bytes));
            int width = bi.getWidth();
            int height = bi.getHeight();

            BufferedImage biFlip = new BufferedImage(height, width, bi.getType());

            for (int i = 0; i < width; i++)
                for (int j = 0; j < height; j++)
                    biFlip.setRGB(height - 1 - j, i, bi.getRGB(i, j));

            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            ImageIO.write(biFlip, "jpg", baos);
            baos.flush();
            return baos.toByteArray();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }


}

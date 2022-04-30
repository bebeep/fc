package com.ruoyi.web.tools;

import com.alibaba.fastjson.JSON;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.framework.web.domain.server.Sys;
import org.slf4j.Logger;
import sun.misc.BASE64Encoder;

import javax.imageio.ImageIO;
import javax.imageio.stream.FileImageOutputStream;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.*;
import java.sql.*;
import java.util.*;
import java.util.List;
import java.util.zip.GZIPInputStream;

public class TaskUtils {


    static final String basePath = "D:\\天窗数据\\"; //存放数据源文件的根目录


    /**
     * 获取数据源目录下的所有任务数据
     * @return
     */
    public static List<HashMap<String,Object>> getAllTasks(String year){
        File file = new File(basePath);
        if (!file.exists() || !file.isDirectory() || file.list() == null || file.list().length == 0){
            return null;
        }
        String[] dateFiles = file.list(); //所有的日期文件夹
        List<HashMap<String,Object>> list = new ArrayList<>();
        HashMap<String,Object> map;
        for (int i = 1;i<=12;i++){
            String month = year + "-"+(i<10?("0"+i):String.valueOf(i));//月份
            map = new HashMap();
            map.put("month",month);
            int count = 0;//当月的任务数
            for (String dateFile:dateFiles){
                File taskFiles = new File(basePath+dateFile);
                if (dateFile.isEmpty() || dateFile.length()!=10 ||
                        taskFiles == null || !taskFiles.exists() ||
                        taskFiles.list() == null || taskFiles.list().length == 0 || !dateFile.startsWith(year))
                    continue;
                String curMonth = dateFile.substring(0,7);
                if (month.equals(curMonth)){
                    count += taskFiles.list().length;
                }
            }
            map.put("count",count);
            list.add(map);
        }
        System.out.println("\n所有任务数据："+ JSON.toJSON(list));
        return list;
    }



    /**
     * 根据日期查询任务文件夹
     * @return
     */
    public static List<HashMap<String,Object>> getTasksByDate(String date){
        String dicName = basePath + date;
        File file = new File(dicName);
        if (!file.exists() || !file.isDirectory() || file.list() == null || file.list().length == 0){
            return null;
        }
        List<HashMap<String,Object>> list = new ArrayList<>();
        HashMap<String,Object> map;
        for (String dateFile:file.list()){
            File taskFile = new File(dicName+"\\"+dateFile);
            if (taskFile==null || !taskFile.exists())continue;
            map = new HashMap<>();
//            try {
//                map.put("taskName", dateFile.substring(21));
//            }catch (Exception e){
//                map.put("taskName", dateFile);
//            }
            map.put("taskName", dateFile);
            map.put("taskPath", enCodeStringToBase64(taskFile.getPath()));
            list.add(map);
        }
        System.out.println("\n根据日期查询任务文件夹："+ JSON.toJSON(list));
        return list;
    }


    /**
     * 根据任务路径查询站区信息
     * @return
     */
    public static List<HashMap<String,Object>> getStationsByTask(String taskPath){
        String dbFilePath = getDbPath(taskPath);
        Connection conn = null;
        PreparedStatement ps = null;
        try {
            Class.forName("org.sqlite.JDBC");
            conn = DriverManager.getConnection("jdbc:sqlite:"+dbFilePath);
            conn.setAutoCommit(false);

            String sql = "SELECT Id,STN from indexTB;";
            ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            List<HashMap<String,Object>> list = new ArrayList<>();
            HashMap<String,Object> map;
            String lastStationName = "";
            int endId = 0;
            while ( rs.next() ) {
                String stationName = rs.getString("STN");
                endId = rs.getInt("Id");
                if (stationName.isEmpty() || lastStationName.equals(stationName))continue;
                lastStationName = stationName;


                map = new HashMap<>();
                map.put("startId",rs.getInt("Id"));
                map.put("stationName",stationName);
                list.add(map);
            }
            ps.close();
            conn.commit();
            conn.close();

            for (int i =0;i<list.size();i++){
                HashMap map1 = list.get(i);
                if (i<list.size()-1)map1.put("endId",(int)list.get(i+1).get("startId")-1);
                else map1.put("endId",endId);
            }

//            Collections.reverse(list);//倒序输出
            System.out.println("\n站区列表："+ JSON.toJSON(list));
            return list;
        } catch ( Exception e ) {
            System.err.println( e.getClass().getName() + ": " + e.getMessage() );
        }
        return null;
    }



    /**
     * 根据站区分页获取杆号信息
     * @return
     */
    public static List<HashMap<String,Object>> getRoleInfoByStation(String taskPath,int startId,int endId,int pageNo,int pageSize){

        String dbFilePath = getDbPath(taskPath);

        Connection conn = null;
        PreparedStatement ps = null;
        try {
            Class.forName("org.sqlite.JDBC");
            conn = DriverManager.getConnection("jdbc:sqlite:"+dbFilePath);
            conn.setAutoCommit(false);

            String sql = "SELECT Id,POL,KMV,cID,imgKey,DxInd from indexTB;";
            ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            List<HashMap<String,Object>> list = new ArrayList<>();
            HashMap<String,Object> map;
            String lastRoleName = ""; //杆号
            long lastKMV = 0;

            //每个杆号下面的图片信息 cID(相机编号) SubDBID(图像分库编号) imgKey(图像ID) DxId(吊弦分组编号)
            List<HashMap<String,Object>> imageInfos = new ArrayList<>();


            while ( rs.next() ) {

                int id = rs.getInt("Id");
                if (id <startId) continue;


                String roleName = rs.getString("POL");
                if (lastRoleName.isEmpty() )lastRoleName = roleName;

                if (!lastRoleName.equals(roleName)){
                    //说明杆号发生改变
                    map = new HashMap<>();
                    map.put("KMV",lastKMV);
                    map.put("POL",lastRoleName);
//                    map.put("imgInfos",imageInfos);
                    list.add(map);
                    imageInfos = new ArrayList<>();
                }

                lastRoleName = roleName;
                lastKMV = rs.getLong("KMV");
                HashMap<String,Object> imageMap = new HashMap<>();
                imageMap.put("id",id);
                imageMap.put("cID",rs.getInt("cID"));
                imageMap.put("imgKey",rs.getLong("imgKey"));
                imageMap.put("DxInd",rs.getInt("DxInd"));
                imageInfos.add(imageMap);
                if (id  == endId) break;
            }
            ps.close();
            conn.commit();
            conn.close();

            if (pageNo < 0 ) pageNo = 0;
            if (pageSize == 0) pageSize = 20;

            if (pageNo*pageSize > list.size()) return null;
            if ((pageNo+1) * pageSize > list.size()) list = list.subList(pageNo*pageSize,list.size());
            else list = list.subList(pageNo*pageSize,(pageNo+1) * pageSize);

            //重组数据，杆号下分相机分类-相机列表-图片列表

            System.out.println("\n杆号信息："+ list.size() + " | "+JSON.toJSON(list));
            return list;
        } catch ( Exception e ) {
            System.err.println( e.getClass().getName() + ": " + e.getMessage() );
        }
        return null;
    }


    /**
     * 根据杆号和相机分类获取所有图片信息
     * @return
     */
    public static List<HashMap<String,Object>> getImages(String taskPath,String pole, List<HashMap> cameraList){

        String dbFilePath = getDbPath(taskPath);

        Connection conn = null;
        PreparedStatement ps = null;
        try {
            Class.forName("org.sqlite.JDBC");
            conn = DriverManager.getConnection("jdbc:sqlite:"+dbFilePath);
            conn.setAutoCommit(false);

            //查询某一杆号下的所有信息
            String sql = "SELECT Id,POL,KMV,cID,imgKey,DxInd,TIM,SubDBID from indexTB where POL='"+pole+"';";
            ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            List<HashMap<String,Object>> list = new ArrayList<>();
            while ( rs.next() ) {
                HashMap map = new HashMap();
                map.put("Id",rs.getInt("Id") );
                map.put("POL",rs.getString("POL") );
                map.put("KMV",rs.getDouble("KMV") );
                map.put("cID",rs.getInt("cID") );
                map.put("imgKey",rs.getLong("imgKey") );
                map.put("DxInd",rs.getInt("DxInd") );
                map.put("TIM",rs.getLong("TIM") );
                map.put("SubDBID",rs.getInt("SubDBID") );
//                map.put("imgContent", selectImage(
//                        taskPath+"\\DB\\C"+rs.getInt("cID")+"_"+rs.getInt("SubDBID")+".subDb",
//                        rs.getLong("imgKey")));
//                map.put("imgContent", "http://www.baidu.com假图片地址");
                list.add(map);
            }
            ps.close();
            conn.commit();
            conn.close();


            System.out.println(pole+"杆号下的图片："+ list.size() + " | " +JSON.toJSON(list));
            return list;
        } catch ( Exception e ) {
            System.err.println( e.getClass().getName() + ": " + e.getMessage() );
        }
        return null;
    }


    /**
     * 查询单张图片
     * 转成base64
     * @return
     */
    public static byte[] selectImage(String tablePath,Long imgKey,boolean isThumb){
        File imageDb = new File(tablePath);
        if (!imageDb.exists() || imageDb.length() == 0){
            return null;
        }
        Connection conn = null;
        PreparedStatement ps = null;
        try {
            Class.forName("org.sqlite.JDBC");
            conn = DriverManager.getConnection("jdbc:sqlite:"+imageDb);
            conn.setAutoCommit(false);


            String sql = "SELECT imgGUID,imgContent from imgInfo where imgGUID="+imgKey+";";
            ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            byte[] imgContent = null;
            while ( rs.next() ) {
                byte[] oldBytes = rs.getBytes("imgContent");

                imgContent = new byte[oldBytes.length-8];
                System.arraycopy(oldBytes, 8, imgContent, 0, imgContent.length);
            }
            ps.close();
            conn.commit();
            conn.close();

            return isThumb?compressImage(imgContent,10):imgContent;
        } catch ( Exception e ) {
            System.err.println( e.getClass().getName() + ": " + e.getMessage() );
        }
        return null;
    }


    private static String getDbPath(String taskPath){
        File taskFile = new File(taskPath);
        if (!taskFile.exists() || !taskFile.isDirectory() || taskFile.list() == null || taskFile.list().length == 0){
            return null;
        }
        //DB文件夹
        File dbFiles = new File(taskFile.getPath()+"\\DB");
        if (!dbFiles.exists() || !dbFiles.isDirectory() || dbFiles.list() == null || dbFiles.list().length == 0) return null;
        String dbFilePath = null;
        for (String dbFile:dbFiles.list()){
            if (dbFile.endsWith(".db")){
                dbFilePath = dbFiles.getPath() + File.separator + dbFile;
                break;
            }
        }
        System.out.println("\n数据库文件："+ dbFilePath);
        return dbFilePath;
    }


    /**
     * compressImage
     *
     * @param imageByte
     *      Image source array
     * @param percent  压缩百分比
     * @return
     */
    public static byte[] compressImage(byte[] imageByte, float percent) {
        byte[] smallImage = null;
        int width = 0, height = 0;

        if (imageByte == null)
            return null;

        ByteArrayInputStream byteInput = new ByteArrayInputStream(imageByte);
        try {
            System.out.println("压缩前大小："+ imageByte.length);
            Image image = ImageIO.read(byteInput);
            int w = image.getWidth(null);
            int h = image.getHeight(null);
            // adjust weight and height to avoid image distortion
            double scale = 0;
            scale = percent / 100f;
            width = (int) (w * scale);
            width -= width % 4;
            height = (int) (h * scale);

            if (scale >= (double) 1)
                return imageByte;

            BufferedImage buffImg = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
            buffImg.getGraphics().drawImage(image.getScaledInstance(width, height, Image.SCALE_SMOOTH), 0, 0, null);
            ByteArrayOutputStream out = new ByteArrayOutputStream();
            ImageIO.write(buffImg, "jpg", out);
            smallImage = out.toByteArray();
            System.out.println("压缩后大小："+ smallImage.length);
            return smallImage;

        } catch (IOException e) {
        }
        return imageByte;
    }


    /**
     * 将目标字符转成base64编码
     * @param target
     * @return
     */
    public static String enCodeStringToBase64(String target){
        try {
            if (StringUtils.isEmpty(target))    return null;
            return Base64.getEncoder().encodeToString(target.getBytes("utf-8"));
        } catch (Exception e) {
            System.out.println("转base64编码出现异常");
            return null;
        }
    }

    /**
     * Base64解码
     * @param target
     * @return
     */
    public static String decodeBase64String(String target){
        try {
            if (StringUtils.isEmpty(target))    return null;
            byte[] base64decodedBytes = Base64.getDecoder().decode(target);
            return new String(base64decodedBytes, "utf-8");
        } catch (Exception e) {
            System.out.println("base64解码出现异常");
            return target;
        }
    }




    /**
     * 测试
     */
    public static void main(String[] args) throws FileNotFoundException {
//        getTasksByDate("2022-04-01");
//        getAllTasks();

//        getStationsByTask("D:\\天窗数据\\2022-04-01\\2022_04_01_14_04_01_双雷线_双墩集站-雷麻店站_下行1");
//        getStationsByTask("D:\\天窗数据\\2022-04-01\\2022_04_01_14_04_01_双雷线_双墩集站-雷麻店站_下行1");
//        getStationsByTask("D:\\天窗数据\\2022-04-01\\2022_04_01_14_04_01_双雷线_双墩集站-雷麻店站_下行1");
//        getStationsByTask("D:\\天窗数据\\2022-04-01\\2022_04_01_14_04_01_双雷线_双墩集站-雷麻店站_下行1");
//        getStationsByTask("D:\\天窗数据\\2022-04-01\\2022_04_01_14_04_01_双雷线_双墩集站-雷麻店站_下行1");
//        getStationsByTask("D:\\天窗数据\\2022-04-01\\2022_04_01_14_04_01_双雷线_双墩集站-雷麻店站_下行1");


//        System.out.println("编码："+enCodeStringToBase64("G:\\fc\\4C\\天窗数据\\2022-04-01\\2022_04_01_14_04_01_双雷线_双墩集站-雷麻店站_下行1"));
//        System.out.println("解码："+decodeBase64String("RzpcZmNcNENc5aSp56qX5pWw5o2uXDIwMjItMDQtMDFcMjAyMl8wNF8wMV8xNF8wNF8wMV/lj4zpm7fnur9f5Y+M5aKp6ZuG56uZLembt+m6u+W6l+ermV/kuIvooYwx"));


//        getAllTasks("2021");


//        getRoleInfoByStation(
//                "D:\\天窗数据\\2022-03-05\\2022_03_05_14_04_01_双雷线_双墩集站-雷麻店站_下行",
//                1,
//                1662,
//                0,
//                20
//                );


//        selectImage("D:\\天窗数据\\2022-04-01\\2022_04_01_14_04_01_双雷线_双墩集站-雷麻店站_下行1\\DB\\C1_1.subDb",22030622351037301L);
//        selectImage("D:\\天窗数据\\2022-04-01\\2022_04_01_14_04_01_双雷线_双墩集站-雷麻店站_下行1\\DB\\C1_1.subDb",22030622351155801L);

    }


}

package com.ruoyi.web.tools;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.system.service.IFcThumbService;
import com.ruoyi.web.copy.DomReadXML;
import com.ruoyi.web.websockt.WebSocketServer;
import lombok.SneakyThrows;
import net.coobird.thumbnailator.Thumbnails;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.*;
import java.sql.*;
import java.util.*;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingDeque;

public class TaskUtils {

    public static final DomReadXML domReadXML = new DomReadXML();
    public static final String basePath = domReadXML.readXml().get(2); //存放数据源文件的根目录
    public static final String imagePath = domReadXML.readXml().get(3); //存放数图片的根目录


    /**
     * 根据任务全路径获取任务名称
     */
    public static String getTaskName(String taskPath){
        try {
            String taskName = decodeBase64String(taskPath);
            return new File(taskName.trim()).getName();
        }catch (Exception e){
        }
        return "";
    }


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
            List<Map> tasks = new ArrayList<>();
            int count = 0;//当月的任务数
            for (File file1:file.listFiles()){
                if (!file1.exists() || !file1.isDirectory() || file1.list() == null || file1.list().length == 0){
                    continue;
                }

                for (String dateFile:file1.list()){
                    File taskFile = new File(file1.getPath()+"\\"+dateFile);
                    if (taskFile==null || !taskFile.exists()
                          || (!dateFile.contains("上行") && !dateFile.contains("下行")))continue;
                    String curMonth = dateFile.substring(0,7).replaceAll("_","-");
                    if (month.equals(curMonth)){
                        Map taskMap = new HashMap();
                        taskMap.put("taskDate", dateFile.substring(0,10).replaceAll("_","-"));
                        taskMap.put("taskName", dateFile);
                        taskMap.put("taskPath", enCodeStringToBase64(taskFile.getPath()));
                        tasks.add(taskMap);
                        count += 1;
                    }
                }
            }
            map.put("tasks",tasks);
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
        File file = new File(basePath);
        if (!file.exists() || !file.isDirectory() || file.list() == null || file.list().length == 0){
            return null;
        }
        List<HashMap<String,Object>> list = new ArrayList<>();
        HashMap<String,Object> map;
        for (File file1:file.listFiles()){
            if (!file1.exists() || !file1.isDirectory() || file1.list() == null || file1.list().length == 0){
                continue;
            }
            for (String dateFile:file1.list()){
                File taskFile = new File(file1.getPath()+"\\"+dateFile);
                if (taskFile==null || !taskFile.exists()
                        || !dateFile.replaceAll("_","-").contains(date)
                        || (!dateFile.contains("上行") && !dateFile.contains("下行"))
                        )continue;
                map = new HashMap<>();
                map.put("taskName", dateFile);
                map.put("taskPath", enCodeStringToBase64(taskFile.getPath()));
                list.add(map);
            }
        }

        System.out.println("\n根据日期查询任务文件夹："+ JSON.toJSON(list));
        return list;
    }

    /**
     * 根据任务路径查询历史任务
     * @return
     */
    public static List<HashMap> getHistoryTasks(String currTaskPath){
        File file = new File(currTaskPath);
        if (!file.exists() || !file.isDirectory() || file.list() == null || file.list().length == 0){
            return null;
        }

        try {
            String reg = "\\\\";
            String taskData = currTaskPath.split(reg)[3].substring(0,10);
            String taskName = currTaskPath.split(reg)[3].substring(20,currTaskPath.split(reg)[3].length());

            File baseFile = new File(basePath);
            List<HashMap> list = new ArrayList<>();
            HashMap<String,Object> map;
            for (String dateFilePath:baseFile.list()){
                File dateFiles = new File(basePath+dateFilePath);
                if (!dateFiles.isDirectory() || dateFiles.list() == null) continue;
                if (DateUtils.parseDate(taskData.replaceAll("_","-")).getTime()
                        != DateUtils.parseDate(dateFilePath.replaceAll("_","-")).getTime()) continue;

                for (String taskFilePath:dateFiles.list()){
                    if (taskFilePath.substring(20,taskFilePath.length()).equals(taskName)){
                        map = new HashMap<>();
                        map.put("taskName", basePath+dateFilePath+"\\"+taskFilePath);
                        map.put("taskPath", enCodeStringToBase64(basePath+dateFilePath+"\\"+taskFilePath));
                        list.add(map);
                    }
                }
            }
            System.out.println("\n获取历史任务："+ JSON.toJSON(list));
            return list;
        }catch (Exception e){
            e.printStackTrace();
        }

        return null;
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

            String sql = "select Id,STN,KMV from indexTB where Id in(Select min(Id) FROM indexTB group by STN having count(*)>1)";
            ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            List<HashMap<String,Object>> list = new ArrayList<>();
            HashMap<String,Object> map;
            while ( rs.next() ) {
                map = new HashMap<>();
                map.put("startId",rs.getInt("Id"));
                map.put("stationName",rs.getString("STN"));
                map.put("kmv",rs.getDouble("KMV"));//公里标
                list.add(map);
            }
            ps.close();
            conn.commit();
            conn.close();

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
    public static List<HashMap> getRoleInfoByStation(String taskPath,String stationNames){

        String dbFilePath = getDbPath(taskPath);

        Connection conn = null;
        Statement ps = null;
        try {
            Class.forName("org.sqlite.JDBC");
            conn = DriverManager.getConnection("jdbc:sqlite:"+dbFilePath);
            conn.setAutoCommit(false);

            String[] stns = stationNames.split(",");
            ps = conn.createStatement();
            List<HashMap<String,Object>> list = new ArrayList<>();
            HashMap<String,Object> map;
            for (String stn:stns){
                ResultSet rs = ps.executeQuery("SELECT Id,POL,STN,KMV,cID,imgKey,DxInd from indexTB where STN='"+stn.replace(",","")+"' group by POL having count(*)>1 order by Id;");
                while ( rs.next() ) {
                    map = new HashMap<>();
                    map.put("KMV",rs.getDouble("KMV"));
                    map.put("POL",rs.getString("POL"));
                    map.put("STN",rs.getString("STN"));
                    list.add(map);
                }
            }
            ps.close();
            conn.commit();
            conn.close();

            int endIndex = 19;
            List<HashMap> pageList = new ArrayList<>();
            for (int i = 0;i<list.size();i+=20){
                if (i+20>list.size()) endIndex = (list.size()-1)%20;
                HashMap pageMap = new HashMap();
                pageMap.put("pageStartSTN",list.get(i).get("STN"));
                pageMap.put("pageStartPOL",list.get(i).get("POL"));
                pageMap.put("pageEndSTN",list.get(i+endIndex).get("STN"));
                pageMap.put("pageEndPOL",list.get(i+endIndex).get("POL"));
                pageMap.put("pageData",list.subList(i,i+endIndex+1));
                pageList.add(pageMap);
            }

            //重组数据，杆号下分相机分类-相机列表-图片列表
            System.out.println("\n杆号信息："+ pageList.size());
            return pageList;
        } catch ( Exception e ) {
            System.err.println( e.getClass().getName() + ": " + e.getMessage() );
        }
        return null;
    }


    /**
     * 根据杆号获取所有图片信息
     * @return
     */
    public static List<HashMap<String,Object>> getImages(String taskPath,String pole){
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
                map.put("imgKey",String.valueOf(rs.getLong("imgKey")));
                map.put("DxInd",rs.getInt("DxInd") );
                map.put("TIM",rs.getLong("TIM") );
                map.put("SubDBID",rs.getInt("SubDBID") );
                list.add(map);
            }
            ps.close();
            conn.commit();
            conn.close();

            //todo 此处开始提前缓存该杆号下的图片

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
            rs.close();
            ps.close();
            conn.commit();
            conn.close();


//            byte[] bb = isThumb?compressImage(imgContent,10):imgContent;

            //如果可用内存大于1G，则缓存
//            if (!CPUDataUtils.isMemoryFull())SpringUtils.getBean(RedisCache.class).setCacheObject("fc_imageKey:"+imgKey+(isThumb?"_thumb":""),bb);
            return imgContent;
        } catch ( Exception e ) {
            System.err.println( e.getClass().getName() + ": " + e.getMessage() );
        }
        return null;
    }
    /**
     * 查询缩略图
     * 转成base64
     * @return
     */

    public static byte[] selectThumbImage(String tablePath,Long imgKey){
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

            String sql = "SELECT thumbImage from thumbImage where imgKey="+imgKey+";";
            ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            byte[] imgContent = null;
            while ( rs.next() ) {
                imgContent = rs.getBytes("thumbImage");
            }
            rs.close();
            ps.close();
            conn.commit();
            conn.close();
            return imgContent;
        } catch ( Exception e ) {
            System.err.println( e.getClass().getName() + ": " + e.getMessage() );
        }
        return null;
    }



    /**
     * 获取几何数据
     * @return
     */
    public static List<HashMap> getJHdata(String taskPath,String currPole,int pageSize,int pageNo){
        String dbFilePath = getJHPath(taskPath);
        Connection conn = null;
        PreparedStatement ps = null;
        try {
            Class.forName("org.sqlite.JDBC");
            conn = DriverManager.getConnection("jdbc:sqlite:"+dbFilePath);
            conn.setAutoCommit(false);


            //查询表中是否包含Zig2 Hei2 字段
            String checkSql = "PRAGMA table_info(JH_INFO)";
            ps = conn.prepareStatement(checkSql);
            ResultSet rs = ps.executeQuery();

            String Zig2 = "";
            String Hei2 = "";
            while ( rs.next() ) {
                if (rs.getString("name").equals("Zig2")) Zig2 = "Zig2";
                if (rs.getString("name").equals("Hei2")) Hei2 = "Hei2";
            }


            String sql = "SELECT ID,Pole,Station,KMV,Hei,Zig,speed,Posi from JH_INFO where  zig!=65536 and Hei!=65536 and posi='JCXP_DROPPER' or posi='JXCP_POLE' limit "+pageNo*pageSize+","+pageSize+";";
            if (!Zig2.isEmpty() && !Hei2.isEmpty()){
                sql = "SELECT ID,Pole,Station,KMV,Hei,Hei2,Zig,Zig2,speed,Posi from JH_INFO where zig!=65536 and Hei!=65536 and  posi='JCXP_DROPPER' or posi='JXCP_POLE' limit "+pageNo*pageSize+","+pageSize+";";
            }else if (!Zig2.isEmpty()){
                sql = "SELECT ID,Pole,Station,KMV,Hei,Zig,Zig2,speed,Posi from JH_INFO where zig!=65536 and Hei!=65536 and  posi='JCXP_DROPPER' or posi='JXCP_POLE' limit "+pageNo*pageSize+","+pageSize+";";
            }else if (!Hei2.isEmpty()){
                sql = "SELECT ID,Pole,Station,KMV,Hei,Hei2,Zig,speed,Posi from JH_INFO where zig!=65536 and Hei!=65536 and  posi='JCXP_DROPPER' or posi='JXCP_POLE' limit "+pageNo*pageSize+","+pageSize+";";
            }

            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();

            List<HashMap> list = new ArrayList<>();
            while ( rs.next() ) {
                HashMap map = new HashMap();
                if (currPole == null || currPole.isEmpty() || !currPole.equals(rs.getString("Pole"))){
                    currPole = rs.getString("Pole");
                    map.put("currPole",rs.getString("Pole"));
                    map.put("currKmv",rs.getDouble("KMV"));
                }
                map.put("hei", rs.getDouble("Hei"));
                map.put("zig", rs.getDouble("Zig"));
                map.put("speed", rs.getDouble("Speed"));
                if (!Zig2.isEmpty())  map.put("zig2", rs.getDouble("Zig2"));
                if (!Hei2.isEmpty()) map.put("hei2", rs.getDouble("Hei2"));

                list.add(map);
            }


            ps.close();
            conn.commit();
            conn.close();
            System.out.println("几何数据:"+list.size());
            return list;
        } catch ( Exception e ) {
            System.err.println( e.getClass().getName() + ": " + e.getMessage() );
        }
        return null;
    }


    /**
     * 修改几何数据里的杆号
     */
    public static boolean updateJHdata(String taskPath,String oldPole, String newPole){
        String dbFilePath = getJHPath(taskPath);
        Connection conn = null;
        PreparedStatement ps = null;
        try {
            Class.forName("org.sqlite.JDBC");
            conn = DriverManager.getConnection("jdbc:sqlite:"+dbFilePath);
            conn.setAutoCommit(false);

            String  sql = "update JH_INFO set Pole='"+newPole+"' where Pole='"+oldPole+"';";
            long time = System.currentTimeMillis();
            ps = conn.prepareStatement(sql);
            int result = ps.executeUpdate();

            ps.close();
            conn.commit();
            conn.close();
            System.out.println("几何数据修改结果:"+(System.currentTimeMillis() - time)+"|"+result);
            return result > 0;
        } catch ( Exception e ) {
            System.err.println( e.getClass().getName() + ": " + e.getMessage() );
        }
        return false;
    }



    /**
     * 获取所有杆号、公里标信息
     * @return
     */
    public static List<HashMap<String,Object>> getPolAndKMVInfo(String taskPath){
        String dbFilePath = getDbPath(taskPath);
//        String dbFilePath = taskPath+"\\indedDB.db";
        Connection conn = null;
        PreparedStatement ps = null;
        try {
            Class.forName("org.sqlite.JDBC");
            conn = DriverManager.getConnection("jdbc:sqlite:"+dbFilePath);
            conn.setAutoCommit(false);

            String sql = "SELECT Id,POL,KMV,STN,GYKKMV,imgKey,cId,SubDBID from indexTB group by POL having count(*)>1 order by Id;";
            ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            List<HashMap<String,Object>> list = new ArrayList<>();
            HashMap<String,Object> map;

            //图片信息
            while ( rs.next() ) {
                map = new HashMap<>();
                map.put("KMV",rs.getDouble("KMV"));
                map.put("GYKKMV",rs.getDouble("GYKKMV"));
                map.put("POL",rs.getString("POL"));
                map.put("STN",rs.getString("STN"));
                list.add(map);
            }

            ps.close();
            conn.commit();
            conn.close();

            //重组数据，杆号下分相机分类-相机列表-图片列表
            System.out.println("\n杆号信息1："+ list.size() + " | "+JSON.toJSON(list.get(0)));
            System.out.println("\n杆号信息2："+ list.size() + " | "+JSON.toJSON(list.get(list.size()-1)));
            return list;
        } catch ( Exception e ) {
            System.err.println( e.getClass().getName() + ": " + e.getMessage() );
        }
        return null;
    }


    /**
     * 根据杆号获取杆号相机和全局相机下的图
     * @return
     */
    public static List<HashMap> getImagesByPole(String taskPath,String pole){
        String dbFilePath = getDbPath(taskPath);
        Connection conn = null;
        PreparedStatement ps = null;
        try {
            Class.forName("org.sqlite.JDBC");
            conn = DriverManager.getConnection("jdbc:sqlite:"+dbFilePath);
            conn.setAutoCommit(false);

            String sql = "SELECT Id,POL,KMV,STN,GYKKMV,imgKey,cId,SubDBID from indexTB where POL='"+pole+"'";
            ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            List<HashMap> list = new ArrayList<>();
            HashMap<String,Object> map = new HashMap<>();

            List<HashMap<String,Object>> poleImages = new ArrayList<>();//杆号相机
            List<HashMap<String,Object>> globalImages = new ArrayList<>();//全局相机

            while ( rs.next() ) {
                int cId = rs.getInt("cID");
                boolean poleCamera = cId == 3 || cId == 4 || cId == 19 || cId == 20;//杆号相机
                boolean globalCamera = cId == 11 || cId == 12 || cId == 27 || cId == 28;//全局相机
                if (poleCamera || globalCamera){
                    HashMap<String,Object> imageMap = new HashMap<>();
                    imageMap.put("cID",rs.getInt("cID"));
                    imageMap.put("imgKey",String.valueOf(rs.getLong("imgKey")));
                    imageMap.put("SubDBID",rs.getInt("SubDBID"));
                    imageMap.put("cameraName",getCameraName(cId));
                    if (poleCamera) poleImages.add(imageMap);
                    else globalImages.add(imageMap);
                }
            }

            map.put("poleImages",poleImages);
            map.put("globalImages",globalImages);

            list.add(map);

            ps.close();
            conn.commit();
            conn.close();

            //重组数据，杆号下分相机分类-相机列表-图片列表
            System.out.println("\n杆号信息1："+ list.size() + " | "+JSON.toJSON(list.get(0)));
            System.out.println("\n杆号信息2："+ list.size() + " | "+JSON.toJSON(list.get(list.size()-1)));
            return list;
        } catch ( Exception e ) {
            System.err.println( e.getClass().getName() + ": " + e.getMessage() );
        }
        return null;
    }


    private static String getCameraName(int cId){
        switch (cId){
            case 3:
                return "正面支柱号相机";
            case 4:
                return "正面吊柱号相机";
            case 19:
                return "反面支柱号相机";
            case 20:
                return "反面吊柱号相机";
            case 11:
                return "正面全局相机左";
            case 12:
                return "正面全局相机右";
            case 27:
                return "反面全局相机左";
            case 28:
                return "反面全局相机右";
        }
        return "";
    }

    /**
     * 根据杆号删除数据
     * @return
     */
    public static boolean delPolAndKMVInfo(String taskPath,String poles){
        String dbFilePath = getDbPath(taskPath);
//        String dbFilePath = "C:\\Users\\Administrator\\Desktop\\indedDB.db";
        Connection conn = null;
        PreparedStatement ps = null;
        try {
            Class.forName("org.sqlite.JDBC");
            conn = DriverManager.getConnection("jdbc:sqlite:"+dbFilePath);
            conn.setAutoCommit(false);

            String[] poleArr = poles.split(",");
            StringBuilder poleSql = new StringBuilder();
            poleSql.append("(");
            for (String pole:poleArr){
                poleSql.append("'"+pole+"',");
            }
            if (poleSql.toString().endsWith(",")) poleSql.delete(poleSql.toString().length()-1,poleSql.toString().length());
            poleSql.append(")");

            String sql = "delete from indexTB where POL in "+poleSql.toString();
            ps = conn.prepareStatement(sql);
            int result = ps.executeUpdate();
            ps.close();
            conn.commit();
            conn.close();
            return result>0;
        } catch ( Exception e ) {
            System.err.println( e.getClass().getName() + ": " + e.getMessage() );
        }
        return false;
    }


    /**
     * 精准校正
     */
    public static boolean updatePolAndKMVInfo(String taskPath,String oldPole, String newPole,double newKmv,String newStation,String existPoleNewName){
        String dbFilePath = getDbPath(taskPath);
//        String dbFilePath = "C:\\Users\\Administrator\\Desktop\\indedDB.db";
        Connection conn = null;
        PreparedStatement ps = null;
        try {
            Class.forName("org.sqlite.JDBC");
            conn = DriverManager.getConnection("jdbc:sqlite:"+dbFilePath);
            conn.setAutoCommit(false);


            if (!existPoleNewName.isEmpty()){//修改后的的杆号已存在,则重新命名
                newPole = existPoleNewName;
            }

            String sql;
            if (!newPole.isEmpty() && !newStation.isEmpty()){
                sql = "update indexTB set POL='"+newPole+"',KMV="+newKmv+",STN='"+newStation+"'  where POL='"+oldPole+"'";
            }else{
                if (!newPole.isEmpty()) sql = "update indexTB set POL='"+newPole+"',KMV="+newKmv+"  where POL='"+oldPole+"'";
                else if (!newStation.isEmpty())sql= "update indexTB set KMV="+newKmv+",STN='"+newStation+"'  where POL='"+oldPole+"'";
                else sql= "update indexTB set KMV="+newKmv+"  where POL='"+oldPole+"'";
            }

            ps = conn.prepareStatement(sql);
            int result = ps.executeUpdate();
            ps.close();
            conn.commit();
            conn.close();
            return result>0;
        } catch ( Exception e ) {
            e.printStackTrace();
            System.err.println( e.getClass().getName() + ": " + e.getMessage() );
        }
        return false;
    }


    /**
     * 批量校正
     * 暂时只支持每次移动一位
     */
    public static HashMap updateMulti(String taskPath,String[] poles,boolean asc,int moveCount,String targetPole){
        String dbFilePath = getDbPath(taskPath);
//        String dbFilePath = "C:\\Users\\Administrator\\Desktop\\indedDB.db";
        Connection conn = null;
        PreparedStatement ps = null;
        try {
            Class.forName("org.sqlite.JDBC");
            conn = DriverManager.getConnection("jdbc:sqlite:"+dbFilePath);
            conn.setAutoCommit(false);

            String sql;


            if (poles == null || poles.length == 0 ) return null;

            Statement stat = conn.createStatement();
            int resultCount = 0;
            boolean isTargetPoleNull = targetPole == null || targetPole.isEmpty() || targetPole.equals("null") || targetPole.equals("NULL");


            String newStartPole = "",newEndPole = "";

            if (asc){ //正序
                for (int i = poles.length-1;i >= 0 ; i--){
                    if (poles[i].isEmpty()) continue;
                    if (i == poles.length - 1) {
                        newEndPole = getNewPoleName(isTargetPoleNull?poles[i]:targetPole);
                        sql = "update indexTB set POL='"+newEndPole+"'  where POL='"+poles[i]+"'";
                    }else sql = "update indexTB set POL='"+poles[i+1]+"'  where POL='"+poles[i]+"'";

                    if (i==0) newStartPole = poles[i+1];
                    resultCount+= stat.executeUpdate(sql);
                }
            }else { //逆序
                for (int i = 0;i < poles.length ; i++){
                    if (poles[i].isEmpty()) continue;
                    if (i == 0) {
                        newStartPole = getNewPoleName(isTargetPoleNull?poles[i]:targetPole);
                        sql = "update indexTB set POL='"+newStartPole+"'  where POL='"+poles[i]+"'";
                    }else sql = "update indexTB set POL='"+poles[i-1]+"'  where POL='"+poles[i]+"'";
                    newEndPole = poles[Math.max(i-1,0)];
                    resultCount+= stat.executeUpdate(sql);
                }
            }

            if (resultCount == 0)return null;

            HashMap map = new HashMap();
            sql = "select STN from indexTB where POL='"+newStartPole+"' limit 1";
            ResultSet set = stat.executeQuery(sql);
            while (set.next()){
                map.put("newStartPole",newStartPole);
                map.put("newEndSTN",set.getString("STN"));
            }
            sql = "select STN from indexTB where POL='"+newEndPole+"' limit 1";
            set = stat.executeQuery(sql);
            while (set.next()){
                map.put("newEndPole",newEndPole);
                map.put("newEndSTN",set.getString("STN"));
            }

            //1、创建一张新表
            //2、按照新的顺序将数据复制到新表
            //3、删除旧表
            //4、重命名新表
//            long time = System.currentTimeMillis();
//            Statement stat = conn.createStatement();
//            stat.execute("drop table if exists indexTB_temp;");
//            stat.execute("CREATE TABLE indexTB_temp(Id INTEGER PRIMARY KEY AUTOINCREMENT ,imgKey INT64 ,cID integer,TIM INT64,POL VARCHAR(50)," +
//                    "STN VARCHAR(255),KMV double,GYKKMV double,WHEEL INT64,OCR varchar(50),DxInd int,SubDBID int,dbPath varchar(255),sJson TEXT);");
//
//
//            for (HashMap hashMap:resultIds){
//                int startCopyId = (int) hashMap.get("startId");
//                int endCopyId = (int) hashMap.get("endId");
//                stat.execute("INSERT INTO indexTB_temp SELECT * FROM indexTB  WHERE Id >="+startCopyId+" and Id <= "+endCopyId);
//            }
//
//            stat.execute("drop table if exists indexTB;");
//            stat.execute("ALTER TABLE indexTB_temp RENAME TO indexTB;");
//
//            System.out.println("time: "+(System.currentTimeMillis() - time));
//            System.out.println("resultIds: "+JSONObject.toJSON(resultIds));

            System.out.println("批量校正：resultCount-》"+resultCount + "|新的杆号信息："+map.toString());

            conn.commit();
            conn.close();
            return map;
        } catch ( Exception e ) {
            System.err.println( e.getClass().getName() + ": " + e.getMessage() );
        }
        return null;
    }


    public static String getNewPoleName(String poleName){
        String existPoleNewName = "";//已存在杆号的新name
        int suffixNum = 1;
        try {
            String[] poleNames = poleName.split("_");
            if (poleNames.length==2) suffixNum = Integer.parseInt(poleNames[1])+1;
            existPoleNewName = poleNames[0]+"_"+suffixNum;
            return existPoleNewName;
        }catch (Exception e){
        }
        return poleName+"_1";
    }


    /**
     * 处理正序与逆序
     */
    private static void formatPoles(List<HashMap> multiPoles, boolean asc, List<HashMap> resultIds, int startPoleId, int endPoleId) {
        if (asc){ //正序
            HashMap map = new HashMap();
            map.put("startId",startPoleId);
            map.put("endId",endPoleId);
            resultIds.add(map);
        }else { //逆序
            Collections.reverse(multiPoles);
            resultIds.addAll(multiPoles);
        }
    }


    /**
     * 后台任务执行图像打包
     * @return
     */
    public static TimerTask saveImagesTask(String userId,String taskPath,List<String> stationNames)
    {
        return new TimerTask()
        {
            @Override
            public void run(){
                saveImagesToLocal(userId, taskPath, stationNames);
            }
        };
    }

    /**
     * 后台任务生成缩略图
     * 每隔10秒钟执行一次
     * @return
     */

    private static BlockingQueue<File> getPath = new LinkedBlockingDeque();//存放查出来的byte图片二进制数组
    private static BlockingQueue<ElementByte> queueByte = new LinkedBlockingDeque(100);//存放查出来的byte图片二进制数组
    //private static BlockingQueue<Long> queueID = new LinkedBlockingDeque();//存放ID
    private static BlockingQueue<ElementByte> GetImgYs = new LinkedBlockingDeque<>(100);//保存压缩好的缩略图



    public static TimerTask saveThumbImage()
    {
        return new TimerTask()
        {
            @Override
            public void run(){
                ThumbUtils.saveThumbImages(new File(basePath),getPath);
                YS();
                try {
                    Thread.sleep(10000000);
                    run();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        };
    }
    @SneakyThrows
    public static void YS(){
        System.out.println("---缩略图任务---开始生成缩略图");
        System.out.println("已有路径"+getPath.take());

        GetByuteImg getByuteImg = new GetByuteImg(getPath,queueByte);
        getByuteImg.start();
        //压缩
        CompressionImg c1 = new CompressionImg(GetImgYs,queueByte);
        c1.start();
        CompressionImg c2 = new CompressionImg(GetImgYs,queueByte);
        c2.start();
        CompressionImg c3 = new CompressionImg(GetImgYs,queueByte);
        c3.start();
        CompressionImg c4 = new CompressionImg(GetImgYs,queueByte);
        c4.start();
        //插入图片
        SaveByteImg saveByteImg = new SaveByteImg(getPath.take().getParentFile().getAbsolutePath(),GetImgYs);
        saveByteImg.start();
    }

    /**
     * 按照站区打包文件
     * @return
     */
    public static void saveImagesToLocal(String userId,String taskPath,List<String> stationNames){
        String dbFilePath = getDbPath(taskPath);
        Connection conn = null;
        Statement ps = null;
        try {
            Class.forName("org.sqlite.JDBC");
            conn = DriverManager.getConnection("jdbc:sqlite:"+dbFilePath);
            conn.setAutoCommit(false);

            ps = conn.createStatement();
            List<HashMap<String,Object>> list = new ArrayList<>();
            HashMap<String,Object> map;
            for (String stn:stationNames){
                ResultSet rs = ps.executeQuery("SELECT Id,STN,cID,imgKey,SubDBID,KMV,POL,TIM from indexTB where STN='"+stn.replace(",","")+"'");
                while ( rs.next() ) {
                    map = new HashMap<>();
                    map.put("cID",rs.getInt("cID"));
                    map.put("imgKey",rs.getLong("imgKey"));
                    map.put("SubDBID",rs.getInt("SubDBID"));
                    map.put("STN",rs.getString("STN"));
                    map.put("KMV",(int)rs.getDouble("KMV"));
                    map.put("POL",rs.getString("POL"));
                    map.put("TIM",rs.getLong("TIM"));
                    list.add(map);
                }
            }
            ps.close();
            conn.commit();
            conn.close();
            int currIndex = 0,successCount = 0;
            HashMap callBackMap = new HashMap();
            callBackMap.put("totalSize",list.size());
            String currStn = "",currZipPath = "";
            for (HashMap image:list){
                String tablePath = taskPath+"\\DB\\C"+image.get("cID")+"_"+image.get("SubDBID")+".subDb";
                String[] taskNames = taskPath.split("\\\\");
                String taskName = taskNames[taskNames.length-1];
                String date = taskName.substring(0,10);
                if (currStn.isEmpty()) {
                    currStn = image.get("STN").toString();
                    currZipPath = imagePath+date+"\\"+taskName+"\\"+currStn;
                }

                image.put("targetPath",currZipPath+"\\K"+image.get("KMV")+"_"+image.get("POL"));
                image.put("fileName",image.get("TIM")+"_K"+image.get("KMV")+"_"+image.get("POL")+"_"+image.get("cID")+".jpg");
                if (saveImages(tablePath,image))successCount++;
                currIndex++;


                //生成压缩包
                if (!currStn.equals(image.get("STN"))){
                    System.out.println("currZipPath:"+currZipPath);
                    callBackMap.put("status","正在打包 "+currStn+".zip");
                    WebSocketServer.sendInfo(JSONObject.toJSON(callBackMap).toString(),userId);
                    ZipUtils.toZip(currZipPath,true);
                    currStn = image.get("STN").toString();
                    currZipPath = imagePath+date+"\\"+taskName+"\\"+currStn;
                }
                callBackMap.put("currIndex",currIndex);
                callBackMap.put("progress",String.format("%.2f", ((currIndex * 1.0) / (list.size() * 1.0)) * 99));
                callBackMap.put("successSize",successCount);
                callBackMap.put("status","正在合成图片 "+image.get("fileName"));
                WebSocketServer.sendInfo(JSONObject.toJSON(callBackMap).toString(),userId);
            }
            callBackMap.put("status","正在打包 "+currStn+".zip");
            WebSocketServer.sendInfo(JSONObject.toJSON(callBackMap).toString(),userId);
            ZipUtils.toZip(currZipPath,true);
            callBackMap.put("progress",100);
            callBackMap.put("status","图片整理完毕");
            callBackMap.put("msgType","1");//1打包图像数据
            WebSocketServer.sendInfo(JSONObject.toJSON(callBackMap).toString(),userId);
        } catch ( Exception e ) {
            e.printStackTrace();
        }
    }
    public static boolean saveImages(String tablePath,HashMap map){
        File imageDb = new File(tablePath);
        if (!imageDb.exists() || imageDb.length() == 0){
            return false;
        }
        Connection conn = null;
        PreparedStatement ps = null;
        try {
            Class.forName("org.sqlite.JDBC");
            conn = DriverManager.getConnection("jdbc:sqlite:"+imageDb);
            conn.setAutoCommit(false);
            String sql = "SELECT imgContent from imgInfo where imgGUID="+map.get("imgKey")+";";
            ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            byte[] imgContent = null;
            while ( rs.next() ) {
                byte[] oldBytes = rs.getBytes("imgContent");
                imgContent = new byte[oldBytes.length-8];
                System.arraycopy(oldBytes, 8, imgContent, 0, imgContent.length);
            }
            rs.close();
            ps.close();
            conn.commit();
            conn.close();
            return saveFileByBytes(imgContent,map.get("targetPath").toString(),map.get("fileName").toString());
        } catch ( Exception e ) {
           e.printStackTrace();
            return false;
        }
    }


    /**
     * 测试
     */
    public static void main(String[] args) throws FileNotFoundException {


        //RDpc5aSp56qX5pWw5o2uXDIwMjItMDMtMDZcMjAyMl8wM18wNl8yMl8xNV8xN1/msqrok4lf5rWm5Y+j56uZLeWFqOakkuermV/kuIvooYw=
        System.out.println(enCodeStringToBase64("D:\\天窗数据\\testThumb"));

//        saveImagesToLocal("1111","D:\\天窗数据\\2022-03-06\\2022_03_06_22_15_17_沪蓉_浦口站-全椒站_下行","浦口站,浦口-亭子山,亭子山-全椒");
//        getTasksByDate("2022-04-01");
//        getAllTasks("2022");

//        getStationsByTask("D:\\天窗数据\\2022-04-01\\2022_04_01_14_04_01_双雷线_双墩集站-雷麻店站_下行1");
//        getStationsByTask("D:\\天窗数据\\2022-04-01\\2022_04_01_14_04_01_双雷线_双墩集站-雷麻店站_下行1");
//        getStationsByTask("D:\\天窗数据\\2022-04-01\\2022_04_01_14_04_01_双雷线_双墩集站-雷麻店站_下行1");
//        getStationsByTask("D:\\天窗数据\\2022-04-01\\2022_04_01_14_04_01_双雷线_双墩集站-雷麻店站_下行1");
//        getStationsByTask("D:\\天窗数据\\2022-04-01\\2022_04_01_14_04_01_双雷线_双墩集站-雷麻店站_下行1");
//        getStationsByTask("D:\\天窗数据\\2022-04-01\\2022_04_01_14_04_01_双雷线_双墩集站-雷麻店站_下行1");


//        System.out.println("编码："+enCodeStringToBase64("D:\\天窗数据\\2022-03-06\\2022_03_06_22_15_17_沪蓉_浦口站-全椒站_下行"));
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

//        getJHdata("D:\\天窗数据\\2022-03-05\\2022_03_05_14_04_01_双雷线_双墩集站-雷麻店站_下行",229448,20);

//       List list = getPolAndKMVInfo("C:\\Users\\Administrator\\Desktop");

//        delPolAndKMVInfo("C:\\Users\\Administrator\\Desktop","Y033 ,Y029 ,Y026 ,Y024 ");

//        updatePolAndKMVInfo("C:\\Users\\Administrator\\Desktop","Y022 ","Y022",359.333,"全椒站","Y022");


//        List<HashMap> list = new ArrayList<>();
//        HashMap map = new HashMap();
//        map.put("startId",400);
//        map.put("endId",500);
//        list.add(map);
//        HashMap map1 = new HashMap();
//        map1.put("startId",500);
//        map1.put("endId",600);
//        list.add(map1);
//        updateMulti("C:\\Users\\Administrator\\Desktop",list,true,0,1000);

//        updateJHdata("D:\\天窗数据\\2022-03-05\\2022_03_05_14_04_01_双雷线_双墩集站-雷麻店站_下行","50","50_");


//        getTaskName("RDpc5aSp56qX5pWw5o2uXDIwMjItMDQtMDFcMjAyMl8wNF8wMV8xNF8wNF8wMV/lj4zpm7fnur9f5Y+M5aKp6ZuG56uZLembt+m6u+W6l+ermV/kuIvooYwx");
    }





    public static String getDbPath(String taskPath){
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


    private static String getJHPath(String taskPath){
        File taskFile = new File(taskPath);
        if (!taskFile.exists() || !taskFile.isDirectory() || taskFile.list() == null || taskFile.list().length == 0){
            return null;
        }
        //DB文件夹
        File dbFiles = new File(taskFile.getPath()+"\\几何数据\\JCW.db");
        if (!dbFiles.exists()) return null;
        System.out.println("\n数据库文件："+ dbFiles.getPath());
        return dbFiles.getPath();
    }


    /**
     * compressImage
     * @param imageByte Image source array
     * @return
     */
    public static byte[] compressImage(byte[] imageByte) {
        long startTime = System.currentTimeMillis();
        ByteArrayInputStream intputStream = new ByteArrayInputStream(imageByte);
        Thumbnails.Builder<? extends InputStream> builder = Thumbnails.of(intputStream).size(200, 200);
        try {
            BufferedImage bufferedImage = builder.asBufferedImage();
            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            ImageIO.write(bufferedImage, "png", baos);
            byte[] byteArray = baos.toByteArray();
            System.out.println("压缩用时-new："+(System.currentTimeMillis() - startTime) );
            return byteArray;
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return null;
    }

    public static boolean saveFileByBytes(byte[] bytes,String filePath, String fileName) {
        BufferedOutputStream bos = null;
        FileOutputStream fos = null;
        File file = null;
        try {
            File dir = new File(filePath);
            if (!dir.exists() || !dir.isDirectory()) {// 判断文件目录是否存在
                dir.mkdirs();
            }
            file = new File(filePath + "\\" + fileName);
            fos = new FileOutputStream(file);
            bos = new BufferedOutputStream(fos);
            bos.write(bytes);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        } finally {
            if (bos != null) {
                try {
                    bos.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            if (fos != null) {
                try {
                    fos.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
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



}

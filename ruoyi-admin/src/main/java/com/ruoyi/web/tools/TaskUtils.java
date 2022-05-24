package com.ruoyi.web.tools;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.StringUtils;
import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.*;
import java.sql.*;
import java.util.*;
import java.util.List;

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

            String sql = "SELECT Id,STN,KMV from indexTB;";
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
                map.put("kmv",rs.getDouble("KMV"));//公里标
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
            double lastKMV = 0;

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
                lastKMV = rs.getDouble("KMV");
                HashMap<String,Object> imageMap = new HashMap<>();
                imageMap.put("id",id);
                imageMap.put("cID",rs.getInt("cID"));
                imageMap.put("imgKey",rs.getLong("imgKey"));
                imageMap.put("DxInd",rs.getInt("DxInd"));
                imageInfos.add(imageMap);
                if (id  == endId) break;
            }

            //最后一项
            map = new HashMap<>();
            map.put("KMV",lastKMV);
            map.put("POL",lastRoleName);
            list.add(map);

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
     * 根据杆号获取所有图片信息
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

            System.out.println("通过数据库查找到的图片信息："+imgContent.length/1024);
            return isThumb?compressImage(imgContent,10):imgContent;
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

            String sql = "SELECT Id,POL,KMV,STN,GYKKMV,imgKey,cId,SubDBID from indexTB;";
            ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            List<HashMap<String,Object>> list = new ArrayList<>();
            HashMap<String,Object> map;
            String lastRoleName = ""; //杆号
            String lastSTN = ""; //站区
            double lastKMV = 0;
            double lastGYKKMV = 0;
            int startId = 0;
            int endId = 0;

            //图片信息
            List<HashMap<String,Object>> imageInfos = new ArrayList<>();
            while ( rs.next() ) {
                String roleName = rs.getString("POL");
                if (lastSTN.isEmpty())lastSTN = rs.getString("STN");
                if (startId == 0)startId  = rs.getInt("Id");
                if (lastRoleName.isEmpty() )lastRoleName = roleName;
                if (!lastRoleName.equals(roleName)){
                    //说明杆号发生改变
                    map = new HashMap<>();
                    map.put("KMV",lastKMV);
                    map.put("GYKKMV",lastGYKKMV);
                    map.put("POL",lastRoleName);
                    map.put("STN",lastSTN);
                    map.put("startId",startId);
                    map.put("endId",endId);

                    List<HashMap<String,Object>> poleImages = new ArrayList<>();//杆号相机
                    List<HashMap<String,Object>> globalImages = new ArrayList<>();//全局相机
                    setImages(imageInfos, poleImages, globalImages);
                    map.put("poleImages",poleImages);
                    map.put("globalImages",globalImages);
                    list.add(map);
                    imageInfos = new ArrayList<>();
                    startId  = rs.getInt("Id");
                }
                lastRoleName = roleName;
                lastSTN = rs.getString("STN");
                endId = rs.getInt("Id");
                lastKMV = rs.getDouble("KMV");
                lastGYKKMV = rs.getDouble("GYKKMV");
                HashMap<String,Object> imageMap = new HashMap<>();
                imageMap.put("cID",rs.getInt("cID"));
                imageMap.put("imgKey",rs.getLong("imgKey"));
                imageMap.put("SubDBID",rs.getInt("SubDBID"));
                imageInfos.add(imageMap);
            }
            //最后一项
            map = new HashMap<>();
            map.put("KMV",lastKMV);
            map.put("POL",lastRoleName);
            map.put("STN",lastSTN);
            map.put("GYKKMV",lastGYKKMV);
            map.put("startId",startId);
            map.put("endId",endId);

            List<HashMap<String,Object>> poleImages = new ArrayList<>();//杆号相机
            List<HashMap<String,Object>> globalImages = new ArrayList<>();//全局相机
            setImages(imageInfos, poleImages, globalImages);
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

    private static void setImages(List<HashMap<String, Object>> imageInfos, List<HashMap<String, Object>> poleImages, List<HashMap<String, Object>> globalImages) {
        for (HashMap img:imageInfos){
            if (((int)img.get("cID") == 3) || (int)img.get("cID") == 4
                    || (int)img.get("cID") == 19 || (int)img.get("cID") == 20){//杆号相机
                poleImages.add(img);
            }else if (((int)img.get("cID") == 11) || (int)img.get("cID") == 12
                    || (int)img.get("cID") == 27 || (int)img.get("cID") == 28){//全局相机
                globalImages.add(img);
            }
        }
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
                for (int i = 0;i < poles.length ; i--){
                    if (poles[i].isEmpty()) continue;
                    if (i == 0) {
                        newStartPole = getNewPoleName(isTargetPoleNull?poles[i]:targetPole);
                        sql = "update indexTB set POL='"+newStartPole+"'  where POL='"+poles[i]+"'";
                    }else sql = "update indexTB set POL='"+poles[i-1]+"'  where POL='"+poles[i]+"'";
                    newEndPole = poles[i-1];
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

        updateJHdata("D:\\天窗数据\\2022-03-05\\2022_03_05_14_04_01_双雷线_双墩集站-雷麻店站_下行","50","50_");
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

}

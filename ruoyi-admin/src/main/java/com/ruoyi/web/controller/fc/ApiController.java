package com.ruoyi.web.controller.fc;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.ruoyi.common.annotation.RepeatSubmit;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.domain.entity.SysDictData;
import com.ruoyi.common.core.domain.entity.SysUser;
import com.ruoyi.common.core.domain.model.LoginUser;
import com.ruoyi.common.utils.LogUtils;
import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.common.utils.file.FileUtils;
import com.ruoyi.framework.web.service.SysLoginService;
import com.ruoyi.system.domain.FcBasetb;
import com.ruoyi.system.domain.FcCamera;
import com.ruoyi.system.domain.FcCameraType;
import com.ruoyi.system.domain.FcRecord;
import com.ruoyi.system.service.*;
import com.ruoyi.web.tools.TaskUtils;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import io.swagger.v3.oas.annotations.headers.Header;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.AuthenticationException;
import org.springframework.web.bind.annotation.*;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.URLDecoder;
import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Api(description = "前端接口")
@RestController
@RequestMapping("/api")
public class ApiController extends BaseController {


    @Autowired
    private SysLoginService loginService;


    @Autowired
    private IFcCameraService iFcCameraService;

    @Autowired
    private IFcCameraTypeService iFcCameraTypeService;

    @Autowired
    private IFcRecordService fcRecordService;


    @Autowired
    private ISysDictDataService dictDataService;

    @Autowired
    private ISysDictTypeService dictTypeService;


    @ApiOperation("登录")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "username", value = "用户名", required = true, dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "password", value = "密码", required = true, dataType = "String",  dataTypeClass = String.class)
    })
    @RepeatSubmit(interval = 2000,message = "禁止重复提交")
    @PostMapping("/user/login")
    @ResponseBody
    public AjaxResult login(String username, String password)
    {
        if (username.isEmpty() || password.isEmpty()){
            return error("用户名或密码不能为空");
        }
        try
        {
            String token = loginService.login(username, password);
            return new AjaxResult(0,"登录成功",token);
        }
        catch (AuthenticationException e)
        {
            String msg = "账号不存在";
            if (StringUtils.isNotEmpty(e.getMessage()))
            {
                msg = e.getMessage();
            }
            return error(msg);
        }
    }






    @ApiOperation("获取用户信息")
    @PostMapping("/user/userinfo")
    @ResponseBody
    public AjaxResult userinfo()
    {
        LoginUser user = getLoginUser();
        HashMap map = new HashMap();
        map.put("token",user.getToken());
        map.put("userId",user.getUser().getUserId());
        map.put("username",user.getUser().getUserName());
        map.put("nickname",user.getUser().getNickName());
        return new AjaxResult(0,"操作成功",JSON.toJSON(map));
    }




//    @ApiOperation("退出登录")
//    @PostMapping("/user/logout")
//    @ResponseBody
//    public AjaxResult logout()
//    {
//        return new AjaxResult(0,"操作成功","");
//    }




    @ApiOperation("获取所有任务统计")
    @ApiImplicitParam(name = "year", value = "年份", required = true, dataType = "String",  dataTypeClass = String.class)
    @GetMapping("/getAllTasks")
    @ResponseBody
    public AjaxResult getAllTasks(String year)
    {
        if (year.isEmpty()){
           return new AjaxResult(-1,"年份不能为空","");
        }
        return new AjaxResult(0,"操作成功",TaskUtils.getAllTasks(year));
    }






    @ApiOperation("根据日期获取任务列表")
    @ApiImplicitParam(name = "date", value = "日期（格式必须为yyyy-MM-dd,比如2022-04-01）", required = true, dataType = "String",  dataTypeClass = String.class)
    @GetMapping("/getTasksByDate")
    @ResponseBody
    public AjaxResult getTasksByDate(String date)
    {
        if(date.isEmpty() || date.length()!=10){
            return new AjaxResult(-1,"日期格式不对","");
        }
        return new AjaxResult(0,"操作成功",TaskUtils.getTasksByDate(date));
    }

    @ApiOperation("根据任务获取站区列表")
    @ApiImplicitParam(name = "taskPath", value = "任务全路径", required = true, dataType = "String",  dataTypeClass = String.class)
    @GetMapping("/getStationsByTask")
    @ResponseBody
    public AjaxResult getStationsByTask(String taskPath)
    {
        if(taskPath.isEmpty()){
            return new AjaxResult(-1,"任务路径不能为空","");
        }
        String decodeTaskName = TaskUtils.decodeBase64String(taskPath.replaceAll(" ","+"));
        return new AjaxResult(0,"操作成功",TaskUtils.getStationsByTask(decodeTaskName));
    }

    @ApiOperation("获取所有分类下的相机")
    @GetMapping("/getCameras")
    @ResponseBody
    public AjaxResult getCameras()
    {
        return new AjaxResult(0,"操作成功",getCameraList());
    }


    /**
     * 获取相机列表
     * @return
     */
    private List<HashMap> getCameraList(){
        List<HashMap> list = new ArrayList<>();
        List<FcCameraType> typeList = iFcCameraTypeService.selectFcCameraTypeList(null);
        for (FcCameraType type:typeList){
            if (type.getIsenable() == 0)continue;
            HashMap map = new HashMap();
            map.put("typeId",type.getId());
            map.put("typeName",type.getTypename());
            List<FcCamera> cameras = iFcCameraService.selectFcCameraByTypeId(type.getId());
            List<HashMap> cameraList = new ArrayList<>();
            for (FcCamera camera:cameras){
                HashMap cameraMap = new HashMap();
                cameraMap.put("id",camera.getId());
                cameraMap.put("name",camera.getName());
                cameraMap.put("direct",camera.getDirect());
                cameraList.add(cameraMap);
            }
            map.put("cameraList",cameraList);
            list.add(map);
        }
        return list;
    }


    @ApiOperation("根据站区获取杆号列表-分页")
    @ApiImplicitParams({
        @ApiImplicitParam(name = "taskPath", value = "任务全路径", required = true, dataType = "String",  dataTypeClass = Integer.class),
        @ApiImplicitParam(name = "startId", value = "站区起始id", required = true, dataType = "Int",  dataTypeClass = Integer.class),
        @ApiImplicitParam(name = "endId", value = "站区结束id", required = true, dataType = "Int",  dataTypeClass = Integer.class),
        @ApiImplicitParam(name = "pageNo", value = "当前页码，默认0",  dataType = "Int",  dataTypeClass = Integer.class),
        @ApiImplicitParam(name = "pageSize", value = "每页数据条数，默认20",  dataType = "Int",  dataTypeClass = Integer.class),
    })
    @ApiResponse
    @GetMapping("/getPolesByStation")
    @ResponseBody
    public AjaxResult getPolesByStation(String taskPath,int startId,int endId,int pageNo,int pageSize)
    {
        if(taskPath.isEmpty()){
            return new AjaxResult(-1,"任务路径不能为空","");
        }
        if(startId == 0 || endId == 0){
            return new AjaxResult(-1,"未传入站区起止id","");
        }
        String decodeTaskName = TaskUtils.decodeBase64String(taskPath.replaceAll(" ","+"));
        return new AjaxResult(0,"操作成功",TaskUtils.getRoleInfoByStation(decodeTaskName, startId, endId, pageNo, pageSize));
    }



    @ApiOperation("根据任务路径、杆号、相机分类获取所有图片信息")
    @ApiImplicitParams({
        @ApiImplicitParam(name = "taskPath", value = "任务全路径", required = true, dataType = "String",  dataTypeClass = String.class),
        @ApiImplicitParam(name = "pole", value = "杆号", required = true, dataType = "String",  dataTypeClass = String.class),
        @ApiImplicitParam(name = "cameraTypeId", value = "相机分类id",  dataType = "Int",  dataTypeClass = Integer.class),
    })
    @ApiResponse
    @PostMapping("/getImages")
    @ResponseBody
    public AjaxResult getImages(String taskPath,String pole, int cameraTypeId)
    {
        if(taskPath.isEmpty()){
            return new AjaxResult(-1,"任务路径不能为空","");
        }
        if(pole.isEmpty()){
            return new AjaxResult(-1,"杆号不能为空","");
        }


        String decodeTaskName = TaskUtils.decodeBase64String(taskPath.replaceAll(" ","+"));

        List<HashMap> allCameraList = getCameraList();
        List<HashMap> cameraList = new ArrayList<>();

        if(cameraTypeId != 0){
            for (HashMap map : allCameraList){
                if (Long.parseLong(map.get("typeId").toString()) == cameraTypeId) cameraList.add(map);
            }
        }else cameraList = allCameraList;




        List<HashMap<String,Object>> list = TaskUtils.getImages(decodeTaskName,pole, cameraList);
        //重组数据，杆号下分相机分类-相机列表-图片列表
        List<HashMap<String,Object>> resultList = new ArrayList<>();
        for (HashMap cameraType:cameraList){
            List<HashMap> cameras = (List<HashMap>) cameraType.get("cameraList");
            for (HashMap camera:cameras){
                long cameraId = (long) camera.get("id");
                List<HashMap> images = new ArrayList<>();
                for (HashMap data:list){
                    int cID = (int) data.get("cID");
                    if (cID == cameraId){
                        long imgKey = (long) data.get("imgKey");
                        List<FcRecord> records = fcRecordService.selectFcRecordList(new FcRecord(imgKey));
                        data.put("records",records);
                        images.add(data);
                    }
                }
                camera.put("images",images);
            }
            resultList.add(cameraType);
        }

        return new AjaxResult(0,"操作成功",resultList);
    }


    @ApiOperation("根据任务路径、相机编号、图片id获取图片byte[]  直接设置在img 的src属性")
    @ApiImplicitParams({
        @ApiImplicitParam(name = "taskPath", value = "任务全路径", required = true, dataType = "String",  dataTypeClass = String.class),
        @ApiImplicitParam(name = "cameraId", value = "相机编号", required = true, dataType = "Int",  dataTypeClass = Integer.class),
        @ApiImplicitParam(name = "subdbId", value = "图片数据库编号", required = true, dataType = "Int",  dataTypeClass = Integer.class),
        @ApiImplicitParam(name = "imageId", value = "图片id",  required = true,dataType = "Long",  dataTypeClass = Long.class),
        @ApiImplicitParam(name = "isThumb", value = "是否为缩略图",  dataType = "Boolean",  dataTypeClass = Boolean.class)
    })
    @ApiResponse
    @PostMapping("/getSingleImage")
    @ResponseBody
    public byte[] getSingleImage(String taskPath,int cameraId, int subdbId,long imageId,boolean isThumb)
    {
        if(taskPath.isEmpty()){
            return null;
        }
        if(cameraId == 0){
            return null;
        }
        if(subdbId == 0){
            return null;
        }
        if(imageId == 0){
            return null;
        }
        String decodeTaskName = TaskUtils.decodeBase64String(taskPath.replaceAll(" ","+"));
        String tablePath = decodeTaskName+"\\DB\\C"+cameraId+"_"+subdbId+".subDb";
        return TaskUtils.selectImage(tablePath,imageId,isThumb);
    }


    @ApiOperation("查询单张图片  (测试地址，必定返回一张图片)")
    @ApiImplicitParam(name = "isThumb", value = "是否为缩略图",  dataType = "Boolean",  dataTypeClass = Boolean.class)
    @GetMapping("/testImage")
    @ResponseBody
    public byte[] testImage(boolean isThumb) {
        byte[] bb= TaskUtils.selectImage("D:\\天窗数据\\2022-04-01\\2022_04_01_14_04_01_双雷线_双墩集站-雷麻店站_下行1\\DB\\C1_1.subDb",22030622351037301L,isThumb);
        return bb;
    }


    @ApiOperation("添加缺陷信息  使用json传参，以下为json内容")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "taskPath", value = "任务全路径",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "pole", value = "杆号",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "cameraId", value = "相机id",  dataType = "Int",  dataTypeClass = Integer.class),
            @ApiImplicitParam(name = "imgKey", value = "图片id",  dataType = "Int",  dataTypeClass = Integer.class),
            @ApiImplicitParam(name = "content", value = "缺陷内容",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "startX", value = "坐标1 x",  dataType = "Int",  dataTypeClass = Integer.class),
            @ApiImplicitParam(name = "startY", value = "坐标1 y",  dataType = "Int",  dataTypeClass = Integer.class),
            @ApiImplicitParam(name = "endX", value = "坐标2 x",  dataType = "Int",  dataTypeClass = Integer.class),
            @ApiImplicitParam(name = "endY", value = "坐标2 y",  dataType = "Int",  dataTypeClass = Integer.class),
            @ApiImplicitParam(name = "componentNameId", value = "部件名称id",  dataType = "Int",  dataTypeClass = Integer.class),
            @ApiImplicitParam(name = "componentDefectId", value = "缺陷部件id",  dataType = "Int",  dataTypeClass = Integer.class),
            @ApiImplicitParam(name = "defectTypeId", value = "缺陷类型id",  dataType = "Int",  dataTypeClass = Integer.class),
            @ApiImplicitParam(name = "defectLevelId", value = "缺陷等级id",  dataType = "Int",  dataTypeClass = Integer.class),
            @ApiImplicitParam(name = "checkDate", value = "检测日期",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "STN", value = "站区名称",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "KMV", value = "公里标",  dataType = "Double",  dataTypeClass = Double.class),
            @ApiImplicitParam(name = "TIM", value = "时间戳（TIM字段）",  dataType = "Long",  dataTypeClass = Long.class),
    })
    @ApiResponse
    @PostMapping("/addDefectInfo")
    @RepeatSubmit(interval = 2000,message = "禁止重复提交")
    @ResponseBody
    public AjaxResult addDefectInfo(@RequestBody JSONObject jsonParam)
    {
        try {
            fcRecordService.insertFcRecord(new FcRecord(
                    jsonParam.getLong("imgKey"),
                    jsonParam.getString("content"),
                    jsonParam.getString("taskPath"),
                    jsonParam.getString("pole"),
                    jsonParam.getIntValue("cameraId"),
                    jsonParam.getIntValue("startX"),
                    jsonParam.getIntValue("startY"),
                    jsonParam.getIntValue("endX"),
                    jsonParam.getIntValue("endY"),
                    jsonParam.getIntValue("componentNameId"),
                    jsonParam.getIntValue("componentDefectId"),
                    jsonParam.getIntValue("defectTypeId"),
                    jsonParam.getIntValue("defectLevelId"),
                    jsonParam.getString("checkDate"),
                    jsonParam.getString("STN"),
                    jsonParam.getDoubleValue("KMV"),
                    jsonParam.getLong("TIM")
            ));
            return new AjaxResult(0,"提交成功","");
        }catch (Exception e){
        }
        return new AjaxResult(-1,"提交失败","");
    }



    @ApiOperation("获取单张图片的缺陷信息")
    @ApiImplicitParam(name = "imgKey", value = "图片id", required = true, dataType = "Long",  dataTypeClass = Long.class)
    @GetMapping("/getSingleDefectInfo")
    @ResponseBody
    public AjaxResult getSingleDefectInfo(long imgKey) {
        try{
            return new AjaxResult(0,"操作成功",JSONObject.toJSON(fcRecordService.selectFcRecordList(new FcRecord(imgKey))));
        }catch (Exception e){
        }
        return new AjaxResult(-1,"操作失败","");
    }

    @ApiOperation("修改缺陷信息  使用json传参，以下为json内容")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "id", value = "缺陷记录id",  dataType = "Int",  dataTypeClass = Integer.class),
            @ApiImplicitParam(name = "taskPath", value = "任务全路径",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "pole", value = "杆号",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "cameraId", value = "相机id",  dataType = "Int",  dataTypeClass = Integer.class),
            @ApiImplicitParam(name = "imgKey", value = "图片id",  dataType = "Int",  dataTypeClass = Integer.class),
            @ApiImplicitParam(name = "content", value = "缺陷内容",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "startX", value = "坐标1 x",  dataType = "Int",  dataTypeClass = Integer.class),
            @ApiImplicitParam(name = "startY", value = "坐标1 y",  dataType = "Int",  dataTypeClass = Integer.class),
            @ApiImplicitParam(name = "endX", value = "坐标2 x",  dataType = "Int",  dataTypeClass = Integer.class),
            @ApiImplicitParam(name = "endY", value = "坐标2 y",  dataType = "Int",  dataTypeClass = Integer.class),
            @ApiImplicitParam(name = "componentNameId", value = "部件名称id",  dataType = "Int",  dataTypeClass = Integer.class),
            @ApiImplicitParam(name = "componentDefectId", value = "缺陷部件id",  dataType = "Int",  dataTypeClass = Integer.class),
            @ApiImplicitParam(name = "defectTypeId", value = "缺陷类型id",  dataType = "Int",  dataTypeClass = Integer.class),
            @ApiImplicitParam(name = "defectLevelId", value = "缺陷等级id",  dataType = "Int",  dataTypeClass = Integer.class),
            @ApiImplicitParam(name = "checkDate", value = "检测日期",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "STN", value = "站区名称",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "KMV", value = "公里标",  dataType = "Double",  dataTypeClass = Double.class),
            @ApiImplicitParam(name = "TIM", value = "时间戳（TIM字段）",  dataType = "Long",  dataTypeClass = Long.class),
    })
    @ApiResponse
    @PostMapping("/updateDefectInfo")
    @RepeatSubmit(interval = 2000,message = "禁止重复提交")
    @ResponseBody
    public AjaxResult updateDefectInfo(@RequestBody JSONObject jsonParam) {
        try{

            FcRecord record = new FcRecord(
                    jsonParam.getLong("imgKey"),
                    jsonParam.getString("content"),
                    jsonParam.getString("taskPath"),
                    jsonParam.getString("pole"),
                    jsonParam.getIntValue("cameraId"),
                    jsonParam.getIntValue("startX"),
                    jsonParam.getIntValue("startY"),
                    jsonParam.getIntValue("endX"),
                    jsonParam.getIntValue("endY"),
                    jsonParam.getIntValue("componentNameId"),
                    jsonParam.getIntValue("componentDefectId"),
                    jsonParam.getIntValue("defectTypeId"),
                    jsonParam.getIntValue("defectLevelId"),
                    jsonParam.getString("checkDate"),
                    jsonParam.getString("STN"),
                    jsonParam.getDoubleValue("KMV"),
                    jsonParam.getLong("TIM")

            );

            record.setId(jsonParam.getIntValue("id"));
            int result = fcRecordService.updateFcRecord(record);
            if (result == 1)return new AjaxResult(0,"修改成功","");
            return new AjaxResult(-1,"修改失败","");
        }catch (Exception e){
            e.printStackTrace();
        }
        return new AjaxResult(-1,"修改失败","");
    }



    @ApiOperation("删除某条缺陷信息")
    @ApiImplicitParam(name = "id", value = "缺陷记录id", required = true, dataType = "Long",  dataTypeClass = Long.class)
    @PostMapping("/deleteDefectInfo")
    @ResponseBody
    public AjaxResult deleteDefectInfo(int  id) {
        try{
            int result = fcRecordService.deleteFcRecordById(id);
            if (result == 1)return new AjaxResult(0,"删除成功","");
        }catch (Exception e){
        }
        return new AjaxResult(-1,"删除失败","");
    }


    @ApiOperation("获取缺陷标注字典信息")
    @GetMapping("/getDefectDicInfo")
    @ResponseBody
    public AjaxResult getDefectDicInfo() {
        try{
            List<SysDictData> component_names = dictTypeService.selectDictDataByType("component_name");
            List<SysDictData> component_defects = dictTypeService.selectDictDataByType("component_defect");
            List<SysDictData> defect_types = dictTypeService.selectDictDataByType("defect_type");
            List<SysDictData> defect_level = dictTypeService.selectDictDataByType("defect_level");

            HashMap map = new HashMap();
            map.put("component_name",getResultList(component_names));
            map.put("component_defect",getResultList(component_defects));
            map.put("defect_type",getResultList(defect_types));
            map.put("defect_level",getResultList(defect_level));
            return new AjaxResult(0,"操作成功",JSONObject.toJSON(map));
        }catch (Exception e){
            e.printStackTrace();
        }
        return new AjaxResult(-1,"操作失败","");
    }


    private List<HashMap> getResultList(List<SysDictData> dictDatas ){
        List<HashMap> resultList = new ArrayList<>();
        for (SysDictData dictData:dictDatas){
            HashMap resultMap = new HashMap();
            resultMap.put("id",dictData.getDictValue());
            resultMap.put("name",dictData.getDictLabel());
            resultList.add(resultMap);
        }
        return resultList;
    }




    @ApiOperation("根据任务路径获取分布图数据")
    @ApiImplicitParam(name = "taskPath", value = "任务全路径", required = true, dataType = "String",  dataTypeClass = String.class)
    @GetMapping("/getChartData")
    @ResponseBody
    public AjaxResult getChartData(String taskPath) {
        if (taskPath.isEmpty()) return new AjaxResult(-1,"任务路径不能为空","");
        FcRecord record = new FcRecord();
        record.setTaskpath(taskPath.replaceAll(" ","+"));
        try {
            List<FcRecord> records = fcRecordService.selectFcRecordList(record);
            List<SysDictData> component_defects = dictTypeService.selectDictDataByType("component_defect");
            List<SysDictData> defect_types = dictTypeService.selectDictDataByType("defect_type");
            List<SysDictData> defect_level = dictTypeService.selectDictDataByType("defect_level");
            HashMap map = new HashMap();
            //缺陷部件
            map.put("data_component", getChartData(records,component_defects,1));
            //缺陷类型
            map.put("data_type",getChartData(records,defect_types,2));
            //缺陷等级
            map.put("data_level",getChartData(records,defect_level,3));
            map.put("total_count", records.size());
            return new AjaxResult(0,"操作成功",map);
        }catch (Exception e){
        }
        return new AjaxResult(-1,"操作失败","");
    }

    /**
     * 获取图表数据
     */
    private List<HashMap> getChartData(List<FcRecord> records, List<SysDictData> dictDatas,int tag){
        List<HashMap> datas = new ArrayList<>();
        if (records == null || records.size()  == 0) return datas;
        int totalCount = records.size();

        for (SysDictData dictData:dictDatas){
            HashMap map = new HashMap();
            map.put("name",dictData.getDictLabel());
            int count = 0;
            for (FcRecord record_:records){
                if ((tag == 1 && dictData.getDictValue().equals(record_.getComponentDefectId().toString())) ||
                        (tag == 2 && dictData.getDictValue().equals(record_.getDefectTypeId().toString())) ||
                        (tag == 3 && dictData.getDictValue().equals(record_.getDefectLevelId().toString()))){
                    count ++;
                }
            }
            map.put("value",count);
            map.put("percent",count * 100.0 / totalCount);
            if (count == 0) continue;
            datas.add(map);
        }
        return datas;
    }





    @ApiOperation("获取缺陷信息列表")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "taskPath", value = "任务全路径",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "pole", value = "杆号",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "content", value = "缺陷内容",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "componentDefectId", value = "缺陷部件id",  dataType = "Int",  dataTypeClass = Integer.class),
            @ApiImplicitParam(name = "defectTypeId", value = "缺陷类型id",  dataType = "Int",  dataTypeClass = Integer.class),
            @ApiImplicitParam(name = "defectLevelId", value = "缺陷等级id",  dataType = "Int",  dataTypeClass = Integer.class),
            @ApiImplicitParam(name = "STN", value = "站区名称",  dataType = "String",  dataTypeClass = String.class),
//            @ApiImplicitParam(name = "pageNo", value = "当前页码，默认0",  dataType = "Int",  dataTypeClass = Integer.class),
//            @ApiImplicitParam(name = "pageSize", value = "每页数据条数，默认20",  dataType = "Int",  dataTypeClass = Integer.class),
    })
    @ApiResponse
    @GetMapping("/getDefectInfo")
    @ResponseBody
    public AjaxResult getDefectInfo(String taskPath,String STN,String pole, Integer componentDefectId,
                                    Integer defectTypeId, Integer defectLevelId,String content,int pageNo,int pageSize) {
        if (taskPath.isEmpty()) return new AjaxResult(-1,"任务路径不能为空","");
        try{
            FcRecord record = new FcRecord();
            record.setTaskpath(taskPath.replaceAll(" ","+"));
            record.setSTN(STN);
            record.setPole(pole);
            record.setComponentDefectId(componentDefectId);
            record.setDefectTypeId(defectTypeId);
            record.setDefectLevelId(defectLevelId);
            record.setContent(content);

            return new AjaxResult(0,"操作成功",fcRecordService.selectFcRecordList(record));
        }catch (Exception e){
        }
        return new AjaxResult(-1,"操作失败","");
    }





    @ApiOperation("分页查询(历史)几何数据")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "taskPath", value = "任务全路径", required = true, dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "currPole", value = "当前数据最后一个杆号,第一条传空",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "pageNo", value = "页码,从0开始",   dataType = "Int",  dataTypeClass = Integer.class),
            @ApiImplicitParam(name = "pageSize", value = "每页数据量，建议1000起",  dataType = "Int",  dataTypeClass = Integer.class),
    })
    @GetMapping("/getJHData")
    @ResponseBody
    public AjaxResult getJHData(String taskPath,String currPole,int pageNo,int pageSize) {
        if (taskPath.isEmpty()) return new AjaxResult(-1,"任务路径不能为空","");
        String decodeTaskName = TaskUtils.decodeBase64String(taskPath.replaceAll(" ","+"));
        if (pageSize == 0) pageSize = 1000;
        try {
            List<HashMap> list = TaskUtils.getJHdata(decodeTaskName,currPole,pageSize,pageNo);
            return new AjaxResult(0,"操作成功",list);
        }catch (Exception e){
        }
        return new AjaxResult(-1,"操作失败","");
    }




    @ApiOperation("历史对比弹窗-获取历史任务列表")
    @ApiImplicitParam(name = "currTaskPath", value = "当前任务全路径", required = true, dataType = "String",  dataTypeClass = String.class)
    @GetMapping("/getHistoryTasks")
    @ResponseBody
    public AjaxResult getHistoryTasks(String currTaskPath)
    {
        String decodeTaskName = TaskUtils.decodeBase64String(currTaskPath.replaceAll(" ","+"));
        return new AjaxResult(0,"操作成果",TaskUtils.getHistoryTasks(decodeTaskName));
    }


    @ApiOperation("历史对比弹窗-获取所有相机")
    @GetMapping("/getAllCameras")
    @ResponseBody
    public AjaxResult getAllCameras()
    {
        try {
            List<FcCamera> cameras = iFcCameraService.selectFcCameraList(new FcCamera());
            List<HashMap> results = new ArrayList<>();
            for (FcCamera camera:cameras){
                HashMap map = new HashMap();
                map.put("id",camera.getId());
                map.put("name",camera.getName());
                map.put("typeId",camera.getTypeid());
                map.put("direct",camera.getDirect());
                results.add(map);
            }
            return  new AjaxResult(0,"操作成功",results);
        }catch (Exception e){

        }
        return new AjaxResult(-1,"操作失败",null);
    }



    @ApiOperation("历史对比弹窗-获取照片")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "taskPath", value = "任务全路径", required = true, dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "pole", value = "杆号",   dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "cameraId", value = "相机编号",  dataType = "Int",  dataTypeClass = Integer.class),
    })
    @GetMapping("/getImagesByCamera")
    @ResponseBody
    public AjaxResult getImagesByCamera(String taskPath,String pole,int cameraId) {
        if (taskPath.isEmpty()) return new AjaxResult(-1,"任务路径不能为空","");
        String decodeTaskName = TaskUtils.decodeBase64String(taskPath.replaceAll(" ","+"));
        try {
            String dbFilePath = TaskUtils.getDbPath(decodeTaskName);
            Connection conn = null;
            PreparedStatement ps = null;
            Class.forName("org.sqlite.JDBC");
            conn = DriverManager.getConnection("jdbc:sqlite:"+dbFilePath);
            conn.setAutoCommit(false);

            //查询某一杆号下的所有信息
            String sql = "SELECT Id,cID,imgKey,SubDBID from indexTB where POL='"+pole+"' and cID="+cameraId+";";
            ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            List<HashMap> imgs = new ArrayList<>();

            while ( rs.next() ) {
                HashMap map = new HashMap();
                map.put("cID",rs.getInt("cID") );
                map.put("imgKey",rs.getLong("imgKey") );
                map.put("SubDBID",rs.getInt("SubDBID") );
                imgs.add(map);
            }
            ps.close();
            conn.commit();
            conn.close();

            for (HashMap map :imgs ){
                List<FcRecord> records  = fcRecordService.selectFcRecordList(new FcRecord((Long) map.get("imgKey")));
                if (records!=null && records.size()>0) map.put("records",records);
            }

            return new AjaxResult(0,"操作成功",imgs);
        }catch (Exception e){
            e.printStackTrace();
        }
        return new AjaxResult(-1,"操作失败","");
    }

    @ApiOperation("杆号校准-获取所有杆号、公里标信息")
    @ApiImplicitParam(name = "taskPath", value = "任务全路径", required = true, dataType = "String",  dataTypeClass = String.class)
    @GetMapping("/revise/getPolAndKMVInfo")
    @ResponseBody
    public AjaxResult getData(String taskPath) {
        if (taskPath.isEmpty()) return new AjaxResult(-1,"任务路径不能为空","");
        String decodeTaskName = TaskUtils.decodeBase64String(taskPath.replaceAll(" ","+"));
        try {
            return new AjaxResult(0,"操作成功",TaskUtils.getPolAndKMVInfo(decodeTaskName));
        }catch (Exception e){
            e.printStackTrace();
        }
        return new AjaxResult(-1,"操作失败","");
    }

    @ApiOperation("杆号校准-根据杆号删除信息")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "taskPath", value = "任务全路径", required = true, dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "poles", value = "杆号（用,拼接）",required = true,   dataType = "String",  dataTypeClass = String.class),
    })
    @PostMapping("/revise/delData")
    @ResponseBody
    public AjaxResult delData(String taskPath,String poles) {
        if (taskPath.isEmpty()) return new AjaxResult(-1,"任务路径不能为空","");
        if (poles.isEmpty()) return new AjaxResult(-1,"杆号不能为空","");

        String decodeTaskName = TaskUtils.decodeBase64String(taskPath.replaceAll(" ","+"));


        boolean result = TaskUtils.delPolAndKMVInfo(decodeTaskName,poles);
        if (result ) return new AjaxResult(0,"操作成功","");
        return new AjaxResult(-1,"操作失败","");
    }

    @ApiOperation("杆号校准-精准校正")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "taskPath", value = "任务全路径", required = true, dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "oldPole", value = "原始杆号",required = true,   dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "newPole", value = "修改后的杆号", dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "newKmv", value = "修改后的公里标", dataType = "Double",  dataTypeClass = Double.class),
            @ApiImplicitParam(name = "newStation", value = "修改后的的站区", dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "isPoleExist", value = "修改后的的杆号是否已存在", dataType = "Boolean",  dataTypeClass = Boolean.class),
    })
    @PostMapping("/revise/updateData")
    @ResponseBody
    public AjaxResult updateData(String taskPath,String oldPole,String newPole,double newKmv,String newStation,boolean isPoleExist) {
        if (taskPath.isEmpty()) return new AjaxResult(-1,"任务路径不能为空","");
        if (oldPole.isEmpty()) return new AjaxResult(-1,"杆号不能为空","");
        String decodeTaskName = TaskUtils.decodeBase64String(taskPath.replaceAll(" ","+"));

        String existPoleNewName = "";//已存在杆号的新name
        if (isPoleExist){
            int suffixNum = 1;
            try {
                String[] poleName = newPole.split("_");
                if (poleName!=null && poleName.length==2) suffixNum = Integer.parseInt(poleName[1])+1;
                existPoleNewName = poleName[0]+"_"+suffixNum;
            }catch (Exception e){
            }
        }
        boolean success = TaskUtils.updatePolAndKMVInfo(decodeTaskName,oldPole,newPole,newKmv,newStation,existPoleNewName);
        if (!success)return new AjaxResult(-1,"操作失败","");
        try {
            //修改缺陷记录  主要修改STN、KMV、pole
            FcRecord record = new FcRecord();
            record.setPole(oldPole);
            List<FcRecord> recordList = fcRecordService.selectFcRecordList(record);
            for (FcRecord fcRecord:recordList){
                if (fcRecord.getPole().equals(record.getPole())){
                    fcRecord.setPole(!existPoleNewName.isEmpty()?existPoleNewName:newPole);
                    fcRecord.setKMV(newKmv);
                    fcRecord.setSTN(newStation);
                    fcRecordService.updateFcRecord(fcRecord);
                    //修改几何数据里的杆号
                    new Thread(()-> TaskUtils.updateJHdata(decodeTaskName,oldPole,fcRecord.getPole())).start();
                }
            }


            HashMap map = new HashMap();
            map.put("newPole",existPoleNewName.isEmpty()?newPole:existPoleNewName);

            return new AjaxResult(0,"操作成功",map);
        }catch (Exception e){
            e.printStackTrace();
        }
        return new AjaxResult(-1,"操作失败","");
    }


    @ApiOperation("批量移动杆号")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "taskPath", value = "任务全路径",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "movePoles", value = "选中的杆号集合,用逗号拼接",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "asc", value = "右移为true，左移为false",  dataType = "Boolean",  dataTypeClass = Boolean.class),
            @ApiImplicitParam(name = "moveCount", value = "移动的格数，默认1",  dataType = "Integer",  dataTypeClass = Integer.class),
            @ApiImplicitParam(name = "targetPole", value = "目标位置的杆号，如果是首尾，则传null或者''",  dataType = "String",  dataTypeClass = String.class),
    })
    @ApiResponse
    @PostMapping("/revise/updateMultiData")
    @RepeatSubmit(interval = 2000,message = "禁止重复提交")
    @ResponseBody
    public AjaxResult updateMultiData(String taskPath,String movePoles,boolean asc,int moveCount,String targetPole) {


        try{
            if (taskPath.isEmpty()) return new AjaxResult(-1,"任务路径不能为空","");
            String decodeTaskName = TaskUtils.decodeBase64String(taskPath.replaceAll(" ","+"));


            String[] poles = movePoles.split(",");
            if (poles == null || poles.length == 0)return new AjaxResult(-1,"操作失败","");

            HashMap map = TaskUtils.updateMulti(decodeTaskName, poles,asc,moveCount,targetPole);
            if (map == null)return new AjaxResult(-1,"操作失败","");

            try{
                boolean isTargetPoleNull = targetPole == null || targetPole.isEmpty() || targetPole.equals("null") || targetPole.equals("NULL");
                if (asc){ //正序
                    for (int i = poles.length-1;i >= 0 ; i--){
                        if (poles[i].isEmpty()) continue;
                        final int index = i;
                        if (i == poles.length - 1) new Thread(()-> TaskUtils.updateJHdata(taskPath,poles[index],TaskUtils.getNewPoleName(isTargetPoleNull?poles[index]:targetPole))).start();
                        else  new Thread(()-> TaskUtils.updateJHdata(taskPath,poles[index],poles[index+1])).start();
                    }
                }else { //逆序
                    for (int i = 0;i < poles.length ; i--){
                        if (poles[i].isEmpty()) continue;
                        final int index = i;
                        if (i == poles.length - 1) new Thread(()-> TaskUtils.updateJHdata(taskPath,poles[index],TaskUtils.getNewPoleName(isTargetPoleNull?poles[index]:targetPole))).start();
                        else  new Thread(()-> TaskUtils.updateJHdata(taskPath,poles[index],poles[index-1])).start();
                    }
                }

            }catch (Exception e){
                e.printStackTrace();
            }


            return new AjaxResult(0,"修改成功",map);
        }catch (Exception e){
            e.printStackTrace();
        }
        return new AjaxResult(-1,"修改失败","");
    }
}

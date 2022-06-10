package com.ruoyi.web.controller.fc;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.ruoyi.common.annotation.RepeatSubmit;
import com.ruoyi.common.config.RuoYiConfig;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.domain.entity.SysDictData;
import com.ruoyi.common.core.domain.model.LoginUser;
import com.ruoyi.common.core.redis.RedisCache;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.common.utils.file.FileUploadUtils;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.utils.spring.SpringUtils;
import com.ruoyi.framework.web.service.SysLoginService;
import com.ruoyi.framework.web.service.TokenService;
import com.ruoyi.system.domain.FcCamera;
import com.ruoyi.system.domain.FcCameraType;
import com.ruoyi.system.domain.FcRecord;
import com.ruoyi.system.domain.FcScanStatus;
import com.ruoyi.system.service.*;
import com.ruoyi.web.controller.tool.ExportRecord;
import com.ruoyi.web.controller.tool.ExportRecordImage;
import com.ruoyi.web.tools.TaskUtils;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.AuthenticationException;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;


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

    @Autowired
    private IFcScanStatusService scanStatusService;

    @Autowired
    private TokenService tokenService;

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
        try {
            scanStatusService.insertFcScanStatus(new FcScanStatus(getUserId()));
        }catch (Exception e){}

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
        @ApiImplicitParam(name = "stationNames", value = "站区名称，如果多个站区用逗号拼接", required = true, dataType = "String",  dataTypeClass = String.class),
    })
    @ApiResponse
    @GetMapping("/getPolesByStation")
    @ResponseBody
    public AjaxResult getPolesByStation(String taskPath,String stationNames)
    {
        if(taskPath.isEmpty()){
            return new AjaxResult(-1,"任务路径不能为空","");
        }
        if(stationNames.isEmpty()){
            return new AjaxResult(-1,"站区名字不能为空","");
        }
        String decodeTaskName = TaskUtils.decodeBase64String(taskPath.replaceAll(" ","+"));
        return new AjaxResult(0,"操作成功",TaskUtils.getRoleInfoByStation(decodeTaskName, stationNames));
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
    public AjaxResult getImages(String taskPath,String pole, @RequestParam(value = "cameraTypeId",required = false,defaultValue = "0")int cameraTypeId)
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

        List<HashMap<String,Object>> list = TaskUtils.getImages(decodeTaskName,pole);
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
                        List<FcRecord> records = fcRecordService.selectFcRecordList(new FcRecord(data.get("imgKey").toString()));
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
    @GetMapping("/getSingleImage")
    @ResponseBody
    public byte[] getSingleImage(String taskPath,int cameraId, int subdbId,long imageId,@RequestParam(value = "isThumb",required = false,defaultValue = "false")boolean isThumb)
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

        byte[] bb = SpringUtils.getBean(RedisCache.class).getCacheObject("imgKey"+imageId+(isThumb?"_thumb":""));
        if (bb == null) {
            bb = TaskUtils.selectImage(tablePath,imageId,isThumb);
        }
        return bb;
    }


    @ApiOperation("查询单张图片  (测试地址，必定返回一张图片)")
    @ApiImplicitParam(name = "isThumb", value = "是否为缩略图",  dataType = "Boolean",  dataTypeClass = Boolean.class)
    @GetMapping("/testImage")
    @ResponseBody
    public byte[] testImage(boolean isThumb) {
        byte[] bb = SpringUtils.getBean(RedisCache.class).getCacheObject("imgKey"+22030622351037301L+(isThumb?"_thumb":""));
        if (bb!=null)System.out.println("缓存中的图片："+bb.length/(1024 * 1024)+"kb");
        if (bb == null){
            bb= TaskUtils.selectImage("D:\\天窗数据\\2022-04-01\\2022_04_01_14_04_01_双雷线_双墩集站-雷麻店站_下行1\\DB\\C1_1.subDb",22030622351037301L,isThumb);
        }
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
            @ApiImplicitParam(name = "componentName", value = "部件名称",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "componentDefect", value = "缺陷部件",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "defectType", value = "缺陷类型",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "defectLevel", value = "缺陷等级",  dataType = "String",  dataTypeClass = String.class),
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
                    jsonParam.getString("imgKey"),
                    jsonParam.getString("content"),
                    jsonParam.getString("taskPath"),
                    jsonParam.getString("pole"),
                    jsonParam.getIntValue("cameraId"),
                    jsonParam.getIntValue("startX"),
                    jsonParam.getIntValue("startY"),
                    jsonParam.getIntValue("endX"),
                    jsonParam.getIntValue("endY"),
                    jsonParam.getString("componentName"),
                    jsonParam.getString("componentDefect"),
                    jsonParam.getString("defectType"),
                    jsonParam.getString("defectLevel"),
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
    @ApiImplicitParam(name = "imgKey", value = "图片id", required = true, dataType = "String",  dataTypeClass = String.class)
    @GetMapping("/getSingleDefectInfo")
    @ResponseBody
    public AjaxResult getSingleDefectInfo(String imgKey) {
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
            @ApiImplicitParam(name = "imgKey", value = "图片id",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "content", value = "缺陷内容",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "startX", value = "坐标1 x",  dataType = "Int",  dataTypeClass = Integer.class),
            @ApiImplicitParam(name = "startY", value = "坐标1 y",  dataType = "Int",  dataTypeClass = Integer.class),
            @ApiImplicitParam(name = "endX", value = "坐标2 x",  dataType = "Int",  dataTypeClass = Integer.class),
            @ApiImplicitParam(name = "endY", value = "坐标2 y",  dataType = "Int",  dataTypeClass = Integer.class),
            @ApiImplicitParam(name = "componentName", value = "部件名称",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "componentDefect", value = "缺陷部件",  dataType = "String",  dataTypeClass = Integer.class),
            @ApiImplicitParam(name = "defectType", value = "缺陷类型",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "defectLevel", value = "缺陷等级",  dataType = "String",  dataTypeClass = String.class),
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
                    jsonParam.getString("imgKey"),
                    jsonParam.getString("content"),
                    jsonParam.getString("taskPath"),
                    jsonParam.getString("pole"),
                    jsonParam.getIntValue("cameraId"),
                    jsonParam.getIntValue("startX"),
                    jsonParam.getIntValue("startY"),
                    jsonParam.getIntValue("endX"),
                    jsonParam.getIntValue("endY"),
                    jsonParam.getString("componentName"),
                    jsonParam.getString("componentDefect"),
                    jsonParam.getString("defectType"),
                    jsonParam.getString("defectLevel"),
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

            //按照名称分类
            List<String> componentDefects = new ArrayList();
            List<String> typeDefects = new ArrayList();
            List<String> levelDefects = new ArrayList();
            for (FcRecord record1:records){
                componentDefects.add(record1.getComponentDefect());
                typeDefects.add(record1.getDefectType());
                levelDefects.add(record1.getDefectLevel());
            }

            HashMap map = new HashMap();
            //缺陷部件
            map.put("data_component", getChartData(records,componentDefects,records.size()));
            //缺陷类型
            map.put("data_type",getChartData(records,typeDefects,records.size()));
            //缺陷等级
            map.put("data_level",getChartData(records,levelDefects,records.size()));
            map.put("total_count", records.size());
            return new AjaxResult(0,"操作成功",map);
        }catch (Exception e){
        }
        return new AjaxResult(-1,"操作失败","");
    }

    /**
     * 获取图表数据
     */
    private List<HashMap> getChartData(List<FcRecord> records, List<String> dictDatas,int totalCount){
        List<HashMap> datas = new ArrayList<>();
        if (records == null || records.size()  == 0) return datas;

        HashMap countMap = new HashMap();
        for (String dictData:dictDatas){
            countMap.merge(dictData, 1, (oldValue, newValue) -> (int) oldValue + (int)newValue);
        }
        countMap.forEach((key,value)->{
            HashMap data = new HashMap();
            data.put("name",key);
            data.put("value",value);
            data.put("percent",((int)value) * 100.0 / totalCount);
            datas.add(data);
        });
        return datas;
    }





    @ApiOperation("获取缺陷信息列表")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "taskPath", value = "任务全路径",required = true, dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "pole", value = "杆号",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "content", value = "缺陷内容",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "componentDefect", value = "缺陷部件",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "defectType", value = "缺陷类型",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "defectLevel", value = "缺陷等级",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "STN", value = "站区名称",  dataType = "String",  dataTypeClass = String.class),
    })
    @ApiResponse
    @GetMapping("/getDefectInfo")
    @ResponseBody
    public AjaxResult getDefectInfo(String taskPath,@RequestParam(value = "STN",required = false)String STN,
                                    @RequestParam(value = "pole",required = false)String pole,
                                    @RequestParam(value = "componentDefect",required = false)String componentDefect,
                                    @RequestParam(value = "defectType",required = false)String defectType,
                                    @RequestParam(value = "defectLevel",required = false)String defectLevel,
                                    @RequestParam(value = "content",required = false)String content) {
        if (taskPath.isEmpty()) return new AjaxResult(-1,"任务路径不能为空","");
        try{
            FcRecord record = new FcRecord();
            record.setTaskpath(taskPath.replaceAll(" ","+"));
            record.setSTN(STN);
            record.setPole(pole);
            record.setComponentDefect(componentDefect);
            record.setDefectType(defectType);
            record.setDefectLevel(defectLevel);
            record.setContent(content);

            return new AjaxResult(0,"操作成功",fcRecordService.selectFcRecordList(record));
        }catch (Exception e){
        }
        return new AjaxResult(-1,"操作失败","");
    }

    @ApiOperation("获取有缺陷的站区和杆号-下拉选择")
    @ApiImplicitParam(name = "taskPath", value = "任务全路径", required = true, dataType = "String",  dataTypeClass = String.class)
    @ApiResponse
    @GetMapping("/getDefectSTNAndPoles")
    @ResponseBody
    public AjaxResult getDefectSTNAndPoles(String taskPath) {
        if (taskPath.isEmpty()) return new AjaxResult(-1,"任务路径不能为空","");
        try{
            List<FcRecord> list = fcRecordService.selectFcRecordList(null);
            List<HashMap> result = new ArrayList<>();
            for (FcRecord record:list) {
                HashMap map = new HashMap();
                map.put("STN",record.getSTN());
                map.put("Pole",record.getPole());
                result.add(map);
            }
            return new AjaxResult(0,"操作成功",result);
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
    public AjaxResult getJHData(String taskPath,
                                @RequestParam(value = "currPole",required = false)String currPole,
                                @RequestParam(value = "pageNo",required = false,defaultValue = "0")int pageNo,
                                @RequestParam(value = "pageSize",required = false,defaultValue = "1000")int pageSize) {
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
            @ApiImplicitParam(name = "pole", value = "杆号",  required = true,dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "cameraId", value = "相机编号", required = true,dataType = "Int",  dataTypeClass = Integer.class),
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
                List<FcRecord> records  = fcRecordService.selectFcRecordList(new FcRecord(map.get("imgKey").toString()));
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


    @ApiOperation("杆号校准-获取指定杆号下的杆号相机/全局相机的图")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "taskPath", value = "任务全路径", required = true, dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "pole", value = "杆号",  required = true,dataType = "String",  dataTypeClass = String.class),
    })
    @GetMapping("/revise/getImagesByPole")
    @ResponseBody
    public AjaxResult getImagesByPole(String taskPath,String pole) {
        if (taskPath.isEmpty()) return new AjaxResult(-1,"任务路径不能为空","");
        if (pole.isEmpty()) return new AjaxResult(-1,"杆号不能为空","");
        String decodeTaskName = TaskUtils.decodeBase64String(taskPath.replaceAll(" ","+"));
        try {
            return new AjaxResult(0,"操作成功",TaskUtils.getImagesByPole(decodeTaskName,pole));
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
            @ApiImplicitParam(name = "newPole", value = "修改后的杆号",required = true, dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "newKmv", value = "修改后的公里标", required = true,dataType = "Double",  dataTypeClass = Double.class),
            @ApiImplicitParam(name = "newStation", value = "修改后的的站区",required = true, dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "isPoleExist", value = "修改后的的杆号是否已存在",required = true,dataType = "Boolean",  dataTypeClass = Boolean.class),
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
            @ApiImplicitParam(name = "taskPath", value = "任务全路径",required = true,  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "movePoles", value = "选中的杆号集合,用逗号拼接",required = true,  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "asc", value = "右移为true，左移为false",required = true,  dataType = "Boolean",  dataTypeClass = Boolean.class),
            @ApiImplicitParam(name = "moveCount", value = "移动的格数，默认1", required = true, dataType = "Integer",  dataTypeClass = Integer.class),
            @ApiImplicitParam(name = "targetPole", value = "目标位置的杆号，如果是首尾，则传null或者''", required = true, dataType = "String",  dataTypeClass = String.class),
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


    @ApiOperation("导出报表-缺陷信息数据")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "taskPath", value = "任务全路径", required = true, dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "tableName", value = "表格名称",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "paraName", value = "段别", required = true, dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "workShop", value = "车间",required = true,  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "workArea", value = "工区",required = true,  dataType = "String",  dataTypeClass = String.class),
    })
    @GetMapping("/export/Defect")
    @RepeatSubmit(interval = 2000,message = "禁止重复请求")
    public void exportDefect(HttpServletResponse response, String taskPath, String tableName, String paraName, String workShop, String workArea) {
        if (taskPath.isEmpty()) return;
        String decodeTaskName = TaskUtils.decodeBase64String(taskPath.replaceAll(" ","+"));

        try{



            FcRecord fcRecord = new FcRecord();
            fcRecord.setTaskpath(taskPath.replaceAll(" ","+"));
            List<FcRecord> list = fcRecordService.selectFcRecordList(fcRecord);


            String[] taskInfos = decodeTaskName.split("\\\\");
            String[] lines = taskInfos[3].split("_");

            if (list == null || list.size() == 0)return;
            List<ExportRecord> exportRecords = new ArrayList<>();

            for (FcRecord fcRecord1:list){
                exportRecords.add(new ExportRecord(
                        taskInfos[2],
                        lines[6],
                        lines[lines.length-1],
                        paraName,
                        workShop,
                        workArea,
                        fcRecord1.getKMV().toString(),
                        fcRecord1.getPole(),
                        fcRecord1.getDefectType(),
                        fcRecord1.getDefectLevel(),
                        fcRecord1.getContent(),
                        fcRecord1.getCheckDate()
                ));
            }
            ExcelUtil<ExportRecord> util = new ExcelUtil(ExportRecord.class);
            util.exportExcel(response, exportRecords, tableName.isEmpty()?("4C缺陷汇总表"):tableName);
        }catch (Exception e){
            e.printStackTrace();
        }
    }



    @ApiOperation("导出报表-4C图像缺陷")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "taskPath", value = "任务全路径",required = true,  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "tableName", value = "表格名称", required = true, dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "railwayAdmin", value = "铁路局",required = true,  dataType = "String",  dataTypeClass = String.class),
    })
    @GetMapping("/export/DefectImage")
    @RepeatSubmit(interval = 2000,message = "禁止重复请求")
    public void exportDefectImage(HttpServletResponse response, String taskPath, String tableName, String railwayAdmin) {
        if (taskPath.isEmpty()) return;
        String decodeTaskName = TaskUtils.decodeBase64String(taskPath.replaceAll(" ","+"));

        try{

            FcRecord fcRecord = new FcRecord();
            fcRecord.setTaskpath(taskPath.replaceAll(" ","+"));
            List<FcRecord> list = fcRecordService.selectFcRecordList(fcRecord);

            String[] taskInfos = decodeTaskName.split("\\\\");
            String[] lines = taskInfos[3].split("_");

            if (list == null || list.size() == 0)return;
            List<ExportRecordImage> exportRecords = new ArrayList<>();

            int no = 0;
            for (FcRecord fcRecord1:list){
                if (fcRecord1.getImgPath() == null || fcRecord1.getImgPath().isEmpty())continue;
                no++;

                exportRecords.add(new ExportRecordImage(
                        String.valueOf(no),
                        railwayAdmin,
                        lines[6],
                        lines[lines.length-1],
                        taskInfos[2],
                        fcRecord1.getSTN(),
                        fcRecord1.getKMV().toString(),
                        fcRecord1.getPole(),
                        fcRecord1.getComponentDefect(),
                        fcRecord1.getContent(),
                        fcRecord1.getImgPath()
                ));
            }
            ExcelUtil<ExportRecordImage> util = new ExcelUtil(ExportRecordImage.class);
            util.exportExcel(response, exportRecords, tableName.isEmpty()?"4C图像缺陷":tableName);
        }catch (Exception e){
            e.printStackTrace();
        }
    }





    @ApiOperation("上传缺陷图片")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "taskPath", value = "任务全路径",required = true,  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "file", value = "文件", required = true, dataType = "MultipartFile",  dataTypeClass = MultipartFile.class),
            @ApiImplicitParam(name = "imgKey", value = "图片key", required = true, dataType = "String",  dataTypeClass = String.class),
    })
    @ApiResponse
    @PostMapping("/upload")
    public AjaxResult uploadFile(MultipartFile file,String taskPath,String imgKey)
    {
        if (taskPath.isEmpty()) return new AjaxResult(-1,"任务路径不能为空","");
        String decodeTaskName = TaskUtils.decodeBase64String(taskPath.replaceAll(" ","+"));
        try
        {
            // 上传并返回新文件名称
            String fileName = FileUploadUtils.uploadDefectImage(decodeTaskName,imgKey, file);
            if (!fileName.isEmpty()){
                //更新到缺陷表
                FcRecord record = new FcRecord(imgKey);
                record.setImgPath(fileName);
                int result = fcRecordService.updateImagePath(record);
                if (result >0)return new AjaxResult(0,"上传成功");
            }
        }
        catch (Exception e) {e.printStackTrace();}
        return new AjaxResult(-1,"上传失败");
    }



    @ApiOperation("更新浏览记录-json格式 只传需要更新的字段即可")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "currDate", value = "第一步选择的日期",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "currTask", value = "当前任务路径", dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "currStartSTN", value = "开始站区", dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "currEndSTN", value = "结束站区",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "currStartSTNId", value = "开始站区的startId字段",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "currEndSTNId", value = "结束站区的endId字段",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "currCameraType", value = "智能定制（相机分类）",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "currPolesPage", value = "当前杆号分组index",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "currPole", value = "当前杆号",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "currDirect", value = "当前相机方向",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "currCameraRealType", value = "当前相机分类",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "imgKey", value = "当前imgKey",  dataType = "String",  dataTypeClass = String.class),
    })
    @ApiResponse
    @PostMapping("/updateScan")
    public AjaxResult updateScan(@RequestBody JSONObject jsonParam)
    {
        try
        {

            scanStatusService.updateFcScanPoles(getUserId(),jsonParam.getString("currPole"));//单独追加杆号

            FcScanStatus status = new FcScanStatus(
                    getUserId(),
                    jsonParam.getString("currDate"),
                    jsonParam.getString("currTask"),
                    jsonParam.getString("currStartSTN"),
                    jsonParam.getString("currEndSTN"),
                    jsonParam.getString("currStartSTNId"),
                    jsonParam.getString("currEndSTNId"),
                    jsonParam.getString("currCameraType"),
                    jsonParam.getString("currPolesPage"),
                    jsonParam.getString("currPole"),
                    jsonParam.getString("currDirect"),
                    jsonParam.getString("currCameraRealType"),
                    jsonParam.getString("imgKey")
            );

            int result = scanStatusService.updateFcScanStatus(status);
            if (result>0)return new AjaxResult(0,"更新成功");
        }
        catch (Exception e) {e.printStackTrace();}
        return new AjaxResult(-1,"更新失败");
    }


    @ApiOperation("获取浏览记录-建议在登录成功之后调用")
    @ApiResponse
    @GetMapping("/getScanHistory")
    public AjaxResult getScanHistory()
    {
        try
        {

            List<FcScanStatus> list = scanStatusService.selectFcScanStatusList(new FcScanStatus(getUserId()));
            if (list!=null && list.size()>0){
                FcScanStatus status = list.get(0);
                HashMap map = new HashMap();
                map.put("scanedPoles",status.getScanedpoles());
                map.put("currDate",status.getCurrdate());
                map.put("currTask",status.getCurrtask());
                map.put("currStartSTN",status.getCurrstartstn());
                map.put("currEndSTN",status.getCurrendstn());
                map.put("currStartSTNId",status.getCurrstartstnid());
                map.put("currEndSTNId",status.getCurrendstnid());
                map.put("currCameraType",status.getCurrcameratype());
                map.put("currPolesPage",status.getCurrpolespage());
                map.put("currPole",status.getCurrpole());
                map.put("currDirect",status.getCurrDirect());
                map.put("currCameraRealType",status.getCurrCameraRealType());
                map.put("imgKey",status.getImgKey());
                return new AjaxResult(0,"操作成功",map);
            }
        }
        catch (Exception e) {e.printStackTrace();}
        return new AjaxResult(-1,"操作失败");
    }


}

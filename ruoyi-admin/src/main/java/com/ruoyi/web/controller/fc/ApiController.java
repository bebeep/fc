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
import com.ruoyi.common.utils.file.FileUtils;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.utils.spring.SpringUtils;
import com.ruoyi.framework.manager.AsyncManager;
import com.ruoyi.framework.manager.factory.AsyncFactory;
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
import com.ruoyi.web.websockt.WebSocketServer;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.core.AuthenticationException;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;


@Api(description = "????????????")
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
    private WebSocketServer webSocketServer;

    @ApiOperation("??????")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "username", value = "?????????", required = true, dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "password", value = "??????", required = true, dataType = "String",  dataTypeClass = String.class)
    })
    @RepeatSubmit(interval = 2000,message = "??????????????????")
    @PostMapping("/user/login")
    @ResponseBody
    public AjaxResult login(String username, String password)
    {
        if (username.isEmpty() || password.isEmpty()){
            return error("??????????????????????????????");
        }
        try
        {
            LoginUser loginUser = loginService.login(username, password);

            try{
                //?????????????????????
                scanStatusService.insertFcScanStatus(new FcScanStatus(loginUser.getUserId()));
            }catch (Exception e){}
            HashMap map = new HashMap();
            map.put("token",loginUser.getToken());
            map.put("userId",loginUser.getUserId());
            map.put("username",loginUser.getUser().getUserName());
            map.put("nickname",loginUser.getUser().getNickName());
            return new AjaxResult(0,"????????????",map);
        }
        catch (AuthenticationException e)
        {
            String msg = "???????????????";
            if (StringUtils.isNotEmpty(e.getMessage()))
            {
                msg = e.getMessage();
            }
            return error(msg);
        }
    }






    @ApiOperation("??????????????????")
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
        return new AjaxResult(0,"????????????",JSON.toJSON(map));
    }




//    @ApiOperation("????????????")
//    @PostMapping("/user/logout")
//    @ResponseBody
//    public AjaxResult logout()
//    {
//        return new AjaxResult(0,"????????????","");
//    }




    @ApiOperation("????????????????????????")
    @ApiImplicitParam(name = "year", value = "??????", required = true, dataType = "String",  dataTypeClass = String.class)
    @GetMapping("/getAllTasks")
    @ResponseBody
    public AjaxResult getAllTasks(String year)
    {
        if (year.isEmpty()){
           return new AjaxResult(-1,"??????????????????","");
        }
        return new AjaxResult(0,"????????????",TaskUtils.getAllTasks(year));
    }


    @ApiOperation("??????????????????????????????")
    @ApiImplicitParam(name = "date", value = "????????????????????????yyyy-MM-dd,??????2022-04-01???", required = true, dataType = "String",  dataTypeClass = String.class)
    @GetMapping("/getTasksByDate")
    @ResponseBody
    public AjaxResult getTasksByDate(String date)
    {
        if(date.isEmpty() || date.length()!=10){
            return new AjaxResult(-1,"??????????????????","");
        }
        List<HashMap<String,Object>> taskList = TaskUtils.getTasksByDate(date);

//        List<FcScanStatus> list = scanStatusService.selectFcScanStatusList(new FcScanStatus(getUserId()));
//        String currPole = "";//????????????
//        String currTaskPath = "";//????????????
//        if (list!=null && list.size()>0) {
//            currPole = list.get(0).getCurrpole();
//            currTaskPath = list.get(0).getCurrtask();
//        }
//        if (currTaskPath.isEmpty() && taskList!=null && taskList.size()>0) currTaskPath = taskList.get(0).get("taskPath").toString();

        //????????????????????????????????????????????????1000??????
//        if (!currTaskPath.isEmpty())AsyncManager.me().execute(TaskUtils.startCache(currTaskPath,currPole));
        return new AjaxResult(0,"????????????",taskList);
    }


    @ApiOperation("??????????????????????????????")
    @ApiImplicitParam(name = "taskPath", value = "???????????????", required = true, dataType = "String",  dataTypeClass = String.class)
    @GetMapping("/getStationsByTask")
    @ResponseBody
    public AjaxResult getStationsByTask(String taskPath)
    {
        if(taskPath.isEmpty()){
            return new AjaxResult(-1,"????????????????????????","");
        }
        String decodeTaskName = TaskUtils.decodeBase64String(taskPath.replaceAll(" ","+"));
        return new AjaxResult(0,"????????????",TaskUtils.getStationsByTask(decodeTaskName));
    }

    @ApiOperation("??????????????????????????????")
    @GetMapping("/getCameras")
    @ResponseBody
    public AjaxResult getCameras()
    {
        return new AjaxResult(0,"????????????",getCameraList());
    }


    /**
     * ??????????????????
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


    @ApiOperation("??????????????????????????????-??????")
    @ApiImplicitParams({
        @ApiImplicitParam(name = "taskPath", value = "???????????????", required = true, dataType = "String",  dataTypeClass = Integer.class),
        @ApiImplicitParam(name = "stationNames", value = "????????????????????????????????????????????????", required = true, dataType = "String",  dataTypeClass = String.class),
    })
    @ApiResponse
    @GetMapping("/getPolesByStation")
    @ResponseBody
    public AjaxResult getPolesByStation(String taskPath,String stationNames)
    {
        if(taskPath.isEmpty()){
            return new AjaxResult(-1,"????????????????????????","");
        }
        if(stationNames.isEmpty()){
            return new AjaxResult(-1,"????????????????????????","");
        }
        String decodeTaskName = TaskUtils.decodeBase64String(taskPath.replaceAll(" ","+"));

        List<HashMap> poles = TaskUtils.getRoleInfoByStation(decodeTaskName, stationNames);

        if (poles!=null && poles.size() > 0){
            for (HashMap map : poles){
                List<HashMap> pageList = (List<HashMap>) map.get("pageData");
                for (HashMap poleData : pageList){
                    String pole = poleData.get("POL").toString();
                    if (pole.isEmpty()) continue;
                    FcRecord fcRecord = new FcRecord();
                    fcRecord.setPole(pole);
                    List<FcRecord> records = fcRecordService.selectFcRecordList(fcRecord);
                    poleData.put("hasDefect", records!=null && records.size()>0);
                }
                map.put("pageData",pageList);
            }
        }

        return new AjaxResult(0,"????????????",poles);
    }



    @ApiOperation("??????????????????????????????????????????????????????????????????")
    @ApiImplicitParams({
        @ApiImplicitParam(name = "taskPath", value = "???????????????", required = true, dataType = "String",  dataTypeClass = String.class),
        @ApiImplicitParam(name = "pole", value = "??????", required = true, dataType = "String",  dataTypeClass = String.class),
        @ApiImplicitParam(name = "cameraTypeId", value = "????????????id",  dataType = "Int",  dataTypeClass = Integer.class),
    })
    @ApiResponse
    @PostMapping("/getImages")
    @ResponseBody
    public AjaxResult getImages(String taskPath,String pole, @RequestParam(value = "cameraTypeId",required = false,defaultValue = "0")int cameraTypeId)
    {
        if(taskPath.isEmpty()){
            return new AjaxResult(-1,"????????????????????????","");
        }
        if(pole.isEmpty()){
            return new AjaxResult(-1,"??????????????????","");
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
        //???????????????????????????????????????-????????????-????????????
        List<HashMap<String,Object>> resultList = new ArrayList<>();
        for (HashMap cameraType:cameraList){
            List<HashMap> cameras = (List<HashMap>) cameraType.get("cameraList");
            boolean hasDefect = false;
            for (HashMap camera:cameras){
                long cameraId = (long) camera.get("id");
                List<HashMap> images = new ArrayList<>();
                for (HashMap data:list){
                    int cID = (int) data.get("cID");
                    if (cID == cameraId){
                        List<FcRecord> records = fcRecordService.selectFcRecordList(new FcRecord(data.get("imgKey").toString()));
                        if (!hasDefect)hasDefect = records  != null && records.size()>0;
                        data.put("records",records);
                        images.add(data);
                    }
                }
                camera.put("images",images);
            }
            cameraType.put("hasDefect",hasDefect);
            resultList.add(cameraType);
        }

        return new AjaxResult(0,"????????????",resultList);
    }


    @ApiOperation("??????????????????????????????????????????id????????????byte[]  ???????????????img ???src??????")
    @ApiImplicitParams({
        @ApiImplicitParam(name = "taskPath", value = "???????????????", required = true, dataType = "String",  dataTypeClass = String.class),
        @ApiImplicitParam(name = "cameraId", value = "????????????", required = true, dataType = "Int",  dataTypeClass = Integer.class),
        @ApiImplicitParam(name = "subdbId", value = "?????????????????????", required = true, dataType = "Int",  dataTypeClass = Integer.class),
        @ApiImplicitParam(name = "imageId", value = "??????id",  required = true,dataType = "Long",  dataTypeClass = Long.class),
        @ApiImplicitParam(name = "isThumb", value = "??????????????????",  dataType = "Boolean",  dataTypeClass = Boolean.class)
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


        File thumbDb = new File(decodeTaskName+"\\DB\\thumbDB.db");

        byte[] bb = null;
        if (isThumb && thumbDb.exists()){//???????????????
            bb = TaskUtils.selectThumbImage(thumbDb.getAbsolutePath(),imageId);
        }
        if (bb == null )bb = TaskUtils.selectImage(tablePath,imageId,isThumb);
        return bb;
    }


    @ApiOperation("??????????????????  (???????????????????????????????????????)")
    @ApiImplicitParam(name = "isThumb", value = "??????????????????",  dataType = "Boolean",  dataTypeClass = Boolean.class)
    @GetMapping("/testImage")
    @ResponseBody
    public byte[] testImage(boolean isThumb) {
        byte[] bb = SpringUtils.getBean(RedisCache.class).getCacheObject("imgKey"+22030622351037301L+(isThumb?"_thumb":""));
        if (bb!=null)System.out.println("?????????????????????"+bb.length/(1024 * 1024)+"kb");
        if (bb == null){
            bb= TaskUtils.selectImage("D:\\????????????\\2022-04-01\\2022_04_01_14_04_01_?????????_????????????-????????????_??????1\\DB\\C1_1.subDb",22030622351037301L,isThumb);
        }
        return bb;
    }


    @ApiOperation("??????????????????  ??????json??????????????????json??????")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "taskPath", value = "???????????????",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "pole", value = "??????",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "cameraId", value = "??????id",  dataType = "Int",  dataTypeClass = Integer.class),
            @ApiImplicitParam(name = "imgKey", value = "??????id",  dataType = "Int",  dataTypeClass = Integer.class),
            @ApiImplicitParam(name = "content", value = "????????????",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "startX", value = "??????1 x",  dataType = "Int",  dataTypeClass = Integer.class),
            @ApiImplicitParam(name = "startY", value = "??????1 y",  dataType = "Int",  dataTypeClass = Integer.class),
            @ApiImplicitParam(name = "endX", value = "??????2 x",  dataType = "Int",  dataTypeClass = Integer.class),
            @ApiImplicitParam(name = "endY", value = "??????2 y",  dataType = "Int",  dataTypeClass = Integer.class),
            @ApiImplicitParam(name = "componentName", value = "????????????",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "componentDefect", value = "????????????",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "defectType", value = "????????????",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "defectLevel", value = "????????????",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "STN", value = "????????????",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "KMV", value = "?????????",  dataType = "Double",  dataTypeClass = Double.class),
            @ApiImplicitParam(name = "TIM", value = "????????????TIM?????????",  dataType = "Long",  dataTypeClass = Long.class),
            @ApiImplicitParam(name = "newX", value = "",  dataType = "Integer",  dataTypeClass = Integer.class),
    })
    @ApiResponse
    @PostMapping("/addDefectInfo")
    @RepeatSubmit(interval = 2000,message = "??????????????????")
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
                    jsonParam.getLong("TIM"),
                    jsonParam.getIntValue("newX")
            ));
            return new AjaxResult(0,"????????????","");
        }catch (Exception e){
        }
        return new AjaxResult(-1,"????????????","");
    }



    @ApiOperation("??????????????????????????????")
    @ApiImplicitParam(name = "imgKey", value = "??????id", required = true, dataType = "String",  dataTypeClass = String.class)
    @GetMapping("/getSingleDefectInfo")
    @ResponseBody
    public AjaxResult getSingleDefectInfo(@RequestParam(value = "imgKey",required = false, defaultValue = "")String imgKey) {
        if (imgKey.isEmpty()) new AjaxResult(-1,"imgKey????????????");
        try{
            return new AjaxResult(0,"????????????",JSONObject.toJSON(fcRecordService.selectFcRecordList(new FcRecord(imgKey))));
        }catch (Exception e){
        }
        return new AjaxResult(-1,"????????????","");
    }


    @ApiOperation("??????????????????????????????")
    @ApiImplicitParam(name = "pole", value = "??????", required = true, dataType = "String",  dataTypeClass = String.class)
    @GetMapping("/getSingleDefectInfoByPole")
    @ResponseBody
    public AjaxResult getSingleDefectInfoByPole(@RequestParam(value = "pole",required = false, defaultValue = "")String pole) {
        if (pole.isEmpty()) new AjaxResult(-1,"??????????????????");
        try{
            FcRecord fcRecord = new FcRecord();
            fcRecord.setPole(pole);
            return new AjaxResult(0,"????????????",JSONObject.toJSON(fcRecordService.selectFcRecordList(fcRecord)));
        }catch (Exception e){
        }
        return new AjaxResult(-1,"????????????","");
    }

    @ApiOperation("??????????????????  ??????json??????????????????json??????")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "id", value = "????????????id",  dataType = "Int",  dataTypeClass = Integer.class),
            @ApiImplicitParam(name = "taskPath", value = "???????????????",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "pole", value = "??????",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "cameraId", value = "??????id",  dataType = "Int",  dataTypeClass = Integer.class),
            @ApiImplicitParam(name = "imgKey", value = "??????id",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "content", value = "????????????",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "startX", value = "??????1 x",  dataType = "Int",  dataTypeClass = Integer.class),
            @ApiImplicitParam(name = "startY", value = "??????1 y",  dataType = "Int",  dataTypeClass = Integer.class),
            @ApiImplicitParam(name = "endX", value = "??????2 x",  dataType = "Int",  dataTypeClass = Integer.class),
            @ApiImplicitParam(name = "endY", value = "??????2 y",  dataType = "Int",  dataTypeClass = Integer.class),
            @ApiImplicitParam(name = "componentName", value = "????????????",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "componentDefect", value = "????????????",  dataType = "String",  dataTypeClass = Integer.class),
            @ApiImplicitParam(name = "defectType", value = "????????????",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "defectLevel", value = "????????????",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "STN", value = "????????????",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "KMV", value = "?????????",  dataType = "Double",  dataTypeClass = Double.class),
            @ApiImplicitParam(name = "TIM", value = "????????????TIM?????????",  dataType = "Long",  dataTypeClass = Long.class),
            @ApiImplicitParam(name = "newX", value = "",  dataType = "Integer",  dataTypeClass = Integer.class),
    })
    @ApiResponse
    @PostMapping("/updateDefectInfo")
    @RepeatSubmit(interval = 2000,message = "??????????????????")
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
                    jsonParam.getLong("TIM"),
                    jsonParam.getIntValue("newX")

            );

            record.setId(jsonParam.getIntValue("id"));
            int result = fcRecordService.updateFcRecord(record);
            if (result == 1)return new AjaxResult(0,"????????????","");
            return new AjaxResult(-1,"????????????","");
        }catch (Exception e){
            e.printStackTrace();
        }
        return new AjaxResult(-1,"????????????","");
    }



    @ApiOperation("????????????????????????")
    @ApiImplicitParam(name = "id", value = "????????????id", required = true, dataType = "Long",  dataTypeClass = Long.class)
    @PostMapping("/deleteDefectInfo")
    @ResponseBody
    public AjaxResult deleteDefectInfo(int  id) {
        try{
            int result = fcRecordService.deleteFcRecordById(id);
            if (result == 1)return new AjaxResult(0,"????????????","");
        }catch (Exception e){
        }
        return new AjaxResult(-1,"????????????","");
    }


    @ApiOperation("??????????????????????????????")
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
            return new AjaxResult(0,"????????????",JSONObject.toJSON(map));
        }catch (Exception e){
            e.printStackTrace();
        }
        return new AjaxResult(-1,"????????????","");
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




    @ApiOperation("???????????????????????????????????????")
    @ApiImplicitParam(name = "taskPath", value = "???????????????", required = true, dataType = "String",  dataTypeClass = String.class)
    @GetMapping("/getChartData")
    @ResponseBody
    public AjaxResult getChartData(String taskPath) {
        if (taskPath.isEmpty()) return new AjaxResult(-1,"????????????????????????","");
        FcRecord record = new FcRecord();
        record.setTaskpath(taskPath.replaceAll(" ","+"));
        try {
            List<FcRecord> records = fcRecordService.selectFcRecordList(record);

            //??????????????????
            List<String> componentDefects = new ArrayList();
            List<String> typeDefects = new ArrayList();
            List<String> levelDefects = new ArrayList();
            for (FcRecord record1:records){
                componentDefects.add(record1.getComponentDefect());
                typeDefects.add(record1.getDefectType());
                levelDefects.add(record1.getDefectLevel());
            }

            HashMap map = new HashMap();
            //????????????
            map.put("data_component", getChartData(records,componentDefects,records.size()));
            //????????????
            map.put("data_type",getChartData(records,typeDefects,records.size()));
            //????????????
            map.put("data_level",getChartData(records,levelDefects,records.size()));
            map.put("total_count", records.size());
            return new AjaxResult(0,"????????????",map);
        }catch (Exception e){
        }
        return new AjaxResult(-1,"????????????","");
    }

    /**
     * ??????????????????
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





    @ApiOperation("????????????????????????")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "taskPath", value = "???????????????",required = true, dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "pole", value = "??????",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "content", value = "????????????",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "componentDefect", value = "????????????",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "defectType", value = "????????????",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "defectLevel", value = "????????????",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "STN", value = "????????????",  dataType = "String",  dataTypeClass = String.class),
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
        if (taskPath.isEmpty()) return new AjaxResult(-1,"????????????????????????","");
        try{
            FcRecord record = new FcRecord();
            record.setTaskpath(taskPath.replaceAll(" ","+"));
            record.setSTN(STN);
            record.setPole(pole);
            record.setComponentDefect(componentDefect);
            record.setDefectType(defectType);
            record.setDefectLevel(defectLevel);
            record.setContent(content);

            return new AjaxResult(0,"????????????",fcRecordService.selectFcRecordList(record));
        }catch (Exception e){
        }
        return new AjaxResult(-1,"????????????","");
    }

    @ApiOperation("?????????????????????????????????-????????????")
    @ApiImplicitParam(name = "taskPath", value = "???????????????", required = true, dataType = "String",  dataTypeClass = String.class)
    @ApiResponse
    @GetMapping("/getDefectSTNAndPoles")
    @ResponseBody
    public AjaxResult getDefectSTNAndPoles(String taskPath) {
        if (taskPath.isEmpty()) return new AjaxResult(-1,"????????????????????????","");
        try{
            List<FcRecord> list = fcRecordService.selectFcRecordList(null);
            List<HashMap> result = new ArrayList<>();
            for (FcRecord record:list) {
                HashMap map = new HashMap();
                map.put("STN",record.getSTN());
                map.put("Pole",record.getPole());
                result.add(map);
            }
            return new AjaxResult(0,"????????????",result);
        }catch (Exception e){
        }
        return new AjaxResult(-1,"????????????","");
    }





    @ApiOperation("????????????(??????)????????????")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "taskPath", value = "???????????????", required = true, dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "currPole", value = "??????????????????????????????,???????????????",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "pageNo", value = "??????,???0??????",   dataType = "Int",  dataTypeClass = Integer.class),
            @ApiImplicitParam(name = "pageSize", value = "????????????????????????1000???",  dataType = "Int",  dataTypeClass = Integer.class),
    })
    @GetMapping("/getJHData")
    @ResponseBody
    public AjaxResult getJHData(String taskPath,
                                @RequestParam(value = "currPole",required = false)String currPole,
                                @RequestParam(value = "pageNo",required = false,defaultValue = "0")int pageNo,
                                @RequestParam(value = "pageSize",required = false,defaultValue = "1000")int pageSize) {
        if (taskPath.isEmpty()) return new AjaxResult(-1,"????????????????????????","");
        String decodeTaskName = TaskUtils.decodeBase64String(taskPath.replaceAll(" ","+"));
        if (pageSize == 0) pageSize = 1000;
        try {
            List<HashMap> list = TaskUtils.getJHdata(decodeTaskName,currPole,pageSize,pageNo);
            return new AjaxResult(0,"????????????",list);
        }catch (Exception e){
        }
        return new AjaxResult(-1,"????????????","");
    }




    @ApiOperation("??????????????????-????????????????????????")
    @ApiImplicitParam(name = "currTaskPath", value = "?????????????????????", required = true, dataType = "String",  dataTypeClass = String.class)
    @GetMapping("/getHistoryTasks")
    @ResponseBody
    public AjaxResult getHistoryTasks(String currTaskPath)
    {
        String decodeTaskName = TaskUtils.decodeBase64String(currTaskPath.replaceAll(" ","+"));
        return new AjaxResult(0,"????????????",TaskUtils.getHistoryTasks(decodeTaskName));
    }


    @ApiOperation("??????????????????-??????????????????")
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
            return  new AjaxResult(0,"????????????",results);
        }catch (Exception e){

        }
        return new AjaxResult(-1,"????????????",null);
    }



    @ApiOperation("??????????????????-????????????")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "taskPath", value = "???????????????", required = true, dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "pole", value = "??????",  required = true,dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "cameraId", value = "????????????", required = true,dataType = "Int",  dataTypeClass = Integer.class),
    })
    @GetMapping("/getImagesByCamera")
    @ResponseBody
    public AjaxResult getImagesByCamera(String taskPath,String pole,int cameraId) {
        if (taskPath.isEmpty()) return new AjaxResult(-1,"????????????????????????","");
        String decodeTaskName = TaskUtils.decodeBase64String(taskPath.replaceAll(" ","+"));
        try {
            String dbFilePath = TaskUtils.getDbPath(decodeTaskName);
            Connection conn = null;
            PreparedStatement ps = null;
            Class.forName("org.sqlite.JDBC");
            conn = DriverManager.getConnection("jdbc:sqlite:"+dbFilePath);
            conn.setAutoCommit(false);

            //????????????????????????????????????
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

            return new AjaxResult(0,"????????????",imgs);
        }catch (Exception e){
            e.printStackTrace();
        }
        return new AjaxResult(-1,"????????????","");
    }

    @ApiOperation("????????????-????????????????????????????????????")
    @ApiImplicitParam(name = "taskPath", value = "???????????????", required = true, dataType = "String",  dataTypeClass = String.class)
    @GetMapping("/revise/getPolAndKMVInfo")
    @ResponseBody
    public AjaxResult getData(String taskPath) {
        if (taskPath.isEmpty()) return new AjaxResult(-1,"????????????????????????","");
        String decodeTaskName = TaskUtils.decodeBase64String(taskPath.replaceAll(" ","+"));
        try {
            return new AjaxResult(0,"????????????",TaskUtils.getPolAndKMVInfo(decodeTaskName));
        }catch (Exception e){
            e.printStackTrace();
        }
        return new AjaxResult(-1,"????????????","");
    }


    @ApiOperation("????????????-????????????????????????????????????/??????????????????")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "taskPath", value = "???????????????", required = true, dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "pole", value = "??????",  required = true,dataType = "String",  dataTypeClass = String.class),
    })
    @GetMapping("/revise/getImagesByPole")
    @ResponseBody
    public AjaxResult getImagesByPole(String taskPath,String pole) {
        if (taskPath.isEmpty()) return new AjaxResult(-1,"????????????????????????","");
        if (pole.isEmpty()) return new AjaxResult(-1,"??????????????????","");
        String decodeTaskName = TaskUtils.decodeBase64String(taskPath.replaceAll(" ","+"));
        try {
            return new AjaxResult(0,"????????????",TaskUtils.getImagesByPole(decodeTaskName,pole));
        }catch (Exception e){
            e.printStackTrace();
        }
        return new AjaxResult(-1,"????????????","");
    }


    @ApiOperation("????????????-????????????????????????")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "taskPath", value = "???????????????", required = true, dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "poles", value = "????????????,?????????",required = true,   dataType = "String",  dataTypeClass = String.class),
    })
    @PostMapping("/revise/delData")
    @ResponseBody
    public AjaxResult delData(String taskPath,String poles) {
        if (taskPath.isEmpty()) return new AjaxResult(-1,"????????????????????????","");
        if (poles.isEmpty()) return new AjaxResult(-1,"??????????????????","");

        String decodeTaskName = TaskUtils.decodeBase64String(taskPath.replaceAll(" ","+"));


        boolean result = TaskUtils.delPolAndKMVInfo(decodeTaskName,poles);
        if (result ) return new AjaxResult(0,"????????????","");
        return new AjaxResult(-1,"????????????","");
    }

    @ApiOperation("????????????-????????????")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "taskPath", value = "???????????????", required = true, dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "oldPole", value = "????????????",required = true,   dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "newPole", value = "??????????????????",required = true, dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "newKmv", value = "?????????????????????", required = true,dataType = "Double",  dataTypeClass = Double.class),
            @ApiImplicitParam(name = "newStation", value = "?????????????????????",required = true, dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "isPoleExist", value = "????????????????????????????????????",required = true,dataType = "Boolean",  dataTypeClass = Boolean.class),
    })
    @PostMapping("/revise/updateData")
    @ResponseBody
    public AjaxResult updateData(String taskPath,String oldPole,String newPole,double newKmv,String newStation,boolean isPoleExist) {
        if (taskPath.isEmpty()) return new AjaxResult(-1,"????????????????????????","");
        if (oldPole.isEmpty()) return new AjaxResult(-1,"??????????????????","");
        String decodeTaskName = TaskUtils.decodeBase64String(taskPath.replaceAll(" ","+"));

        String existPoleNewName = "";//?????????????????????name
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
        if (!success)return new AjaxResult(-1,"????????????","");
        try {
            //??????????????????  ????????????STN???KMV???pole
            FcRecord record = new FcRecord();
            record.setPole(oldPole);
            List<FcRecord> recordList = fcRecordService.selectFcRecordList(record);
            for (FcRecord fcRecord:recordList){
                if (fcRecord.getPole().equals(record.getPole())){
                    fcRecord.setPole(!existPoleNewName.isEmpty()?existPoleNewName:newPole);
                    fcRecord.setKMV(newKmv);
                    fcRecord.setSTN(newStation);
                    fcRecordService.updateFcRecord(fcRecord);
                    //??????????????????????????????
                    new Thread(()-> TaskUtils.updateJHdata(decodeTaskName,oldPole,fcRecord.getPole())).start();
                }
            }


            HashMap map = new HashMap();
            map.put("newPole",existPoleNewName.isEmpty()?newPole:existPoleNewName);

            return new AjaxResult(0,"????????????",map);
        }catch (Exception e){
            e.printStackTrace();
        }
        return new AjaxResult(-1,"????????????","");
    }


    @ApiOperation("??????????????????")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "taskPath", value = "???????????????",required = true,  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "movePoles", value = "?????????????????????,???????????????",required = true,  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "asc", value = "?????????true????????????false",required = true,  dataType = "Boolean",  dataTypeClass = Boolean.class),
            @ApiImplicitParam(name = "moveCount", value = "????????????????????????1", required = true, dataType = "Integer",  dataTypeClass = Integer.class),
            @ApiImplicitParam(name = "targetPole", value = "????????????????????????????????????????????????null??????''", required = true, dataType = "String",  dataTypeClass = String.class),
    })
    @ApiResponse
    @PostMapping("/revise/updateMultiData")
    @RepeatSubmit(interval = 2000,message = "??????????????????")
    @ResponseBody
    public AjaxResult updateMultiData(String taskPath,String movePoles,boolean asc,int moveCount,String targetPole) {


        try{
            if (taskPath.isEmpty()) return new AjaxResult(-1,"????????????????????????","");
            String decodeTaskName = TaskUtils.decodeBase64String(taskPath.replaceAll(" ","+"));


            String[] poles = movePoles.split(",");
            if (poles == null || poles.length == 0)return new AjaxResult(-1,"????????????","");

            HashMap map = TaskUtils.updateMulti(decodeTaskName, poles,asc,moveCount,targetPole);
            if (map == null)return new AjaxResult(-1,"????????????","");

            try{
                boolean isTargetPoleNull = targetPole == null || targetPole.isEmpty() || targetPole.equals("null") || targetPole.equals("NULL");
                if (asc){ //??????
                    for (int i = poles.length-1;i >= 0 ; i--){
                        if (poles[i].isEmpty()) continue;
                        final int index = i;
                        if (i == poles.length - 1) new Thread(()-> TaskUtils.updateJHdata(taskPath,poles[index],TaskUtils.getNewPoleName(isTargetPoleNull?poles[index]:targetPole))).start();
                        else  new Thread(()-> TaskUtils.updateJHdata(taskPath,poles[index],poles[index+1])).start();
                    }
                }else { //??????
                    for (int i = 0;i < poles.length ; i++){
                        if (poles[i].isEmpty()) continue;
                        final int index = i;
                        if (i == 0) new Thread(()-> TaskUtils.updateJHdata(taskPath,poles[index],TaskUtils.getNewPoleName(isTargetPoleNull?poles[index]:targetPole))).start();
                        else  new Thread(()-> TaskUtils.updateJHdata(taskPath,poles[index],poles[index-1])).start();
                    }
                }

            }catch (Exception e){
                e.printStackTrace();
            }


            return new AjaxResult(0,"????????????",map);
        }catch (Exception e){
            e.printStackTrace();
        }
        return new AjaxResult(-1,"????????????","");
    }


    @ApiOperation("????????????-??????????????????")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "taskPath", value = "???????????????", required = true, dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "tableName", value = "????????????",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "paraName", value = "??????", required = true, dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "workShop", value = "??????",required = true,  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "workArea", value = "??????",required = true,  dataType = "String",  dataTypeClass = String.class),
    })
    @GetMapping("/export/Defect")
    @RepeatSubmit(interval = 2000,message = "??????????????????")
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
            util.exportExcel(response, exportRecords, tableName.isEmpty()?("4C???????????????"):tableName);
        }catch (Exception e){
            e.printStackTrace();
        }
    }



    @ApiOperation("????????????-4C????????????")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "taskPath", value = "???????????????",required = true,  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "tableName", value = "????????????", required = true, dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "railwayAdmin", value = "?????????",required = true,  dataType = "String",  dataTypeClass = String.class),
    })
    @GetMapping("/export/DefectImage")
    @RepeatSubmit(interval = 2000,message = "??????????????????")
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
            util.exportExcel(response, exportRecords, tableName.isEmpty()?"4C????????????":tableName);
        }catch (Exception e){
            e.printStackTrace();
        }
    }





    @ApiOperation("??????????????????")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "taskPath", value = "???????????????",required = true,  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "file", value = "??????", required = true, dataType = "MultipartFile",  dataTypeClass = MultipartFile.class),
            @ApiImplicitParam(name = "imgKey", value = "??????key", required = true, dataType = "String",  dataTypeClass = String.class),
    })
    @ApiResponse
    @PostMapping("/upload")
    public AjaxResult uploadFile(MultipartFile file,String taskPath,String imgKey)
    {
        if (taskPath.isEmpty()) return new AjaxResult(-1,"????????????????????????","");
        String decodeTaskName = TaskUtils.decodeBase64String(taskPath.replaceAll(" ","+"));
        try
        {
            // ??????????????????????????????
            String fileName = FileUploadUtils.uploadDefectImage(decodeTaskName,imgKey, file);
            if (!fileName.isEmpty()){
                //??????????????????
                FcRecord record = new FcRecord(imgKey);
                record.setImgPath(fileName);
                int result = fcRecordService.updateImagePath(record);
                if (result >0)return new AjaxResult(0,"????????????");
            }
        }
        catch (Exception e) {e.printStackTrace();}
        return new AjaxResult(-1,"????????????");
    }



    @ApiOperation("??????????????????-json?????? ?????????????????????????????????")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "currDate", value = "????????????????????????",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "currTask", value = "??????????????????", dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "currStartSTN", value = "????????????", dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "currEndSTN", value = "????????????",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "currStartSTNId", value = "???????????????startId??????",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "currEndSTNId", value = "???????????????endId??????",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "currCameraType", value = "??????????????????????????????",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "currPolesPage", value = "??????????????????index",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "currPole", value = "????????????",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "currDirect", value = "??????????????????",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "currCameraRealType", value = "??????????????????",  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "imgKey", value = "??????imgKey",  dataType = "String",  dataTypeClass = String.class),
    })
    @ApiResponse
    @PostMapping("/updateScan")
    public AjaxResult updateScan(@RequestBody JSONObject jsonParam)
    {
        try
        {

            scanStatusService.updateFcScanPoles(getUserId(),jsonParam.getString("currPole"));//??????????????????

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
            if (result>0)return new AjaxResult(0,"????????????");
        }
        catch (Exception e) {e.printStackTrace();}
        return new AjaxResult(-1,"????????????");
    }


    @ApiOperation("??????????????????-?????????????????????????????????")
    @ApiResponse
    @GetMapping("/getScanHistory")
    public AjaxResult getScanHistory()
    {
        try
        {

            List<FcScanStatus> list = scanStatusService.selectFcScanStatusList(new FcScanStatus(getUserId()));
            if (list!=null && list.size()>0){
                FcScanStatus status = list.get(0);

                String taskName = TaskUtils.getTaskName(status.getCurrtask());
                if (status.getCurrtask().isEmpty() || taskName.isEmpty()){
                    return new AjaxResult(-1,"????????????");
                }

                HashMap map = new HashMap();
                map.put("scanedPoles",status.getScanedpoles());
                map.put("currDate",status.getCurrdate());
                map.put("currTask",status.getCurrtask());
                map.put("currTaskName",taskName);
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
                return new AjaxResult(0,"????????????",map);
            }
        }
        catch (Exception e) {e.printStackTrace();}
        return new AjaxResult(-1,"????????????");
    }


    @ApiOperation("????????????")
    @ApiResponse
    @GetMapping("/importData")
    public AjaxResult importData()
    {
        return new AjaxResult(-1,"????????????");
    }

    @ApiOperation("??????????????????")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "taskPath", value = "???????????????",required = true,  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "stationNames", value = "????????????????????????????????????????????????", required = true, dataType = "String",  dataTypeClass = String.class),
//            @ApiImplicitParam(name = "isOverride", value = "??????????????????????????????????????????",dataType = "Boolean",  dataTypeClass = Boolean.class),
    })
    @ApiResponse
    @PostMapping("/pkgImages")
    public AjaxResult pkgImages(String taskPath, @RequestParam(required = false)String stationNames)
    {
        if(taskPath.isEmpty()){
            return new AjaxResult(-1,"????????????????????????","");
        }
        String decodeTaskName = TaskUtils.decodeBase64String(taskPath.replaceAll(" ","+"));



        try {
            String[] taskNames = decodeTaskName.split("\\\\");
            String taskName = taskNames[taskNames.length-1];
            String date = taskName.substring(0,10);


            //???????????????zip????????????????????????
            String[] stationNameArrs = stationNames.split(",");
            List<String> pkgStns = new ArrayList<>();
            for (String stationName:stationNameArrs){
                String filePath = TaskUtils.imagePath + date + "\\"+taskName+"\\"+stationName+".zip";
                File file = new File(filePath);
                if (file.exists() && file.length()>0) continue;
                pkgStns.add(stationName);
            }

            if (pkgStns.size() == 0)return new AjaxResult(-1,"????????????????????????????????????");

            AsyncManager.me().execute(TaskUtils.saveImagesTask(getUserId().toString(),decodeTaskName,pkgStns));
//        TaskUtils.saveImagesToLocal(getUserId().toString(),decodeTaskName,pkgStns);
        }catch (Exception e){
            e.printStackTrace();
        }
        return new AjaxResult(0,"????????????");
    }


    @ApiOperation("?????????????????????")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "taskPath", value = "???????????????",required = true,  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "stationName", value = "????????????", required = true, dataType = "String",  dataTypeClass = String.class),
    })
    @GetMapping("/downloadImages")
    public void downloadImages(String taskPath,String stationName,  HttpServletResponse response, HttpServletRequest request)
    {
        try
        {
            String decodeTaskName = TaskUtils.decodeBase64String(taskPath.replaceAll(" ","+"));
            String[] taskNames = decodeTaskName.split("\\\\");
            String taskName = taskNames[taskNames.length-1];
            String date = taskName.substring(0,10);


            String filePath = TaskUtils.imagePath + date + "\\"+taskName+"\\"+stationName+".zip";
            if (new File(filePath).exists()){
                response.setContentType(MediaType.APPLICATION_OCTET_STREAM_VALUE);
                FileUtils.setAttachmentResponseHeader(response, stationName+".zip");
                FileUtils.writeBytes(filePath, response.getOutputStream());
            }else {
                response.getWriter().write("-999");
            }
        }
        catch (Exception e)
        {
            e.printStackTrace();
            try {
                response.getWriter().write("-888");
            } catch (IOException e1) {
                e1.printStackTrace();
            }
        }
    }

    @ApiOperation("?????????????????????????????????")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "taskPath", value = "???????????????",required = true,  dataType = "String",  dataTypeClass = String.class),
            @ApiImplicitParam(name = "stationName", value = "????????????", required = true, dataType = "String",  dataTypeClass = String.class),
    })
    @GetMapping("/checkPkgExist")
    public String checkPkgExist(String taskPath,String stationName)
    {
        try
        {
            String decodeTaskName = TaskUtils.decodeBase64String(taskPath.replaceAll(" ","+"));
            String[] taskNames = decodeTaskName.split("\\\\");
            String taskName = taskNames[taskNames.length-1];
            String date = taskName.substring(0,10);


            String filePath = TaskUtils.imagePath + date + "\\"+taskName+"\\"+stationName+".zip";
            if (!new File(filePath).exists())return "-999";
        }
        catch (Exception e)
        {
            return "-888";
        }
        return "0";
    }

    @ApiResponse
    @PostMapping("/testWebsocketMsg")
    public AjaxResult testWebsocketMsg(String sId,String content)
    {

//        TaskUtils.saveImagesToLocal("1111","D:\\????????????\\2022-03-06\\2022_03_06_22_15_17_??????_?????????-?????????_??????","?????????,??????-?????????");
        return new AjaxResult(0,"????????????");
    }
}

package com.ruoyi.web.copy;


import com.alibaba.fastjson.JSONObject;
import com.ruoyi.web.websockt.WebSocketServer;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class USB_CopyThread extends Thread {

    private String filePath;
    private static List<Integer> list = new ArrayList<>();

    public USB_CopyThread(String filePath) {
        this.filePath = filePath;
    }
    @Override
    public void run() {
        UsbFiles(filePath);
    }
    List<String> lists = new ArrayList<>();
    // 遍历盘符中所有文件夹及其文件


    HashMap callBackMap = new HashMap();
    private void UsbFiles(String filePath) {
        lists.add(filePath);
        List<String> g = getAllFile(lists.get(0),false);
        File file = new File(filePath);
        long stime = System.currentTimeMillis();
        System.out.println("开始复制"+(stime / 1000));

        File[] files = file.listFiles();  //获取所有文件、目录的绝对路径

        DomReadXML domReadXML = new DomReadXML();//读取配置文件
        String path3 = domReadXML.readXml().get(0)+"\\"+domReadXML.readXml().get(1);//本地
        if(file.exists()) {
            for (File f : files) {
                //获取本地目标文件夹大小
                if (f.isDirectory()) {   //如果是文件夹，继续向下递归
                    UsbFiles(f.getAbsolutePath());

                }else if(f.isFile()) {  //如果是文件，则进行复制
                    USB_Copy copy = new USB_Copy(f);
                    copy.copyToSys();
                }

                System.out.println("总共"+g.size()+"已复制"+ getAllFile(path3,false).size());
                double progress = (getAllFile(path3,false).size()*1.0)/(g.size() * 1.0);
                callBackMap.put("progress",String.format("%.2f",progress));
                callBackMap.put("status",progress>=100?"数据拷贝完成!":"正在拷贝数据...");
                callBackMap.put("msgType","2");//1打包图像数据 2拷贝文件
                WebSocketServer.sendInfo(JSONObject.toJSON(callBackMap).toString(),"");
            }
        }

        long etime = System.currentTimeMillis();
        System.out.println("结束复制:"+(etime-stime)/1000+"秒");

    }


    public List<String> getAllFile(String directoryPath, boolean isAddDirectory) {
        List<String> list = new ArrayList<String>();
        File baseFile = new File(directoryPath);
        if (baseFile.isFile() || !baseFile.exists()) {
            return list;
        }
        File[] files = baseFile.listFiles();
        for (File file : files) {
            if (file.isDirectory()) {
                if(isAddDirectory){
                    list.add(file.getAbsolutePath());
                }
                list.addAll(getAllFile(file.getAbsolutePath(),isAddDirectory));
            } else {
                list.add(file.getAbsolutePath());
            }
        }
        return list;
    }

}
package com.ruoyi.web.copy;

import org.apache.commons.io.FileUtils;

import java.io.File;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class USB_CopyThread extends Thread {

    private String filePath;
    private static List<Integer> list = new ArrayList<>();

    public USB_CopyThread(String filePath) {
        this.filePath = filePath;
    }
    int getdata = 0;
    int getdatas = 0;
    @Override
    public void run() {
        UsbFiles(filePath);
    }

    // 遍历盘符中所有文件夹及其文件
    private void UsbFiles(String filePath) {

        File file = new File(filePath);
        long getUSBSize = FileUtils.sizeOfDirectory(file);//获取源文件大小

        if(file.exists()) {
            Date day=new Date();
            SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            System.out.println("开始复制U盘内容:"+df.format(day));
            long stime = System.currentTimeMillis();
            File[] files = file.listFiles();  //获取所有文件、目录的绝对路径

            for (File f : files) {
                //获取本地目标文件夹大小
                DomReadXML domReadXML = new DomReadXML();//读取配置文件
                String path3 = domReadXML.readXml().get(0);
                File f1 = new File(path3);
                long getsize = FileUtils.sizeOfDirectory(f1);

                if (f.isDirectory()) {   //如果是文件夹，继续向下递归
                    //System.out.println("源文件夹："+f.getAbsolutePath());
                    UsbFiles(f.getAbsolutePath());

                }else if(f.isFile()) {  //如果是文件，则进行复制
                    USB_Copy copy = new USB_Copy(f);
                    copy.copyToSys();
                }

                if (getsize > 0){
                    int sizeb = (int) (getsize*0.00000095);//转换为MB
                    int sizeusb = (int) (getUSBSize*0.00000095);

                    DecimalFormat decimalFormat = new DecimalFormat("##.0000%");
                    //System.out.println("进度-----:"+decimalFormat.format(sizeb / sizeusb));
                    getdata = sizeusb / 100;
                    getdatas = (sizeusb - sizeb) / 100;
                    int getdatass = getdata - getdatas;
                    System.out.println("总共:"+getdata+"已完成:"+(getdata - getdatas));
                    //ProgressMonitor monitor = new ProgressMonitor(null,"等待任务完成","已完成",getdata - getdatas,getdata);
                }
            }
            Date days =new Date();
            SimpleDateFormat dfs = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            System.out.println("结束复制:"+dfs.format(days));
            long etime = System.currentTimeMillis();
            System.out.printf("执行时长:%d 秒", (etime - stime) / 1000);
            //System.exit(0);
        }

    }

    public List<Integer> sj(){
        return list;
    }

}
package com.ruoyi.web.copy;

import org.apache.commons.io.FileUtils;

import java.io.File;

//@RestController
//@RequestMapping("/schedule")
public class IsUSB extends Thread{
    private String getpaths;
    File[] fileSystemRoot = File.listRoots(); //系统盘符列表
    File[] currentRoot = null ; //当前盘符列表

    @Override
    public void run() {
        DomReadXML domReadXML = new DomReadXML();//读取配置文件
        String path3 = domReadXML.readXml().get(0);

        while(true) {
            currentRoot = File.listRoots();
            boolean isNewRoot = false;
            //增加了新盘符
            if( currentRoot.length > fileSystemRoot.length ) {
                for (int i = 0 ; i < currentRoot.length ; i++) {
                    isNewRoot = true;
                    for (int j = 0 ; j < fileSystemRoot.length ; j++ ) {
                        if( currentRoot[i].equals(fileSystemRoot[j]) ) {
                            isNewRoot = false;
                        }
                    }
                    if( isNewRoot ) {
                        String path2 = domReadXML.readXml().get(1);
                        getpaths = ""+currentRoot[i].getAbsolutePath()+"\\"+path2+"";

                        File file = new File(getpaths);
                        long getUSBSize = FileUtils.sizeOfDirectory(file);//获取源文件大小

                        File f1 = new File(path3);
                        long getsize = FileUtils.sizeOfDirectory(f1);

                        int sizeb = (int) (getsize*0.00000095);//转换为MB
                        int sizeusb = (int) (getUSBSize*0.00000095);

                        int getdatal = sizeusb / 100;
                        int getdatasl = (sizeusb - sizeb) / 100;

                        //复制新盘符中的文件
                        USB_CopyThread copy;
                        copy = new USB_CopyThread(""+currentRoot[i].getAbsolutePath()+"\\"+path2+"");
                        //copy = new USB_CopyThread(currentRoot[i].getAbsolutePath());//这个是复制U盘所有数据
                        copy.start();
                    }

                }

            }
            fileSystemRoot = File.listRoots(); //更新系统盘符列表
            try {
                Thread.sleep(1000); //每1秒检查一次盘符列表是否发生变化
            } catch (InterruptedException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

        }

    }
}

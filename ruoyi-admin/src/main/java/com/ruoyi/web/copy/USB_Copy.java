package com.ruoyi.web.copy;



import java.io.*;

public class USB_Copy{

    private File file;

    public USB_Copy(File file) {
        this.file = file ;
    }

    public void copyToSys() {

        BufferedInputStream bis = null;
        BufferedOutputStream bos = null;
        StringBuilder usbFilePath = null;
        String sysFilePath = null;

        usbFilePath = new StringBuilder(file.getParent());
        //System.out.println("源文件的父路径为："+usbFilePath);
        //将路径中从第一个字母至第一个路径分隔符\的内容，替换为E:\导入数据\A,这个是我电脑上的文件夹
        DomReadXML domReadXML = new DomReadXML();
        String path1 = domReadXML.readXml().get(0);
        usbFilePath.replace( 0 , usbFilePath.indexOf(File.separator) , path1);
        sysFilePath = usbFilePath.toString();
        File sysFile = new File(sysFilePath);

        if(!sysFile.exists()) {
            sysFile.mkdirs(); //如果目标文件夹不存在，创建文件夹
        }

        //System.out.println("复制的新文件夹为："+sysFilePath);

        try {
            bis = new BufferedInputStream(new FileInputStream(file));
            bos = new BufferedOutputStream(new FileOutputStream(new File(sysFilePath+File.separator+file.getName())));
            byte[] buf = new byte[1024];
            int len = 0;
            try {
                while ((len = bis.read(buf)) != -1) {
                    bos.write(buf, 0, len);
                    bos.flush();
                }
                bis.close();
                bos.close();
                System.out.println("正在复制:"+sysFilePath+file.getName());
            } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        } catch (FileNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

    }

}
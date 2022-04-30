package com.ruoyi.common.utils.bean;

public class FilePathEntity {

    String filePath;
    FilePathEntity subFilePath;




    public String getFilePath() {
        return filePath;
    }

    public void setFilePath(String filePath) {
        this.filePath = filePath;
    }

    public FilePathEntity getSubFilePath() {
        return subFilePath;
    }

    public void setSubFilePath(FilePathEntity subFilePath) {
        this.subFilePath = subFilePath;
    }
}

package com.ruoyi.web.controller.tool;

import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 缺陷图像对象 fc_record
 * 
 * @author ruoyi
 * @date 2022-04-28
 */
public class ExportRecordImage extends BaseEntity
{

    @Excel(name = "序号")
    private String no;

    @Excel(name = "铁路局")
    private String railwayAdmin;

    @Excel(name = "线别")
    private String line;

    @Excel(name = "行别")
    private String directType;

    @Excel(name = "检测日期")
    private String fileDate;

    @Excel(name = "站区名称")
    private String paraName;

    @Excel(name = "里程")
    private String kmv;

    @Excel(name = "杆号")
    private String pole;

    @Excel(name = "缺陷位置")//相机分类
    private String defectLocate;

    @Excel(name = "缺陷描述")
    private String defectDetails;

    @Excel(name = "缺陷图片文件名")
    private String imagePath;


    public String getNo() {
        return no;
    }

    public void setNo(String no) {
        this.no = no;
    }

    public String getRailwayAdmin() {
        return railwayAdmin;
    }

    public void setRailwayAdmin(String railwayAdmin) {
        this.railwayAdmin = railwayAdmin;
    }

    public String getLine() {
        return line;
    }

    public void setLine(String line) {
        this.line = line;
    }

    public String getDirectType() {
        return directType;
    }

    public void setDirectType(String directType) {
        this.directType = directType;
    }

    public String getFileDate() {
        return fileDate;
    }

    public void setFileDate(String fileDate) {
        this.fileDate = fileDate;
    }

    public String getParaName() {
        return paraName;
    }

    public void setParaName(String paraName) {
        this.paraName = paraName;
    }

    public String getKmv() {
        return kmv;
    }

    public void setKmv(String kmv) {
        this.kmv = kmv;
    }

    public String getPole() {
        return pole;
    }

    public void setPole(String pole) {
        this.pole = pole;
    }

    public String getDefectLocate() {
        return defectLocate;
    }

    public void setDefectLocate(String defectLocate) {
        this.defectLocate = defectLocate;
    }

    public String getDefectDetails() {
        return defectDetails;
    }

    public void setDefectDetails(String defectDetails) {
        this.defectDetails = defectDetails;
    }

    public String getImagePath() {
        return imagePath;
    }

    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
    }


    public ExportRecordImage(
            String no,
            String railwayAdmin,
            String line,
            String directType,
            String fileDate,
            String paraName,
            String kmv,
            String pole,
            String defectLocate,
            String defectDetails,
            String imagePath) {
        this.no = no;
        this.railwayAdmin = railwayAdmin;
        this.line = line;
        this.directType = directType;
        this.fileDate = fileDate;
        this.paraName = paraName;
        this.kmv = kmv;
        this.pole = pole;
        this.defectLocate = defectLocate;
        this.defectDetails = defectDetails;
        this.imagePath = imagePath;
    }
}

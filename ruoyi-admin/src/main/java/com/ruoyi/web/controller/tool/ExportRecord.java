package com.ruoyi.web.controller.tool;

import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;
import com.ruoyi.common.utils.DateUtils;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * 缺陷记录对象 fc_record
 * 
 * @author ruoyi
 * @date 2022-04-28
 */
public class ExportRecord extends BaseEntity
{

    @Excel(name = "检测日期")
    private String fileDate;

    @Excel(name = "线别")
    private String line;

    @Excel(name = "行别")
    private String directType;

    @Excel(name = "区间")
    private String paraName;

    @Excel(name = "车间")
    private String workShop;

    @Excel(name = "工区")
    private String workArea;

    @Excel(name = "公里标")
    private String kmv;

    @Excel(name = "杆号")
    private String pole;

    @Excel(name = "缺陷类型")
    private String defectType;

    @Excel(name = "缺陷等级")
    private String defectLevel;

    @Excel(name = "缺陷详情")
    private String defectDetails;

    @Excel(name = "分析人及分析日期")
    private String checkPersonAndDate;

    @Excel(name = "复核情况")
    private String param1;

    @Excel(name = "复核人")
    private String param2;

    @Excel(name = "复核日期")
    private String param3;

    @Excel(name = "处理情况")
    private String param4;

    @Excel(name = "处理人")
    private String param5;


    public String getFileDate() {
        return fileDate;
    }

    public void setFileDate(String fileDate) {
        this.fileDate = fileDate;
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

    public String getParaName() {
        return paraName;
    }

    public void setParaName(String paraName) {
        this.paraName = paraName;
    }

    public String getWorkShop() {
        return workShop;
    }

    public void setWorkShop(String workShop) {
        this.workShop = workShop;
    }

    public String getWorkArea() {
        return workArea;
    }

    public void setWorkArea(String workArea) {
        this.workArea = workArea;
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

    public String getDefectType() {
        return defectType;
    }

    public void setDefectType(String defectType) {
        this.defectType = defectType;
    }

    public String getDefectLevel() {
        return defectLevel;
    }

    public void setDefectLevel(String defectLevel) {
        this.defectLevel = defectLevel;
    }

    public String getDefectDetails() {
        return defectDetails;
    }

    public void setDefectDetails(String defectDetails) {
        this.defectDetails = defectDetails;
    }

    public String getCheckPersonAndDate() {
        return checkPersonAndDate;
    }

    public void setCheckPersonAndDate(String checkPersonAndDate) {
        this.checkPersonAndDate = checkPersonAndDate;
    }

    public ExportRecord(
            String fileDate,
            String line,
            String directType,
            String paraName,
            String workShop,
            String workArea,
            String kmv,
            String pole,
            String defectType,
            String defectLevel,
            String defectDetails, String checkPersonAndDate) {
        this.fileDate = fileDate;
        this.line = line;
        this.directType = directType;
        this.paraName = paraName;
        this.workShop = workShop;
        this.workArea = workArea;
        this.kmv = kmv;
        this.pole = pole;
        this.defectType = defectType;
        this.defectLevel = defectLevel;
        this.defectDetails = defectDetails;
        this.checkPersonAndDate = checkPersonAndDate;
    }
}

package com.ruoyi.system.domain;

import com.ruoyi.common.utils.DateUtils;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 缺陷记录对象 fc_record
 * 
 * @author ruoyi
 * @date 2022-04-28
 */
public class FcRecord extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Integer id;

    /** 图片id */
    @Excel(name = "图片id")
    private String imgkey;

    /** 缺陷记录字符串 */
    @Excel(name = "缺陷记录字符串")
    private String content;

    /** 任务全路径 */
    @Excel(name = "任务全路径")
    private String taskpath;

    /** 杆号 */
    @Excel(name = "杆号")
    private String pole;

    /** 相机id */
    @Excel(name = "相机id")
    private Integer cameraid;

    /** 部件名称id */
    @Excel(name = "部件名称id")
    private String componentName;

    /** 缺陷部件id */
    @Excel(name = "缺陷部件id")
    private String componentDefect;

    /** 缺陷类型id */
    @Excel(name = "缺陷类型id")
    private String defectType;

    /** 缺陷等级id */
    @Excel(name = "缺陷等级id")
    private String defectLevel;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private Integer startx;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private Integer starty;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private Integer endx;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private Integer endy;


    private String checkDate;//检测日期
    private String STN;//站区
    private String imgPath;//缺陷图片地址
    private Double KMV;//公里标
    private Long TIM;

    public String getCheckDate() {
        return checkDate;
    }

    public void setCheckDate(String checkDate) {
        this.checkDate = checkDate;
    }

    public String getSTN() {
        return STN;
    }

    public void setSTN(String STN) {
        this.STN = STN;
    }

    public Double getKMV() {
        return KMV;
    }

    public void setKMV(Double KMV) {
        this.KMV = KMV;
    }

    public String getComponentName() {
        return componentName;
    }

    public void setComponentName(String componentName) {
        this.componentName = componentName;
    }

    public String getComponentDefect() {
        return componentDefect;
    }

    public void setComponentDefect(String componentDefect) {
        this.componentDefect = componentDefect;
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

    public Long getTIM() {
        return TIM;
    }

    public void setTIM(Long TIM) {
        this.TIM = TIM;
    }

    public void setId(Integer id)
    {
        this.id = id;
    }

    public Integer getId() 
    {
        return id;
    }
    public void setImgkey(String imgkey)
    {
        this.imgkey = imgkey;
    }

    public String getImgkey()
    {
        return imgkey;
    }
    public void setContent(String content) 
    {
        this.content = content;
    }

    public String getContent() 
    {
        return content;
    }
    public void setTaskpath(String taskpath) 
    {
        this.taskpath = taskpath;
    }

    public String getTaskpath() 
    {
        return taskpath;
    }
    public void setPole(String pole) 
    {
        this.pole = pole;
    }

    public String getPole() 
    {
        return pole;
    }
    public void setCameraid(Integer cameraid) 
    {
        this.cameraid = cameraid;
    }

    public Integer getCameraid() 
    {
        return cameraid;
    }
    public void setStartx(Integer startx) 
    {
        this.startx = startx;
    }

    public Integer getStartx() 
    {
        return startx;
    }
    public void setStarty(Integer starty) 
    {
        this.starty = starty;
    }

    public Integer getStarty() 
    {
        return starty;
    }
    public void setEndx(Integer endx) 
    {
        this.endx = endx;
    }

    public Integer getEndx() 
    {
        return endx;
    }
    public void setEndy(Integer endy) 
    {
        this.endy = endy;
    }

    public Integer getEndy() 
    {
        return endy;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }


    public String getImgPath() {
        return imgPath;
    }

    public void setImgPath(String imgPath) {
        this.imgPath = imgPath;
    }

    public FcRecord() {
    }


    public FcRecord(String imgkey) {
        this.imgkey = imgkey;
    }

    public FcRecord(String imgkey,
                    String content,
                    String taskpath,
                    String pole,
                    Integer cameraid,
                    Integer startx,
                    Integer starty,
                    Integer endx,
                    Integer endy,
                    String componentName,
                    String componentDefect,
                    String defectType,
                    String defectLevel,
                    String STN,
                    double KMV,
                    Long TIM

    ) {
        this.imgkey = imgkey;
        this.content = content;
        this.taskpath = taskpath;
        this.pole = pole;
        this.cameraid = cameraid;
        this.startx = startx;
        this.starty = starty;
        this.endx = endx;
        this.endy = endy;
        this.componentName = componentName;
        this.componentDefect = componentDefect;
        this.defectType = defectType;
        this.defectLevel = defectLevel;
        this.checkDate = DateUtils.getDate();
        this.STN = STN;
        this.KMV = KMV;
        this.TIM = TIM;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("imgkey", getImgkey())
            .append("content", getContent())
            .append("taskpath", getTaskpath())
            .append("pole", getPole())
            .append("cameraid", getCameraid())
            .append("startx", getStartx())
            .append("starty", getStarty())
            .append("endx", getEndx())
            .append("endy", getEndy())
            .toString();
    }

}

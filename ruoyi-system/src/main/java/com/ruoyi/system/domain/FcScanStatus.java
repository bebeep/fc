package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 状态记录对象 fc_scan_status
 * 
 * @author ruoyi
 * @date 2022-05-30
 */
public class FcScanStatus extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** 浏览过的杆号 */
    @Excel(name = "浏览过的杆号")
    private String scanedpoles;

    /** 用户id */
    @Excel(name = "用户id")
    private Long userid;

    /** 当前日期 */
    @Excel(name = "当前日期")
    private String currdate;

    /** 当前任务路径 */
    @Excel(name = "当前任务路径")
    private String currtask;

    /** 开始站区 */
    @Excel(name = "开始站区")
    private String currstartstn;

    /** 结束站区 */
    @Excel(name = "结束站区")
    private String currendstn;

    /** 站区开始id */
    @Excel(name = "站区开始id")
    private String currstartstnid;

    /** 站区结束id */
    @Excel(name = "站区结束id")
    private String currendstnid;

    /** 智能定制-相机分类 */
    @Excel(name = "智能定制-相机分类")
    private String currcameratype;

    /** 当前杆号的页码 */
    @Excel(name = "当前杆号的页码")
    private String currpolespage;

    /** 当前杆号 */
    @Excel(name = "当前杆号")
    private String currpole;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setScanedpoles(String scanedpoles) 
    {
        this.scanedpoles = scanedpoles;
    }

    public String getScanedpoles() 
    {
        return scanedpoles;
    }
    public void setUserid(Long userid)
    {
        this.userid = userid;
    }

    public Long getUserid()
    {
        return userid;
    }
    public void setCurrdate(String currdate) 
    {
        this.currdate = currdate;
    }

    public String getCurrdate() 
    {
        return currdate;
    }
    public void setCurrtask(String currtask) 
    {
        this.currtask = currtask;
    }

    public String getCurrtask() 
    {
        return currtask;
    }
    public void setCurrstartstn(String currstartstn) 
    {
        this.currstartstn = currstartstn;
    }

    public String getCurrstartstn() 
    {
        return currstartstn;
    }
    public void setCurrendstn(String currendstn) 
    {
        this.currendstn = currendstn;
    }

    public String getCurrendstn() 
    {
        return currendstn;
    }
    public void setCurrstartstnid(String currstartstnid)
    {
        this.currstartstnid = currstartstnid;
    }

    public String getCurrstartstnid()
    {
        return currstartstnid;
    }
    public void setCurrendstnid(String currendstnid)
    {
        this.currendstnid = currendstnid;
    }

    public String getCurrendstnid()
    {
        return currendstnid;
    }
    public void setCurrcameratype(String currcameratype) 
    {
        this.currcameratype = currcameratype;
    }

    public String getCurrcameratype() 
    {
        return currcameratype;
    }
    public void setCurrpolespage(String currpolespage) 
    {
        this.currpolespage = currpolespage;
    }

    public String getCurrpolespage() 
    {
        return currpolespage;
    }
    public void setCurrpole(String currpole) 
    {
        this.currpole = currpole;
    }

    public String getCurrpole() 
    {
        return currpole;
    }

    public FcScanStatus() {
    }

    public FcScanStatus(Long userid) {
        this.userid = userid;
    }

    public FcScanStatus( Long userid,String scanedpoles) {
        this.scanedpoles = scanedpoles;
        this.userid = userid;
    }


    public FcScanStatus(
            Long userId,
            String currdate,
            String currtask,
            String currstartstn,
            String currendstn,
            String currstartstnid,
            String currendstnid,
            String currcameratype,
            String currpolespage,
            String currpole) {
        this.userid = userId;
        this.currdate = currdate;
        this.currtask = currtask;
        this.currstartstn = currstartstn;
        this.currendstn = currendstn;
        this.currstartstnid = currstartstnid;
        this.currendstnid = currendstnid;
        this.currcameratype = currcameratype;
        this.currpolespage = currpolespage;
        this.currpole = currpole;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("scanedpoles", getScanedpoles())
            .append("userid", getUserid())
            .append("currdate", getCurrdate())
            .append("currtask", getCurrtask())
            .append("currstartstn", getCurrstartstn())
            .append("currendstn", getCurrendstn())
            .append("currstartstnid", getCurrstartstnid())
            .append("currendstnid", getCurrendstnid())
            .append("currcameratype", getCurrcameratype())
            .append("currpolespage", getCurrpolespage())
            .append("currpole", getCurrpole())
            .toString();
    }
}

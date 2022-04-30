package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 基础数据对象 fc_basetb
 * 
 * @author ruoyi
 * @date 2022-04-19
 */
public class FcBasetb extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** 线路名称 */
    @Excel(name = "线路名称")
    private String linename;

    /** 线路别名 */
    @Excel(name = "线路别名")
    private String linealias;

    /** 行别（前往北京：上行/从北京出发：下行） */
    @Excel(name = "行别", readConverterExp = "前=往北京：上行/从北京出发：下行")
    private String direct;

    /** 站区 */
    @Excel(name = "站区")
    private String stn;

    /** 隧道名称 */
    @Excel(name = "隧道名称")
    private String tunnelname;

    /** 锚段 */
    @Excel(name = "锚段")
    private String maoduan;

    /** 杆号 */
    @Excel(name = "杆号")
    private String pol;

    /** 真实杆号 */
    @Excel(name = "真实杆号")
    private String realpol;

    /** 跨距 */
    @Excel(name = "跨距")
    private Long span;

    /** 车轮脉冲显示的跨距 */
    @Excel(name = "车轮脉冲显示的跨距")
    private Long spanbywheel;

    /** 公里标 */
    @Excel(name = "公里标")
    private Long kmv;

    /** 拉出值 */
    @Excel(name = "拉出值")
    private Long zig;

    /** 导高 */
    @Excel(name = "导高")
    private Long hei;

    /** 结构类型 */
    @Excel(name = "结构类型")
    private String structtype;

    /** 经度 */
    @Excel(name = "经度")
    private String latitude;

    /** 纬度 */
    @Excel(name = "纬度")
    private String longitude;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setLinename(String linename) 
    {
        this.linename = linename;
    }

    public String getLinename() 
    {
        return linename;
    }
    public void setLinealias(String linealias) 
    {
        this.linealias = linealias;
    }

    public String getLinealias() 
    {
        return linealias;
    }
    public void setDirect(String direct) 
    {
        this.direct = direct;
    }

    public String getDirect() 
    {
        return direct;
    }
    public void setStn(String stn) 
    {
        this.stn = stn;
    }

    public String getStn() 
    {
        return stn;
    }
    public void setTunnelname(String tunnelname) 
    {
        this.tunnelname = tunnelname;
    }

    public String getTunnelname() 
    {
        return tunnelname;
    }
    public void setMaoduan(String maoduan) 
    {
        this.maoduan = maoduan;
    }

    public String getMaoduan() 
    {
        return maoduan;
    }
    public void setPol(String pol) 
    {
        this.pol = pol;
    }

    public String getPol() 
    {
        return pol;
    }
    public void setRealpol(String realpol) 
    {
        this.realpol = realpol;
    }

    public String getRealpol() 
    {
        return realpol;
    }
    public void setSpan(Long span) 
    {
        this.span = span;
    }

    public Long getSpan() 
    {
        return span;
    }
    public void setSpanbywheel(Long spanbywheel) 
    {
        this.spanbywheel = spanbywheel;
    }

    public Long getSpanbywheel() 
    {
        return spanbywheel;
    }
    public void setKmv(Long kmv) 
    {
        this.kmv = kmv;
    }

    public Long getKmv() 
    {
        return kmv;
    }
    public void setZig(Long zig) 
    {
        this.zig = zig;
    }

    public Long getZig() 
    {
        return zig;
    }
    public void setHei(Long hei) 
    {
        this.hei = hei;
    }

    public Long getHei() 
    {
        return hei;
    }
    public void setStructtype(String structtype) 
    {
        this.structtype = structtype;
    }

    public String getStructtype() 
    {
        return structtype;
    }
    public void setLatitude(String latitude) 
    {
        this.latitude = latitude;
    }

    public String getLatitude() 
    {
        return latitude;
    }
    public void setLongitude(String longitude) 
    {
        this.longitude = longitude;
    }

    public String getLongitude() 
    {
        return longitude;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("linename", getLinename())
            .append("linealias", getLinealias())
            .append("direct", getDirect())
            .append("stn", getStn())
            .append("tunnelname", getTunnelname())
            .append("maoduan", getMaoduan())
            .append("pol", getPol())
            .append("realpol", getRealpol())
            .append("span", getSpan())
            .append("spanbywheel", getSpanbywheel())
            .append("kmv", getKmv())
            .append("zig", getZig())
            .append("hei", getHei())
            .append("structtype", getStructtype())
            .append("latitude", getLatitude())
            .append("longitude", getLongitude())
            .toString();
    }
}

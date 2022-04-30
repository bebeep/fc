package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 相机分类对象 fc_camera_type
 * 
 * @author ruoyi
 * @date 2022-04-23
 */
public class FcCameraType extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** 分类名称 */
    @Excel(name = "分类名称")
    private String typename;

    /** 是否启用 */
    @Excel(name = "是否启用")
    private Integer isenable;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setTypename(String typename) 
    {
        this.typename = typename;
    }

    public String getTypename() 
    {
        return typename;
    }
    public void setIsenable(Integer isenable) 
    {
        this.isenable = isenable;
    }

    public Integer getIsenable() 
    {
        return isenable;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("typename", getTypename())
            .append("isenable", getIsenable())
            .toString();
    }
}

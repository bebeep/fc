package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 相机对象 fc_camera
 * 
 * @author ruoyi
 * @date 2022-04-23
 */
public class FcCamera extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** 相机名称 */
    @Excel(name = "相机名称")
    private String name;

    /** 相机分类id */
    @Excel(name = "相机分类id")
    private Long typeid;

    /** 相机分类名称 */
    @Excel(name = "相机分类名称")
    private String typeName;

    /**
     * 相机朝向
     * 1正面 2反面 默认0
     */
    private int direct;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setName(String name) 
    {
        this.name = name;
    }

    public String getName() 
    {
        return name;
    }
    public void setTypeid(Long typeid) 
    {
        this.typeid = typeid;
    }

    public Long getTypeid() 
    {
        return typeid;
    }


    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    public int getDirect() {
        return direct;
    }

    public void setDirect(int direct) {
        this.direct = direct;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("name", getName())
            .append("typeid", getTypeid())
            .toString();
    }
}

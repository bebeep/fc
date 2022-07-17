package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 缩略图对象 fc_thumb
 * 
 * @author ruoyi
 * @date 2022-07-15
 */
public class FcThumb extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** 生成的时间 */
    @Excel(name = "生成的时间")
    private String edittime;

    /** db文件路径 */
    @Excel(name = "db文件路径")
    private String filepath;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setEdittime(String edittime) 
    {
        this.edittime = edittime;
    }

    public String getEdittime() 
    {
        return edittime;
    }
    public void setFilepath(String filepath) 
    {
        this.filepath = filepath;
    }

    public String getFilepath() 
    {
        return filepath;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("edittime", getEdittime())
            .append("filepath", getFilepath())
            .toString();
    }
}

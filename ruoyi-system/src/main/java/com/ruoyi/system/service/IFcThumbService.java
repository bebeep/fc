package com.ruoyi.system.service;

import com.ruoyi.system.domain.FcThumb;

/**
 * 缩略图Service接口
 * 
 * @author ruoyi
 * @date 2022-07-15
 */
public interface IFcThumbService 
{
    /**
     * 查询缩略图
     * 
     * @return 缩略图
     */
    public FcThumb selectFcThumbById(String filepath);

    /**
     * 新增缩略图
     * @return 结果
     */
    public int insertFcThumb(String filepath,String time);

}

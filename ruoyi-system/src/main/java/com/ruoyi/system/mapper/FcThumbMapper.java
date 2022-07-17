package com.ruoyi.system.mapper;

import com.ruoyi.system.domain.FcThumb;

/**
 * 缩略图Mapper接口
 * 
 * @author ruoyi
 * @date 2022-07-15
 */
public interface FcThumbMapper 
{
    /**
     * 查询缩略图
     * 
     * @return 缩略图
     */
    public FcThumb selectFcThumbById(String filepath);


    /**
     * 新增缩略图
     * 
     * @param fcThumb 缩略图
     * @return 结果
     */
    public int insertFcThumb(FcThumb fcThumb);

}

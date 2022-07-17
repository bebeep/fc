package com.ruoyi.system.mapper;

import java.util.List;
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
     * @param id 缩略图主键
     * @return 缩略图
     */
    public FcThumb selectFcThumbById(Long id);

    /**
     * 查询缩略图列表
     * 
     * @param fcThumb 缩略图
     * @return 缩略图集合
     */
    public List<FcThumb> selectFcThumbList(FcThumb fcThumb);

    /**
     * 新增缩略图
     * 
     * @param fcThumb 缩略图
     * @return 结果
     */
    public int insertFcThumb(FcThumb fcThumb);

    /**
     * 修改缩略图
     * 
     * @param fcThumb 缩略图
     * @return 结果
     */
    public int updateFcThumb(FcThumb fcThumb);

    /**
     * 删除缩略图
     * 
     * @param id 缩略图主键
     * @return 结果
     */
    public int deleteFcThumbById(Long id);

    /**
     * 批量删除缩略图
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteFcThumbByIds(Long[] ids);
}

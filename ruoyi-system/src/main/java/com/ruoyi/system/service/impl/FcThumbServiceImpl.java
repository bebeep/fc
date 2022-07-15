package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.FcThumbMapper;
import com.ruoyi.system.domain.FcThumb;
import com.ruoyi.system.service.IFcThumbService;

/**
 * 缩略图Service业务层处理
 * 
 * @author ruoyi
 * @date 2022-07-15
 */
@Service
public class FcThumbServiceImpl implements IFcThumbService 
{
    @Autowired
    private FcThumbMapper fcThumbMapper;

    /**
     * 查询缩略图
     * 
     * @param id 缩略图主键
     * @return 缩略图
     */
    @Override
    public FcThumb selectFcThumbById(Long id)
    {
        return fcThumbMapper.selectFcThumbById(id);
    }

    /**
     * 查询缩略图列表
     * 
     * @param fcThumb 缩略图
     * @return 缩略图
     */
    @Override
    public List<FcThumb> selectFcThumbList(FcThumb fcThumb)
    {
        return fcThumbMapper.selectFcThumbList(fcThumb);
    }

    /**
     * 新增缩略图
     * 
     * @param fcThumb 缩略图
     * @return 结果
     */
    @Override
    public int insertFcThumb(FcThumb fcThumb)
    {
        return fcThumbMapper.insertFcThumb(fcThumb);
    }

    /**
     * 修改缩略图
     * 
     * @param fcThumb 缩略图
     * @return 结果
     */
    @Override
    public int updateFcThumb(FcThumb fcThumb)
    {
        return fcThumbMapper.updateFcThumb(fcThumb);
    }

    /**
     * 批量删除缩略图
     * 
     * @param ids 需要删除的缩略图主键
     * @return 结果
     */
    @Override
    public int deleteFcThumbByIds(Long[] ids)
    {
        return fcThumbMapper.deleteFcThumbByIds(ids);
    }

    /**
     * 删除缩略图信息
     * 
     * @param id 缩略图主键
     * @return 结果
     */
    @Override
    public int deleteFcThumbById(Long id)
    {
        return fcThumbMapper.deleteFcThumbById(id);
    }
}

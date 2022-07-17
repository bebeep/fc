package com.ruoyi.system.service.impl;

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
     * @return 缩略图
     */
    @Override
    public FcThumb selectFcThumbById(String filepath)
    {
        return fcThumbMapper.selectFcThumbById(filepath);
    }


    /**
     * 新增缩略图
     * 
     * @return 结果
     */
    @Override
    public int insertFcThumb(String filepath,String time)
    {
        FcThumb fcThumb = new FcThumb();
        if (time == null || time.isEmpty())fcThumb.setEdittime(String.valueOf(System.currentTimeMillis()));
        else fcThumb.setEdittime(time);
        fcThumb.setFilepath(filepath);
        return fcThumbMapper.insertFcThumb(fcThumb);
    }

}

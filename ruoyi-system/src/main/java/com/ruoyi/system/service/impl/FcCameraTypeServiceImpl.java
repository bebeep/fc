package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.FcCameraTypeMapper;
import com.ruoyi.system.domain.FcCameraType;
import com.ruoyi.system.service.IFcCameraTypeService;

/**
 * 相机分类Service业务层处理
 * 
 * @author ruoyi
 * @date 2022-04-23
 */
@Service
public class FcCameraTypeServiceImpl implements IFcCameraTypeService 
{
    @Autowired
    private FcCameraTypeMapper fcCameraTypeMapper;

    /**
     * 查询相机分类
     * 
     * @param id 相机分类主键
     * @return 相机分类
     */
    @Override
    public FcCameraType selectFcCameraTypeById(Long id)
    {
        return fcCameraTypeMapper.selectFcCameraTypeById(id);
    }

    /**
     * 查询相机分类列表
     * 
     * @param fcCameraType 相机分类
     * @return 相机分类
     */
    @Override
    public List<FcCameraType> selectFcCameraTypeList(FcCameraType fcCameraType)
    {
        return fcCameraTypeMapper.selectFcCameraTypeList(fcCameraType);
    }

    /**
     * 新增相机分类
     * 
     * @param fcCameraType 相机分类
     * @return 结果
     */
    @Override
    public int insertFcCameraType(FcCameraType fcCameraType)
    {
        return fcCameraTypeMapper.insertFcCameraType(fcCameraType);
    }

    /**
     * 修改相机分类
     * 
     * @param fcCameraType 相机分类
     * @return 结果
     */
    @Override
    public int updateFcCameraType(FcCameraType fcCameraType)
    {
        return fcCameraTypeMapper.updateFcCameraType(fcCameraType);
    }

    /**
     * 批量删除相机分类
     * 
     * @param ids 需要删除的相机分类主键
     * @return 结果
     */
    @Override
    public int deleteFcCameraTypeByIds(Long[] ids)
    {
        return fcCameraTypeMapper.deleteFcCameraTypeByIds(ids);
    }

    /**
     * 删除相机分类信息
     * 
     * @param id 相机分类主键
     * @return 结果
     */
    @Override
    public int deleteFcCameraTypeById(Long id)
    {
        return fcCameraTypeMapper.deleteFcCameraTypeById(id);
    }
}

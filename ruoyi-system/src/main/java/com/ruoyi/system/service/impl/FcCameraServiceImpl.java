package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.FcCameraMapper;
import com.ruoyi.system.domain.FcCamera;
import com.ruoyi.system.service.IFcCameraService;

/**
 * 相机Service业务层处理
 * 
 * @author ruoyi
 * @date 2022-04-23
 */
@Service
public class FcCameraServiceImpl implements IFcCameraService 
{
    @Autowired
    private FcCameraMapper fcCameraMapper;

    /**
     * 查询相机
     * 
     * @param id 相机主键
     * @return 相机
     */
    @Override
    public FcCamera selectFcCameraById(Long id)
    {
        return fcCameraMapper.selectFcCameraById(id);
    }




    /**
     * 根据分类id查询相机列表
     */
    @Override
    public List<FcCamera> selectFcCameraByTypeId(Long typeId)
    {
        return fcCameraMapper.selectFcCameraByTypeId(typeId);
    }



    /**
     * 查询相机列表
     *
     * @param fcCamera 相机
     * @return 相机
     */
    @Override
    public List<FcCamera> selectFcCameraList(FcCamera fcCamera)
    {
        return fcCameraMapper.selectFcCameraList(fcCamera);
    }

    /**
     * 新增相机
     * 
     * @param fcCamera 相机
     * @return 结果
     */
    @Override
    public int insertFcCamera(FcCamera fcCamera)
    {
        return fcCameraMapper.insertFcCamera(fcCamera);
    }

    /**
     * 修改相机
     * 
     * @param fcCamera 相机
     * @return 结果
     */
    @Override
    public int updateFcCamera(FcCamera fcCamera)
    {
        return fcCameraMapper.updateFcCamera(fcCamera);
    }

    /**
     * 批量删除相机
     * 
     * @param ids 需要删除的相机主键
     * @return 结果
     */
    @Override
    public int deleteFcCameraByIds(Long[] ids)
    {
        return fcCameraMapper.deleteFcCameraByIds(ids);
    }

    /**
     * 删除相机信息
     * 
     * @param id 相机主键
     * @return 结果
     */
    @Override
    public int deleteFcCameraById(Long id)
    {
        return fcCameraMapper.deleteFcCameraById(id);
    }
}

package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.FcCamera;

/**
 * 相机Mapper接口
 * 
 * @author ruoyi
 * @date 2022-04-23
 */
public interface FcCameraMapper 
{
    /**
     * 查询相机
     * 
     * @param id 相机主键
     * @return 相机
     */
    public FcCamera selectFcCameraById(Long id);


    /**
     * 根据相机类型查询相机列表
     * @param id
     * @return
     */
    public List<FcCamera> selectFcCameraByTypeId(Long id);

    /**
     * 查询相机列表
     * 
     * @param fcCamera 相机
     * @return 相机集合
     */
    public List<FcCamera> selectFcCameraList(FcCamera fcCamera);

    /**
     * 新增相机
     * 
     * @param fcCamera 相机
     * @return 结果
     */
    public int insertFcCamera(FcCamera fcCamera);

    /**
     * 修改相机
     * 
     * @param fcCamera 相机
     * @return 结果
     */
    public int updateFcCamera(FcCamera fcCamera);

    /**
     * 删除相机
     * 
     * @param id 相机主键
     * @return 结果
     */
    public int deleteFcCameraById(Long id);

    /**
     * 批量删除相机
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteFcCameraByIds(Long[] ids);
}

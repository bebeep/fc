package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.FcCameraType;

/**
 * 相机分类Mapper接口
 * 
 * @author ruoyi
 * @date 2022-04-23
 */
public interface FcCameraTypeMapper 
{
    /**
     * 查询相机分类
     * 
     * @param id 相机分类主键
     * @return 相机分类
     */
    public FcCameraType selectFcCameraTypeById(Long id);

    /**
     * 查询相机分类列表
     * 
     * @param fcCameraType 相机分类
     * @return 相机分类集合
     */
    public List<FcCameraType> selectFcCameraTypeList(FcCameraType fcCameraType);

    /**
     * 新增相机分类
     * 
     * @param fcCameraType 相机分类
     * @return 结果
     */
    public int insertFcCameraType(FcCameraType fcCameraType);

    /**
     * 修改相机分类
     * 
     * @param fcCameraType 相机分类
     * @return 结果
     */
    public int updateFcCameraType(FcCameraType fcCameraType);

    /**
     * 删除相机分类
     * 
     * @param id 相机分类主键
     * @return 结果
     */
    public int deleteFcCameraTypeById(Long id);

    /**
     * 批量删除相机分类
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteFcCameraTypeByIds(Long[] ids);
}

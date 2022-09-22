package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.FcScanStatus;
import org.apache.ibatis.annotations.Param;

/**
 * 状态记录Mapper接口
 * 
 * @author ruoyi
 * @date 2022-05-30
 */
public interface FcScanStatusMapper 
{
    /**
     * 查询状态记录
     * 
     * @param id 状态记录主键
     * @return 状态记录
     */
    public FcScanStatus selectFcScanStatusById(Long id);

    /**
     * 查询状态记录列表
     * 
     * @param fcScanStatus 状态记录
     * @return 状态记录集合
     */
    public List<FcScanStatus> selectFcScanStatusList(FcScanStatus fcScanStatus);

    /**
     * 新增状态记录
     * 
     * @param fcScanStatus 状态记录
     * @return 结果
     */
    public int insertFcScanStatus(FcScanStatus fcScanStatus);

    /**
     * 修改状态记录
     * 
     * @param fcScanStatus 状态记录
     * @return 结果
     */
    public int updateFcScanStatus(FcScanStatus fcScanStatus);


    public int updateFcScanPoles(@Param(value="userId")String userId, @Param(value="pole")String pole,@Param(value = "currTask") String currTask);

    /**
     * 删除状态记录
     * 
     * @param id 状态记录主键
     * @return 结果
     */
    public int deleteFcScanStatusById(Long id);

    /**
     * 批量删除状态记录
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteFcScanStatusByIds(Long[] ids);
}

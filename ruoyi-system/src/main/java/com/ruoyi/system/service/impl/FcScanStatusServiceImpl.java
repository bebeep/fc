package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.FcScanStatusMapper;
import com.ruoyi.system.domain.FcScanStatus;
import com.ruoyi.system.service.IFcScanStatusService;

/**
 * 状态记录Service业务层处理
 * 
 * @author ruoyi
 * @date 2022-05-30
 */
@Service
public class FcScanStatusServiceImpl implements IFcScanStatusService 
{
    @Autowired
    private FcScanStatusMapper fcScanStatusMapper;

    /**
     * 查询状态记录
     * 
     * @param id 状态记录主键
     * @return 状态记录
     */
    @Override
    public FcScanStatus selectFcScanStatusById(Long id)
    {
        return fcScanStatusMapper.selectFcScanStatusById(id);
    }

    /**
     * 查询状态记录列表
     * 
     * @param fcScanStatus 状态记录
     * @return 状态记录
     */
    @Override
    public List<FcScanStatus> selectFcScanStatusList(FcScanStatus fcScanStatus)
    {
        return fcScanStatusMapper.selectFcScanStatusList(fcScanStatus);
    }

    /**
     * 新增状态记录
     * 
     * @param fcScanStatus 状态记录
     * @return 结果
     */
    @Override
    public int insertFcScanStatus(FcScanStatus fcScanStatus)
    {
        return fcScanStatusMapper.insertFcScanStatus(fcScanStatus);
    }

    /**
     * 修改状态记录
     * 
     * @param fcScanStatus 状态记录
     * @return 结果
     */
    @Override
    public int updateFcScanStatus(FcScanStatus fcScanStatus)
    {
        fcScanStatus.setScanedpoles(","+fcScanStatus.getScanedpoles());
        return fcScanStatusMapper.updateFcScanStatus(fcScanStatus);
    }

    /**
     * 批量删除状态记录
     * 
     * @param ids 需要删除的状态记录主键
     * @return 结果
     */
    @Override
    public int deleteFcScanStatusByIds(Long[] ids)
    {
        return fcScanStatusMapper.deleteFcScanStatusByIds(ids);
    }

    /**
     * 删除状态记录信息
     * 
     * @param id 状态记录主键
     * @return 结果
     */
    @Override
    public int deleteFcScanStatusById(Long id)
    {
        return fcScanStatusMapper.deleteFcScanStatusById(id);
    }
}

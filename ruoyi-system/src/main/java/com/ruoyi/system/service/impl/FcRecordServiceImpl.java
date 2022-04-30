package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.FcRecordMapper;
import com.ruoyi.system.domain.FcRecord;
import com.ruoyi.system.service.IFcRecordService;

/**
 * 缺陷记录Service业务层处理
 * 
 * @author ruoyi
 * @date 2022-04-28
 */
@Service
public class FcRecordServiceImpl implements IFcRecordService 
{
    @Autowired
    private FcRecordMapper fcRecordMapper;

    /**
     * 查询缺陷记录
     * 
     * @param id 缺陷记录主键
     * @return 缺陷记录
     */
    @Override
    public FcRecord selectFcRecordById(Integer id)
    {
        return fcRecordMapper.selectFcRecordById(id);
    }

    /**
     * 查询缺陷记录列表
     * 
     * @param fcRecord 缺陷记录
     * @return 缺陷记录
     */
    @Override
    public List<FcRecord> selectFcRecordList(FcRecord fcRecord)
    {
        return fcRecordMapper.selectFcRecordList(fcRecord);
    }

    /**
     * 新增缺陷记录
     * 
     * @param fcRecord 缺陷记录
     * @return 结果
     */
    @Override
    public int insertFcRecord(FcRecord fcRecord)
    {
        return fcRecordMapper.insertFcRecord(fcRecord);
    }

    /**
     * 修改缺陷记录
     * 
     * @param fcRecord 缺陷记录
     * @return 结果
     */
    @Override
    public int updateFcRecord(FcRecord fcRecord)
    {
        return fcRecordMapper.updateFcRecord(fcRecord);
    }

    /**
     * 批量删除缺陷记录
     * 
     * @param ids 需要删除的缺陷记录主键
     * @return 结果
     */
    @Override
    public int deleteFcRecordByIds(Integer[] ids)
    {
        return fcRecordMapper.deleteFcRecordByIds(ids);
    }

    /**
     * 删除缺陷记录信息
     * 
     * @param id 缺陷记录主键
     * @return 结果
     */
    @Override
    public int deleteFcRecordById(Integer id)
    {
        return fcRecordMapper.deleteFcRecordById(id);
    }
}

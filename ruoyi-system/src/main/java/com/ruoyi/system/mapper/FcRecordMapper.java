package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.FcRecord;

/**
 * 缺陷记录Mapper接口
 * 
 * @author ruoyi
 * @date 2022-04-28
 */
public interface FcRecordMapper 
{
    /**
     * 查询缺陷记录
     * 
     * @param id 缺陷记录主键
     * @return 缺陷记录
     */
    public FcRecord selectFcRecordById(Integer id);

    /**
     * 查询缺陷记录列表
     * 
     * @param fcRecord 缺陷记录
     * @return 缺陷记录集合
     */
    public List<FcRecord> selectFcRecordList(FcRecord fcRecord);

    /**
     * 新增缺陷记录
     * 
     * @param fcRecord 缺陷记录
     * @return 结果
     */
    public int insertFcRecord(FcRecord fcRecord);

    /**
     * 修改缺陷记录
     * 
     * @param fcRecord 缺陷记录
     * @return 结果
     */
    public int updateFcRecord(FcRecord fcRecord);

    public int updateImagePath(FcRecord fcRecord);

    /**
     * 删除缺陷记录
     * 
     * @param id 缺陷记录主键
     * @return 结果
     */
    public int deleteFcRecordById(Integer id);

    /**
     * 批量删除缺陷记录
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteFcRecordByIds(Integer[] ids);
}

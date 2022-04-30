package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.FcBasetb;

/**
 * 基础数据Mapper接口
 * 
 * @author ruoyi
 * @date 2022-04-19
 */
public interface FcBasetbMapper 
{
    /**
     * 查询基础数据
     * 
     * @param id 基础数据主键
     * @return 基础数据
     */
    public FcBasetb selectFcBasetbById(Long id);

    /**
     * 查询基础数据列表
     * 
     * @param fcBasetb 基础数据
     * @return 基础数据集合
     */
    public List<FcBasetb> selectFcBasetbList(FcBasetb fcBasetb);

    /**
     * 新增基础数据
     * 
     * @param fcBasetb 基础数据
     * @return 结果
     */
    public int insertFcBasetb(FcBasetb fcBasetb);

    /**
     * 修改基础数据
     * 
     * @param fcBasetb 基础数据
     * @return 结果
     */
    public int updateFcBasetb(FcBasetb fcBasetb);

    /**
     * 删除基础数据
     * 
     * @param id 基础数据主键
     * @return 结果
     */
    public int deleteFcBasetbById(Long id);

    /**
     * 批量删除基础数据
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteFcBasetbByIds(Long[] ids);
}

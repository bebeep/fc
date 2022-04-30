package com.ruoyi.system.service.impl;

import java.util.List;

import com.ruoyi.common.exception.ServiceException;
import com.ruoyi.common.utils.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.FcBasetbMapper;
import com.ruoyi.system.domain.FcBasetb;
import com.ruoyi.system.service.IFcBasetbService;

/**
 * 基础数据Service业务层处理
 * 
 * @author ruoyi
 * @date 2022-04-19
 */
@Service
public class FcBasetbServiceImpl implements IFcBasetbService
{

    private static final Logger log = LoggerFactory.getLogger(SysUserServiceImpl.class);

    @Autowired
    private FcBasetbMapper fcBasetbMapper;

    /**
     * 查询基础数据
     * 
     * @param id 基础数据主键
     * @return 基础数据
     */
    @Override
    public FcBasetb selectFcBasetbById(Long id)
    {
        return fcBasetbMapper.selectFcBasetbById(id);
    }

    /**
     * 查询基础数据列表
     * 
     * @param fcBasetb 基础数据
     * @return 基础数据
     */
    @Override
    public List<FcBasetb> selectFcBasetbList(FcBasetb fcBasetb)
    {
        return fcBasetbMapper.selectFcBasetbList(fcBasetb);
    }

    /**
     * 新增基础数据
     * 
     * @param fcBasetb 基础数据
     * @return 结果
     */
    @Override
    public int insertFcBasetb(FcBasetb fcBasetb)
    {
        return fcBasetbMapper.insertFcBasetb(fcBasetb);
    }

    /**
     * 修改基础数据
     * 
     * @param fcBasetb 基础数据
     * @return 结果
     */
    @Override
    public int updateFcBasetb(FcBasetb fcBasetb)
    {
        return fcBasetbMapper.updateFcBasetb(fcBasetb);
    }

    /**
     * 批量删除基础数据
     * 
     * @param ids 需要删除的基础数据主键
     * @return 结果
     */
    @Override
    public int deleteFcBasetbByIds(Long[] ids)
    {
        return fcBasetbMapper.deleteFcBasetbByIds(ids);
    }

    /**
     * 删除基础数据信息
     * 
     * @param id 基础数据主键
     * @return 结果
     */
    @Override
    public int deleteFcBasetbById(Long id)
    {
        return fcBasetbMapper.deleteFcBasetbById(id);
    }

    @Override
    public String importData(List<FcBasetb> dataList, Boolean isUpdateSupport, String operName) {
        if (StringUtils.isNull(dataList) || dataList.size() == 0)
        {
            throw new ServiceException("导入数据不能为空！");
        }
        int successNum = 0;
        int failureNum = 0;
        StringBuilder successMsg = new StringBuilder();
        StringBuilder failureMsg = new StringBuilder();
        for (FcBasetb basetb : dataList)
        {
            try
            {
                // 验证是否存在这条数据
                List<FcBasetb> existList = fcBasetbMapper.selectFcBasetbList(basetb);
                if (existList!=null && existList.size()>0){
                    if (isUpdateSupport){//覆盖更新
                        FcBasetb firstData = existList.get(0);
                        basetb.setId(firstData.getId());
                        updateFcBasetb(basetb);
                        successNum++;
                        successMsg.append("<br/>" + basetb.toString() + " 更新成功");
                    }else {
                        failureNum++;
                        failureMsg.append("<br/>" + basetb.toString() + " 已存在");
                    }
                    continue;
                }else {
                    insertFcBasetb(basetb);
                    successNum++;
                    successMsg.append("<br/>" + basetb.toString() + " 导入成功");
                }
            }
            catch (Exception e)
            {
                failureNum++;
                String msg = "<br/>" + basetb.getLinename() + " 导入失败：";
                failureMsg.append(msg + e.getMessage());
                log.error(msg, e);
            }
        }
        if (failureNum > 0)
        {
            failureMsg.insert(0, "抱歉，导入失败！共 " + failureNum + " 条数据格式不正确，错误如下：");
            throw new ServiceException(failureMsg.toString());
        }
        else
        {
            successMsg.insert(0, "恭喜您，数据已全部导入成功！共 " + successNum + " 条，数据如下：");
        }
        return successMsg.toString();
    }
}

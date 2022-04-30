package com.ruoyi.web.controller.fc;

import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.system.domain.FcRecord;
import com.ruoyi.system.service.IFcRecordService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 缺陷记录Controller
 * 
 * @author ruoyi
 * @date 2022-04-28
 */
@RestController
@RequestMapping("/fc/record")
public class FcRecordController extends BaseController
{
    @Autowired
    private IFcRecordService fcRecordService;

    /**
     * 查询缺陷记录列表
     */
    @PreAuthorize("@ss.hasPermi('fc:record:list')")
    @GetMapping("/list")
    public TableDataInfo list(FcRecord fcRecord)
    {
        startPage();
        List<FcRecord> list = fcRecordService.selectFcRecordList(fcRecord);
        return getDataTable(list);
    }

    /**
     * 导出缺陷记录列表
     */
    @PreAuthorize("@ss.hasPermi('fc:record:export')")
    @Log(title = "缺陷记录", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, FcRecord fcRecord)
    {
        List<FcRecord> list = fcRecordService.selectFcRecordList(fcRecord);
        ExcelUtil<FcRecord> util = new ExcelUtil<FcRecord>(FcRecord.class);
        util.exportExcel(response, list, "缺陷记录数据");
    }

    /**
     * 获取缺陷记录详细信息
     */
    @PreAuthorize("@ss.hasPermi('fc:record:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Integer id)
    {
        return AjaxResult.success(fcRecordService.selectFcRecordById(id));
    }

    /**
     * 新增缺陷记录
     */
    @PreAuthorize("@ss.hasPermi('fc:record:add')")
    @Log(title = "缺陷记录", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody FcRecord fcRecord)
    {
        return toAjax(fcRecordService.insertFcRecord(fcRecord));
    }

    /**
     * 修改缺陷记录
     */
    @PreAuthorize("@ss.hasPermi('fc:record:edit')")
    @Log(title = "缺陷记录", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody FcRecord fcRecord)
    {
        return toAjax(fcRecordService.updateFcRecord(fcRecord));
    }

    /**
     * 删除缺陷记录
     */
    @PreAuthorize("@ss.hasPermi('fc:record:remove')")
    @Log(title = "缺陷记录", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Integer[] ids)
    {
        return toAjax(fcRecordService.deleteFcRecordByIds(ids));
    }
}

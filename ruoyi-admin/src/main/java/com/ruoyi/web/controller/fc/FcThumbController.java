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
import com.ruoyi.system.domain.FcThumb;
import com.ruoyi.system.service.IFcThumbService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 缩略图Controller
 * 
 * @author ruoyi
 * @date 2022-07-15
 */
@RestController
@RequestMapping("/fc/thumb")
public class FcThumbController extends BaseController
{
    @Autowired
    private IFcThumbService fcThumbService;

    /**
     * 查询缩略图列表
     */
    @PreAuthorize("@ss.hasPermi('fc:thumb:list')")
    @GetMapping("/list")
    public TableDataInfo list(FcThumb fcThumb)
    {
        startPage();
        List<FcThumb> list = fcThumbService.selectFcThumbList(fcThumb);
        return getDataTable(list);
    }

    /**
     * 导出缩略图列表
     */
    @PreAuthorize("@ss.hasPermi('fc:thumb:export')")
    @Log(title = "缩略图", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, FcThumb fcThumb)
    {
        List<FcThumb> list = fcThumbService.selectFcThumbList(fcThumb);
        ExcelUtil<FcThumb> util = new ExcelUtil<FcThumb>(FcThumb.class);
        util.exportExcel(response, list, "缩略图数据");
    }

    /**
     * 获取缩略图详细信息
     */
    @PreAuthorize("@ss.hasPermi('fc:thumb:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return AjaxResult.success(fcThumbService.selectFcThumbById(id));
    }

    /**
     * 新增缩略图
     */
    @PreAuthorize("@ss.hasPermi('fc:thumb:add')")
    @Log(title = "缩略图", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody FcThumb fcThumb)
    {
        return toAjax(fcThumbService.insertFcThumb(fcThumb));
    }

    /**
     * 修改缩略图
     */
    @PreAuthorize("@ss.hasPermi('fc:thumb:edit')")
    @Log(title = "缩略图", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody FcThumb fcThumb)
    {
        return toAjax(fcThumbService.updateFcThumb(fcThumb));
    }

    /**
     * 删除缩略图
     */
    @PreAuthorize("@ss.hasPermi('fc:thumb:remove')")
    @Log(title = "缩略图", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(fcThumbService.deleteFcThumbByIds(ids));
    }
}

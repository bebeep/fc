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
import com.ruoyi.system.domain.FcCameraType;
import com.ruoyi.system.service.IFcCameraTypeService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 相机分类Controller
 * 
 * @author ruoyi
 * @date 2022-04-23
 */
@RestController
@RequestMapping("/fc/camera_type")
public class FcCameraTypeController extends BaseController
{
    @Autowired
    private IFcCameraTypeService fcCameraTypeService;

    /**
     * 查询相机分类列表
     */
    @PreAuthorize("@ss.hasPermi('fc:camera_type:list')")
    @GetMapping("/list")
    public TableDataInfo list(FcCameraType fcCameraType)
    {
        startPage();
        List<FcCameraType> list = fcCameraTypeService.selectFcCameraTypeList(fcCameraType);
        return getDataTable(list);
    }

    /**
     * 导出相机分类列表
     */
    @PreAuthorize("@ss.hasPermi('fc:camera_type:export')")
    @Log(title = "相机分类", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, FcCameraType fcCameraType)
    {
        List<FcCameraType> list = fcCameraTypeService.selectFcCameraTypeList(fcCameraType);
        ExcelUtil<FcCameraType> util = new ExcelUtil<FcCameraType>(FcCameraType.class);
        util.exportExcel(response, list, "相机分类数据");
    }

    /**
     * 获取相机分类详细信息
     */
    @PreAuthorize("@ss.hasPermi('fc:camera_type:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return AjaxResult.success(fcCameraTypeService.selectFcCameraTypeById(id));
    }

    /**
     * 新增相机分类
     */
    @PreAuthorize("@ss.hasPermi('fc:camera_type:add')")
    @Log(title = "相机分类", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody FcCameraType fcCameraType)
    {
        return toAjax(fcCameraTypeService.insertFcCameraType(fcCameraType));
    }

    /**
     * 修改相机分类
     */
    @PreAuthorize("@ss.hasPermi('fc:camera_type:edit')")
    @Log(title = "相机分类", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody FcCameraType fcCameraType)
    {
        return toAjax(fcCameraTypeService.updateFcCameraType(fcCameraType));
    }

    /**
     * 删除相机分类
     */
    @PreAuthorize("@ss.hasPermi('fc:camera_type:remove')")
    @Log(title = "相机分类", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(fcCameraTypeService.deleteFcCameraTypeByIds(ids));
    }
}

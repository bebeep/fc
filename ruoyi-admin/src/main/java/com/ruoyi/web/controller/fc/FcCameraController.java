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
import com.ruoyi.system.domain.FcCamera;
import com.ruoyi.system.service.IFcCameraService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 相机Controller
 * 
 * @author ruoyi
 * @date 2022-04-23
 */
@RestController
@RequestMapping("/fc/camera")
public class FcCameraController extends BaseController
{
    @Autowired
    private IFcCameraService fcCameraService;

    /**
     * 查询相机列表
     */
    @PreAuthorize("@ss.hasPermi('fc:camera:list')")
    @GetMapping("/list")
    public TableDataInfo list(FcCamera fcCamera)
    {
        startPage();
        List<FcCamera> list = fcCameraService.selectFcCameraList(fcCamera);
        return getDataTable(list);
    }

    /**
     * 导出相机列表
     */
    @PreAuthorize("@ss.hasPermi('fc:camera:export')")
    @Log(title = "相机", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, FcCamera fcCamera)
    {
        List<FcCamera> list = fcCameraService.selectFcCameraList(fcCamera);
        ExcelUtil<FcCamera> util = new ExcelUtil<FcCamera>(FcCamera.class);
        util.exportExcel(response, list, "相机数据");
    }

    /**
     * 获取相机详细信息
     */
    @PreAuthorize("@ss.hasPermi('fc:camera:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return AjaxResult.success(fcCameraService.selectFcCameraById(id));
    }

    /**
     * 新增相机
     */
    @PreAuthorize("@ss.hasPermi('fc:camera:add')")
    @Log(title = "相机", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody FcCamera fcCamera)
    {
        return toAjax(fcCameraService.insertFcCamera(fcCamera));
    }

    /**
     * 修改相机
     */
    @PreAuthorize("@ss.hasPermi('fc:camera:edit')")
    @Log(title = "相机", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody FcCamera fcCamera)
    {
        return toAjax(fcCameraService.updateFcCamera(fcCamera));
    }

    /**
     * 删除相机
     */
    @PreAuthorize("@ss.hasPermi('fc:camera:remove')")
    @Log(title = "相机", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(fcCameraService.deleteFcCameraByIds(ids));
    }
}

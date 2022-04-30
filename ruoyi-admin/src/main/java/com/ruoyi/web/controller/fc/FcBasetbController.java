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
import com.ruoyi.system.domain.FcBasetb;
import com.ruoyi.system.service.IFcBasetbService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;
import org.springframework.web.multipart.MultipartFile;

/**
 * 基础数据Controller
 * 
 * @author ruoyi
 * @date 2022-04-19
 */
@RestController
@RequestMapping("/fc/basetb")
public class FcBasetbController extends BaseController
{
    @Autowired
    private IFcBasetbService fcBasetbService;

    /**
     * 查询基础数据列表
     */
    @PreAuthorize("@ss.hasPermi('fc:basetb:list')")
    @GetMapping("/list")
    public TableDataInfo list(FcBasetb fcBasetb)
    {
        startPage();
        List<FcBasetb> list = fcBasetbService.selectFcBasetbList(fcBasetb);
        return getDataTable(list);
    }

    /**
     * 导出基础数据列表
     */
    @PreAuthorize("@ss.hasPermi('fc:basetb:export')")
    @Log(title = "基础数据导出", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, FcBasetb fcBasetb)
    {
        List<FcBasetb> list = fcBasetbService.selectFcBasetbList(fcBasetb);
        ExcelUtil<FcBasetb> util = new ExcelUtil<FcBasetb>(FcBasetb.class);
        util.exportExcel(response, list, "基础数据");
    }

    /**
     * 导入基础数据列表
     */
    @Log(title = "基础数据导入", businessType = BusinessType.IMPORT)
    @PreAuthorize("@ss.hasPermi('fc:basetb:import')")
    @PostMapping("/importData")
    public AjaxResult importData(MultipartFile file, boolean updateSupport) throws Exception
    {
        ExcelUtil<FcBasetb> util = new ExcelUtil<>(FcBasetb.class);
        List<FcBasetb> dataList = util.importExcel(file.getInputStream());
        String operName = getUsername();
        String message = fcBasetbService.importData(dataList, updateSupport, operName);
        return AjaxResult.success(message);
    }

    @PostMapping("/importTemplate")
    public void importTemplate(HttpServletResponse response)
    {
        ExcelUtil<FcBasetb> util = new ExcelUtil<>(FcBasetb.class);
        util.importTemplateExcel(response, "基础数据");
    }


    /**
     * 获取基础数据详细信息
     */
    @PreAuthorize("@ss.hasPermi('fc:basetb:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return AjaxResult.success(fcBasetbService.selectFcBasetbById(id));
    }

    /**
     * 新增基础数据
     */
    @PreAuthorize("@ss.hasPermi('fc:basetb:add')")
    @Log(title = "基础数据", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody FcBasetb fcBasetb)
    {
        return toAjax(fcBasetbService.insertFcBasetb(fcBasetb));
    }

    /**
     * 修改基础数据
     */
    @PreAuthorize("@ss.hasPermi('fc:basetb:edit')")
    @Log(title = "基础数据", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody FcBasetb fcBasetb)
    {
        return toAjax(fcBasetbService.updateFcBasetb(fcBasetb));
    }

    /**
     * 删除基础数据
     */
    @PreAuthorize("@ss.hasPermi('fc:basetb:remove')")
    @Log(title = "基础数据", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(fcBasetbService.deleteFcBasetbByIds(ids));
    }
}

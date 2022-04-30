<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="线路名称" prop="linename">
        <el-input
          v-model="queryParams.linename"
          placeholder="请输入线路名称"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="线路别名" prop="linealias">
        <el-input
          v-model="queryParams.linealias"
          placeholder="请输入线路别名"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="行别" prop="direct">
        <el-input
          v-model="queryParams.direct"
          placeholder="请输入行别"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="站区" prop="stn">
        <el-input
          v-model="queryParams.stn"
          placeholder="请输入站区"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="隧道名称" prop="tunnelname">
        <el-input
          v-model="queryParams.tunnelname"
          placeholder="请输入隧道名称"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="杆号" prop="pol">
        <el-input
          v-model="queryParams.pol"
          placeholder="请输入杆号"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button
          type="primary"
          plain
          icon="el-icon-plus"
          size="mini"
          @click="handleAdd"
          v-hasPermi="['fc:basetb:add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="el-icon-edit"
          size="mini"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['fc:basetb:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="el-icon-delete"
          size="mini"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['fc:basetb:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="info"
          plain
          icon="el-icon-upload2"
          size="mini"
          @click="handleImport"
          v-hasPermi="['fc:basetb:import']"
        >导入</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['fc:basetb:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="basetbList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="id" align="center" prop="id" />
      <el-table-column label="线路名称" align="center" prop="linename" />
      <el-table-column label="线路别名" align="center" prop="linealias" />
      <el-table-column label="行别" align="center" prop="direct" />
      <el-table-column label="站区" align="center" prop="stn" />
      <el-table-column label="隧道名称" align="center" prop="tunnelname" />
      <el-table-column label="锚段" align="center" prop="maoduan" />
      <el-table-column label="杆号" align="center" prop="pol" />
      <el-table-column label="真实杆号" align="center" prop="realpol" />
      <el-table-column label="跨距" align="center" prop="span" />
      <el-table-column label="脉冲跨距" align="center" prop="spanbywheel" />
      <el-table-column label="公里标" align="center" prop="kmv" />
      <el-table-column label="拉出值" align="center" prop="zig" />
      <el-table-column label="导高" align="center" prop="hei" />
      <el-table-column label="结构类型" align="center" prop="structtype" />
      <el-table-column label="经度" align="center" prop="latitude" />
      <el-table-column label="纬度" align="center" prop="longitude" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['fc:basetb:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['fc:basetb:remove']"
          >删除</el-button>
        </template>
      </el-table-column>
    </el-table>

    <pagination
      v-show="total>0"
      :total="total"
      :page.sync="queryParams.pageNum"
      :limit.sync="queryParams.pageSize"
      @pagination="getList"
    />

    <!-- 添加或修改基础数据对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="线路名称" prop="linename">
          <el-input v-model="form.linename" placeholder="请输入线路名称" />
        </el-form-item>
        <el-form-item label="线路别名" prop="linealias">
          <el-input v-model="form.linealias" placeholder="请输入线路别名" />
        </el-form-item>
        <el-form-item label="行别" prop="direct">
          <el-input v-model="form.direct" placeholder="请输入行别" />
        </el-form-item>
        <el-form-item label="站区" prop="stn">
          <el-input v-model="form.stn" placeholder="请输入站区" />
        </el-form-item>
        <el-form-item label="隧道名称" prop="tunnelname">
          <el-input v-model="form.tunnelname" placeholder="请输入隧道名称" />
        </el-form-item>
        <el-form-item label="锚段" prop="maoduan">
          <el-input v-model="form.maoduan" placeholder="请输入锚段" />
        </el-form-item>
        <el-form-item label="杆号" prop="pol">
          <el-input v-model="form.pol" placeholder="请输入杆号" />
        </el-form-item>
        <el-form-item label="真实杆号" prop="realpol">
          <el-input v-model="form.realpol" placeholder="请输入真实杆号" />
        </el-form-item>
        <el-form-item label="跨距" prop="span">
          <el-input v-model="form.span" placeholder="请输入跨距" />
        </el-form-item>
        <el-form-item label="脉冲跨距" prop="spanbywheel">
          <el-input v-model="form.spanbywheel" placeholder="请输入脉冲跨距" />
        </el-form-item>
        <el-form-item label="公里标" prop="kmv">
          <el-input v-model="form.kmv" placeholder="请输入公里标" />
        </el-form-item>
        <el-form-item label="拉出值" prop="zig">
          <el-input v-model="form.zig" placeholder="请输入拉出值" />
        </el-form-item>
        <el-form-item label="导高" prop="hei">
          <el-input v-model="form.hei" placeholder="请输入导高" />
        </el-form-item>
        <el-form-item label="经度" prop="latitude">
          <el-input v-model="form.latitude" placeholder="请输入经度" />
        </el-form-item>
        <el-form-item label="纬度" prop="longitude">
          <el-input v-model="form.longitude" placeholder="请输入纬度" />
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>


    <!-- 数据导入对话框 -->
    <el-dialog :title="upload.title" :visible.sync="upload.open" width="400px" append-to-body>
      <el-upload
        ref="upload"
        :limit="1"
        accept=".xlsx, .xls"
        :headers="upload.headers"
        :action="upload.url + '?updateSupport=' + upload.updateSupport"
        :disabled="upload.isUploading"
        :on-progress="handleFileUploadProgress"
        :on-success="handleFileSuccess"
        :auto-upload="false"
        drag
      >
        <i class="el-icon-upload"></i>
        <div class="el-upload__text">将文件拖到此处，或<em>点击上传</em></div>
        <div class="el-upload__tip text-center" slot="tip">
          <div class="el-upload__tip" slot="tip">
            <el-checkbox v-model="upload.updateSupport" /> 是否更新已经存在的用户数据
          </div>
          <span>仅允许导入xls、xlsx格式文件。</span>
          <el-link type="primary" :underline="false" style="font-size:12px;vertical-align: baseline;" @click="importTemplate">下载模板</el-link>
        </div>
      </el-upload>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitFileForm">确 定</el-button>
        <el-button @click="upload.open = false">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import { listBasetb, getBasetb, delBasetb, addBasetb, updateBasetb } from "@/api/fc/basetb";
import { getToken } from "@/utils/auth";

export default {
  name: "Basetb",
  data() {
    return {
      // 遮罩层
      loading: true,
      // 选中数组
      ids: [],
      // 非单个禁用
      single: true,
      // 非多个禁用
      multiple: true,
      // 显示搜索条件
      showSearch: true,
      // 总条数
      total: 0,
      // 基础数据表格数据
      basetbList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 数据导入参数
      upload: {
        // 是否显示弹出层
        open: false,
        // 弹出层标题
        title: "",
        // 是否禁用上传
        isUploading: false,
        // 是否更新已经存在的数据
        updateSupport: 0,
        // 设置上传的请求头部
        headers: { Authorization: "Bearer " + getToken() },
        // 上传的地址
        url: process.env.VUE_APP_BASE_API + "/fc/basetb/importData"
      },
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        linename: null,
        linealias: null,
        direct: null,
        stn: null,
        tunnelname: null,
        pol: null,
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
      }
    };
  },
  created() {
    this.getList();
  },
  methods: {
    /** 查询基础数据列表 */
    getList() {
      this.loading = true;
      listBasetb(this.queryParams).then(response => {
        this.basetbList = response.rows;
        this.total = response.total;
        this.loading = false;
      });
    },
    // 取消按钮
    cancel() {
      this.open = false;
      this.reset();
    },
    // 表单重置
    reset() {
      this.form = {
        id: null,
        linename: null,
        linealias: null,
        direct: null,
        stn: null,
        tunnelname: null,
        maoduan: null,
        pol: null,
        realpol: null,
        span: null,
        spanbywheel: null,
        kmv: null,
        zig: null,
        hei: null,
        structtype: null,
        latitude: null,
        longitude: null
      };
      this.resetForm("form");
    },
    /** 搜索按钮操作 */
    handleQuery() {
      this.queryParams.pageNum = 1;
      this.getList();
    },
    /** 重置按钮操作 */
    resetQuery() {
      this.resetForm("queryForm");
      this.handleQuery();
    },
    // 多选框选中数据
    handleSelectionChange(selection) {
      this.ids = selection.map(item => item.id)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加基础数据";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const id = row.id || this.ids
      getBasetb(id).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改基础数据";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.id != null) {
            updateBasetb(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addBasetb(this.form).then(response => {
              this.$modal.msgSuccess("新增成功");
              this.open = false;
              this.getList();
            });
          }
        }
      });
    },
    /** 删除按钮操作 */
    handleDelete(row) {
      const ids = row.id || this.ids;
      this.$modal.confirm('是否确认删除基础数据编号为"' + ids + '"的数据项？').then(function() {
        return delBasetb(ids);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('fc/basetb/export', {
        ...this.queryParams
      }, `basetb_${new Date().getTime()}.xlsx`)
    },
    /** 导入按钮操作 */
    handleImport() {
      this.upload.title = "基础数据导入";
      this.upload.open = true;
    },
    /** 下载模板操作 */
    importTemplate() {
      this.download('fc/basetb/importTemplate', {
      }, `basetb_template_${new Date().getTime()}.xlsx`)
    },
    // 文件上传中处理
    handleFileUploadProgress(event, file, fileList) {
      this.upload.isUploading = true;
    },
    // 文件上传成功处理
    handleFileSuccess(response, file, fileList) {
      this.upload.open = false;
      this.upload.isUploading = false;
      this.$refs.upload.clearFiles();
      this.$alert("<div style='overflow: auto;overflow-x: hidden;max-height: 70vh;padding: 10px 20px 0;'>" + response.msg + "</div>", "导入结果", { dangerouslyUseHTMLString: true });
      this.getList();
    },
    // 提交上传文件
    submitFileForm() {
      this.$refs.upload.submit();
    }
  }
};
</script>

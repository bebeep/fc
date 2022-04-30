import request from '@/utils/request'

// 查询相机分类列表
export function listCamera_type(query) {
  return request({
    url: '/fc/camera_type/list',
    method: 'get',
    params: query
  })
}

// 查询相机分类详细
export function getCamera_type(id) {
  return request({
    url: '/fc/camera_type/' + id,
    method: 'get'
  })
}

// 新增相机分类
export function addCamera_type(data) {
  return request({
    url: '/fc/camera_type',
    method: 'post',
    data: data
  })
}

// 修改相机分类
export function updateCamera_type(data) {
  return request({
    url: '/fc/camera_type',
    method: 'put',
    data: data
  })
}

// 删除相机分类
export function delCamera_type(id) {
  return request({
    url: '/fc/camera_type/' + id,
    method: 'delete'
  })
}

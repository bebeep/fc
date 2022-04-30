import request from '@/utils/request'

// 查询相机列表
export function listCamera(query) {
  return request({
    url: '/fc/camera/list',
    method: 'get',
    params: query
  })
}

// 查询相机详细
export function getCamera(id) {
  return request({
    url: '/fc/camera/' + id,
    method: 'get'
  })
}

// 新增相机
export function addCamera(data) {
  return request({
    url: '/fc/camera',
    method: 'post',
    data: data
  })
}

// 修改相机
export function updateCamera(data) {
  return request({
    url: '/fc/camera',
    method: 'put',
    data: data
  })
}

// 删除相机
export function delCamera(id) {
  return request({
    url: '/fc/camera/' + id,
    method: 'delete'
  })
}


import request from '@/utils/request'

// 查询基础数据列表
export function listBasetb(query) {
  return request({
    url: '/fc/basetb/list',
    method: 'get',
    params: query
  })
}

// 查询基础数据详细
export function getBasetb(id) {
  return request({
    url: '/fc/basetb/' + id,
    method: 'get'
  })
}

// 新增基础数据
export function addBasetb(data) {
  return request({
    url: '/fc/basetb',
    method: 'post',
    data: data
  })
}

// 修改基础数据
export function updateBasetb(data) {
  return request({
    url: '/fc/basetb',
    method: 'put',
    data: data
  })
}

// 删除基础数据
export function delBasetb(id) {
  return request({
    url: '/fc/basetb/' + id,
    method: 'delete'
  })
}

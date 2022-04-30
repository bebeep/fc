import request from '@/utils/request'

// 查询缺陷记录列表
export function listRecord(query) {
  return request({
    url: '/fc/record/list',
    method: 'get',
    params: query
  })
}

// 查询缺陷记录详细
export function getRecord(id) {
  return request({
    url: '/fc/record/' + id,
    method: 'get'
  })
}

// 新增缺陷记录
export function addRecord(data) {
  return request({
    url: '/fc/record',
    method: 'post',
    data: data
  })
}

// 修改缺陷记录
export function updateRecord(data) {
  return request({
    url: '/fc/record',
    method: 'put',
    data: data
  })
}

// 删除缺陷记录
export function delRecord(id) {
  return request({
    url: '/fc/record/' + id,
    method: 'delete'
  })
}

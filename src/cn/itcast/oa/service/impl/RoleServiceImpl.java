package cn.itcast.oa.service.impl;

import org.springframework.stereotype.Service;

import cn.itcast.oa.base.DaoSupportImpl;
import cn.itcast.oa.domain.Role;
import cn.itcast.oa.service.RoleService;

@Service
// @Transactional	//表示对类中的所有方法都有效
public class RoleServiceImpl extends DaoSupportImpl<Role> implements RoleService {

}

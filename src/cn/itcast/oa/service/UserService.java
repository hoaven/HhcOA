package cn.itcast.oa.service;

import java.util.List;

import cn.itcast.oa.base.DaoSupport;
import cn.itcast.oa.domain.User;

public interface UserService extends DaoSupport<User> {

	/**
	 * 验证用户名与密码，如果正确就返回这个用户，否则返回null
	 * 
	 * @param loginName
	 * @param password 明文密码
	 * @return
	 */
	User findByLoginNameAndPassword(String loginName, String password);
	
	List<User> findUserBySex(String sex);
	
	List<User> findUserByAge(Long indexage,Long endage);
	
	List<User> findUserByDegree(String degree);
}

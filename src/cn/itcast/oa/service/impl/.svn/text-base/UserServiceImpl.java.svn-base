package cn.itcast.oa.service.impl;

import java.util.Collections;
import java.util.List;

import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.itcast.oa.base.DaoSupportImpl;
import cn.itcast.oa.domain.User;
import cn.itcast.oa.service.UserService;

@Service	//交给容器管理--自动实例化为bean组件，则父类DaoSupportImpl的私有属性sessionFactory可以被注入
@Transactional
public class UserServiceImpl extends DaoSupportImpl<User> implements UserService {

	@Override
	public void save(User user) {
		// 默认密码是1234
		String md5 = DigestUtils.md5Hex("1234"); // 密码要使用MD5摘要
		user.setPassword(md5);

		// 保存到数据库
		getSession().save(user);
	}

	public User findByLoginNameAndPassword(String loginName, String password) {
		String md5 = DigestUtils.md5Hex(password);
		return (User) getSession().createQuery(//
				"FROM User u WHERE u.loginName=? AND u.password=?")//
				.setParameter(0, loginName)//
				.setParameter(1, md5)// 密码要使用MD5摘要
				.uniqueResult();
	}

	@Override
	public List<User> findUserBySex(String sex) {
		if (sex == null || sex == "") {
			return Collections.EMPTY_LIST;
		}
		return getSession().createQuery(//
				"FROM User u WHERE u.gender = ?")//
				.setParameter(0, sex)
				.list();
	}

	@Override
	public List<User> findUserByAge(Long indexage,Long endage) {
		return getSession().createQuery(//
				"FROM User u WHERE u.age >= ? and u.age <= ?")//
				.setParameter(0, indexage)
				.setParameter(1, endage)
				.list();
	}

	@Override
	public List<User> findUserByDegree(String degree) {
		return getSession().createQuery(//
				"FROM User u WHERE u.degree = ?")//
				.setParameter(0, degree)
				.list();
	}

}

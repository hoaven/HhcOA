package cn.itcast.oa.service;

import java.util.List;

import cn.itcast.oa.base.DaoSupport;
import cn.itcast.oa.domain.Forum;
import cn.itcast.oa.domain.PageBean;
import cn.itcast.oa.domain.Topic;

public interface TopicService extends DaoSupport<Topic> {

	/**
	 * 查询指定版块中的主题列表，排序：最新状态的排到前面，置顶帖在最上面。
	 * 
	 * @param forum
	 * @return
	 */
	List<Topic> findByForum(Forum forum);

	/**
	 * 查询分页的主题列表数据
	 * 
	 * @param pageNum
	 * @param forum
	 * @return
	 */
	@Deprecated
	PageBean getPageBeanByForum(int pageNum, Forum forum);

}

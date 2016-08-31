package cn.itcast.oa.service;

import java.util.List;

import cn.itcast.oa.base.DaoSupport;
import cn.itcast.oa.domain.PageBean;
import cn.itcast.oa.domain.Reply;
import cn.itcast.oa.domain.Topic;

public interface ReplyService extends DaoSupport<Reply> {

	/**
	 * 查询指定主题中的回复列表，排序：最新的回复排到最后面。
	 * 
	 * @param topic
	 * @return
	 */
	List<Reply> findByTopic(Topic topic);

	/**
	 * 查询分页的回复列表数据
	 * 
	 * @param pageNum
	 * @param topic
	 * @return
	 */
	@Deprecated
	PageBean getPageBeanByTopic(int pageNum, Topic topic);

}

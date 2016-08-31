package cn.itcast.oa.view.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import cn.itcast.oa.base.BaseAction;
import cn.itcast.oa.domain.Canteen;
import cn.itcast.oa.domain.User;
import cn.itcast.oa.service.CanteenService;
import cn.itcast.oa.service.DepartmentService;
import cn.itcast.oa.service.ForumService;
import cn.itcast.oa.service.PrivilegeService;
import cn.itcast.oa.service.ReplyService;
import cn.itcast.oa.service.RoleService;
import cn.itcast.oa.service.TopicService;
import cn.itcast.oa.service.UserService;

import com.opensymphony.xwork2.ActionContext;

@Controller
@Scope("prototype")
public class CanteenAction{		//采取id接收数据--不要继承BaseAction(使用model接收)
	@Resource
	protected UserService userService;
	
	@Resource
	protected CanteenService canteenService;
	
	private long userid;
	
	

	public long getUserid() {
		return userid;
	}

	public void setUserid(long userid) {
		this.userid = userid;
	}

	public String findalluser()
	{
		List<User> userlist = userService.findAll();
		ActionContext.getContext().put("userlist", userlist);
		return "usertocanteen";
	}
	
	public String adduser()
	{
		User user = userService.getById(userid);
		
		Canteen canteen = new Canteen();
		
		canteen.setUser(user);
		canteenService.save(canteen);
		return "home";
	}
	
	public String showcount()
	{
		List<Canteen> list = canteenService.findAll();
		if(list!=null)
			ActionContext.getContext().put("canteenusercount", list.size());
		return "showcount";
	}
}

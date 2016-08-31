package cn.itcast.oa.view.action;

import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import cn.itcast.oa.base.ModelDrivenBaseAction;
import cn.itcast.oa.domain.User;

import com.opensymphony.xwork2.ActionContext;

@Controller	//在struts里面class的值可以直接使用roleAction
@Scope("prototype")	//多例--解决线程安全
public class infoAction  extends ModelDrivenBaseAction<User>{

	public String sex() throws Exception {
		//数据放入action上下文中，actionContext本身 就是一个Map
		List<User> manuser = userService.findUserBySex("男");
		List<User> womanuser = userService.findUserBySex("女");
		int manusercount = 0;
		int womanusercount = 0;
		
		if(manuser!=null) {
			manusercount = manuser.size();
		}
		if(womanuser!=null) {
			womanusercount = womanuser.size();
		}
		ActionContext.getContext().put("manuser", manuser);
		ActionContext.getContext().put("womanuser", womanuser);
		ActionContext.getContext().put("manusercount", manusercount);
		ActionContext.getContext().put("womanusercount", womanusercount);
		return "sexlist";
	}
	
	public String age() throws Exception {
		//数据放入action上下文中，actionContext本身 就是一个Map
		List<User> user20 = userService.findUserByAge((long)0, (long)20);
		List<User> user35 = userService.findUserByAge((long)21, (long)35);
		List<User> userelse = userService.findUserByAge((long)36, (long)100);
		int user20count = 0;
		int user35count = 0;
		int userelsecount = 0;
		
		if(user20!=null) {
			user20count = user20.size();
		}
		if(user35!=null) {
			user35count = user35.size();
		}
		if(userelse!=null) {
			userelsecount = userelse.size();
		}
		ActionContext.getContext().put("user20", user20);
		ActionContext.getContext().put("user35", user35);
		ActionContext.getContext().put("userelse", userelse);
		ActionContext.getContext().put("user20count", user20count);
		ActionContext.getContext().put("user35count", user35count);
		ActionContext.getContext().put("userelsecount", userelsecount);
		return "agelist";
	}
	
	public String degree() throws Exception {
		//数据放入action上下文中，actionContext本身 就是一个Map
		List<User> czuser = userService.findUserByDegree("初中");
		List<User> gzuser = userService.findUserByDegree("高中");
		List<User> zzuser = userService.findUserByDegree("专职");
		List<User> bkuser = userService.findUserByDegree("本科");
		List<User> ssuser = userService.findUserByDegree("硕士");
		List<User> bsuser = userService.findUserByDegree("博士");
		int czusercount = 0;
		int gzusercount = 0;
		int zzusercount = 0;
		int bkusercount = 0;
		int ssusercount = 0;
		int bsusercount = 0;
		
		
		if(czuser!=null) {
			czusercount = czuser.size();
		}
		ActionContext.getContext().put("czuser", czuser);
		ActionContext.getContext().put("czusercount", czusercount);
		if(gzuser!=null) {
			gzusercount = gzuser.size();
		}
		ActionContext.getContext().put("gzuser", gzuser);
		ActionContext.getContext().put("gzusercount", gzusercount);
		if(zzuser!=null) {
			zzusercount = zzuser.size();
		}
		ActionContext.getContext().put("zzuser", zzuser);
		ActionContext.getContext().put("zzusercount", zzusercount);
		if(bkuser!=null) {
			bkusercount = bkuser.size();
		}
		ActionContext.getContext().put("bkuser", bkuser);
		ActionContext.getContext().put("bkusercount", bkusercount);
		if(ssuser!=null) {
			ssusercount = ssuser.size();
		}
		ActionContext.getContext().put("ssuser", ssuser);
		ActionContext.getContext().put("ssusercount", ssusercount);
		if(zzuser!=null) {
			bsusercount = bsuser.size();
		}
		ActionContext.getContext().put("zzuser", zzuser);
		ActionContext.getContext().put("bsusercount", bsusercount);
		return "degreelist";
	}
}

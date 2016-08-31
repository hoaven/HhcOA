package cn.itcast.oa.test;

import org.hibernate.SessionFactory;
import org.jbpm.api.ProcessEngine;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class testSpring {

	private ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");


	// 测试ProcessEngine
	@Test
	public void testProcessEngine() throws Exception {
		ProcessEngine processEngine = (ProcessEngine) ac.getBean("processEngine");
		System.out.println(processEngine);
	}
}

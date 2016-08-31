package cn.itcast.oa.cfg;

import org.junit.Test;

public class ConfigurationTest {

	@Test
	public void testGetPageSize() {
		int pageSize = Configuration.getPageSize();
		System.out.println("pageSize = " + pageSize);
	}

}

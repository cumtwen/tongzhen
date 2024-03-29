package org.wyw.pupu.controller;


import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractTransactionalJUnit4SpringContextTests;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)  //使用junit4进行测试  
@ContextConfiguration(locations={"classpath:WEB-INF/applicationContext.xml","classpath:WEB-INF/springmvc-config.xml"})
//@ContextHierarchy({
//@ContextConfiguration(locations={"classpath:WEB-INF/applicationContext.xml"}) ,
//@ContextConfiguration(locations={"classpath:WEB-INF/springmvc-config.xml"})
//})
public class BaseTest extends AbstractTransactionalJUnit4SpringContextTests {

}

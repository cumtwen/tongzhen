package org.wyw.pupu.controller;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;
import org.wyw.pupu.domain.User;
import org.wyw.pupu.service.UserService;

public class UserTest extends BaseTest {

	@Autowired
	private UserService userService;
	
	@Test
	public void userloginTest(){
		User user=userService.login("wyw", "wyw");
		if(user!=null){
			System.out.println("成功登录");
		}else{
			System.out.println("登录失败");
		}
	}
	@Test
	public void userregisterTest(){
		userService.inUser("测试", "123456", "821020776@qq.com", "18205208223", "中国", "我的生日", "1109");
		System.out.println("注册成功");
}
	@Test
	public void userprotectTest(){
		User user=userService.protect("wyw", "我的生日", "1109");
		if(user!=null){
		System.out.println(user.getPassword());
		}else{
			System.out.println("找回密码失败");
		}
}
	@Test
	public void updatepwdTest(){
		Boolean b=userService.updatepwd("wyw", "wyw", "123");
		
		if(b){
			System.out.println("修改成功，请重新登陆！");
		}
		else{
			System.out.println("验证失败，请输入正确密码！");
		}
}
}

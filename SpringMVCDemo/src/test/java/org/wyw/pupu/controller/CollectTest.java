package org.wyw.pupu.controller;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.wyw.pupu.domain.Collect;
import org.wyw.pupu.domain.User;
import org.wyw.pupu.service.CollectService;

public class CollectTest extends BaseTest {

	@Autowired
	private CollectService  collectService;
	
	@Test
	public void collectfindTest(){
		Collect collect=collectService.collectfind(61, 1);
		if(collect!=null){
			System.out.println("已收藏");
		}else{
			System.out.println("未收藏");
		}
	}
	
	@Test
	public void collectgetAllTest(){
		List<Collect> collect_list =collectService.collectgetAll(61);
		System.out.println(collect_list);
	
	}	
	
	@Test
	public void insertcollectTest(){
		collectService.insertcollect(61, 2, "80");
		System.out.println("收藏成功");
}
	
	@Test
	public void delAllcollectTest(){
		collectService.delAllcollect(61);
		System.out.println("清空收藏");
}
	
	@Test
	public void delcollectTest(){
		collectService.delcollect(61,2);
		System.out.println("取消收藏");
}
}

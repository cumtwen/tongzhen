package org.wyw.pupu.controller;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.wyw.pupu.domain.Good;
import org.wyw.pupu.domain.Remark;
import org.wyw.pupu.service.GoodService;

public class GoodTest extends BaseTest {
	@Autowired
	private GoodService  goodService;
	@Test
	public void goodTest(){
		Good good=goodService.show(1);
		if(good!=null){
		System.out.println(good.getName());
		}else{
			System.out.println("无该商品");
		}
	}	
	@Test
	public void goodtypeTest(){
		List<Good> good_list =goodService.typegetAll("shoes");
		System.out.println(good_list);
	
	}	
	
	@Test
	public void goodtype1Test(){
		List<Good> good_list =goodService.type1getAll("clothes1");
		System.out.println(good_list);
	
	}
	@Test
	public void nowgetAllTest(){
		List<Good> hot_list =goodService.nowgetAll("hot");
		System.out.println(hot_list);
	
	}
	
	@Test
	public void remarkgetAllTest(){
		List<Remark> remark_list =goodService.remarkgetAll(1);
		System.out.println(remark_list);
	
	}
}

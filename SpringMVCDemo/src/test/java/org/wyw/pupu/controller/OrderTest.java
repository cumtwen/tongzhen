package org.wyw.pupu.controller;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.wyw.pupu.domain.Order;
import org.wyw.pupu.service.OrderService;

public class OrderTest extends BaseTest{
	@Autowired
	private OrderService  orderService;
	@Test
	public void orderGetTest(){
		Order order=orderService.orderGet(61, 2285);
		if(order!=null){
		System.out.println(order);
	}else{
		System.out.println("无法对该订单评论");
	}	
	}
	
	
	@Test
	public void ordergetAllTest(){
		List<Order> order_list =orderService.ordergetAll(61);
		System.out.println(order_list);
	
	}
	@Test
	public void insertorderTest(){
		orderService.insertorder(61, 10, "50", "待收货", 5, 250, "确认收货");
		System.out.println("购买成功");
}
	
	@Test
	public void updateorderTest(){
		orderService.updateorder(2285, "已收货", "商品评价");
		System.out.println("确认收货");
}
	
	@Test
	public void updategoodTest(){
		orderService.updategood(1, 2);
		System.out.println("更新库存");
}
	
	@Test
	public void updatesaleTest(){
		orderService.updatesale(1, 2);
		System.out.println("更新销售量");
}
	
	@Test
	public void deletecartTest(){
		orderService.deletecart(61, 1);
		System.out.println("更新购物车");
}
	@Test
	public void selectOrerTest(){
		Order order=orderService.selectOrer(61, 2285);
		if(order!=null){
		System.out.println(order);
	}else{
		System.out.println("没有相关订单");
	}
	}	
}

package com.yangyao.backoffice.web.controller;

import com.yangyao.backoffice.model.Customer;
import com.yangyao.backoffice.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping(value = "customer")
public class customerController {
	@Autowired
	private CustomerService customerService;

	@RequestMapping("list")
	public String list(Model model){
		List<Customer> list=customerService.findCustomerList();
		model.addAttribute("list",list);
		return "customer/list";
	}

	@RequestMapping("toAdd")
	public String toAdd(){
		return "customer/add";
	}
	@RequestMapping("toEdit")
	public String toEdit(Long cusid,Model model){
		Customer customer=customerService.findByPrimaryKey(cusid);
		model.addAttribute("data",customer);
		return "customer/edit";
	}

	@RequestMapping("addOrUpdate")
	public String addOrUpdate(Model model,Customer customer){
		int result=0;
		result=customerService.addOrupdateCustomer(customer);
		return "redirect:list.do";
	}

	@RequestMapping("delete")
	public String delete(Model model,Long cusid){
		int result=0;
		result=customerService.deleteCustomer(cusid);
		return "redirect:list.do";
	}
}

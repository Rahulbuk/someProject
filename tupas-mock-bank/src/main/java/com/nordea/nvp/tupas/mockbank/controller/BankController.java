package com.nordea.nvp.tupas.mockbank.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.nordea.nvp.tupas.mockbank.service.BankService;

@Controller
@RequestMapping("/banks")
public class BankController {
	
	@Autowired
	private BankService service;
	
	@RequestMapping(value="/login/{bankId}", method=RequestMethod.GET)
	public String test(@PathVariable String bankId, Model model){
		System.out.println("Testing Application Setup"+bankId);
		model.addAttribute("message", "HI there Hows you?");
		return "showMessage";
	}
	
	@RequestMapping(value="/login/{bankId}", method=RequestMethod.GET)
	public String login(@PathVariable String bankId, Model model){
		System.out.println("Testing Application Setup"+bankId);
		model.addAttribute("message", "HI there Hows you?");
		return "showMessage";
	}
}

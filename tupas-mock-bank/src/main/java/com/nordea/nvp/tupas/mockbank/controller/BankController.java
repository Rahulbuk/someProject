package com.nordea.nvp.tupas.mockbank.controller;

import com.nordea.nvp.tupas.mockbank.models.LoginForm;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import com.nordea.nvp.tupas.mockbank.service.BankService;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

@Controller
public class BankController {
	

	
	@RequestMapping(value="/login/{bankId}", method=RequestMethod.GET)
	public String receive(@PathVariable String bankId, Model model){
		System.out.println("Testing Application Setup" + bankId);
		model.addAttribute("bankId", bankId);
		LoginForm form = new LoginForm();
		form.setBankid(bankId);
		model.addAttribute("loginForm", form);
		//loginForm
		return "loginPage";
	}
	
	@RequestMapping(value="/login/{bankId}", method=RequestMethod.POST)
	public String login(@ModelAttribute("loginForm") LoginForm result, @PathVariable String bankId, HttpServletRequest request ){
		System.out.println(bankId);
		System.out.println(result.getPassword());
		System.out.println(result.getName());
		String redirectUrl = request.getScheme() + "://www.yahoo.com";
		return "redirect:" + redirectUrl;
	}
}

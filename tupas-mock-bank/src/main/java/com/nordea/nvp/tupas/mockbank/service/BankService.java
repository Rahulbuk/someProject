package com.nordea.nvp.tupas.mockbank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;

import com.nordea.nvp.tupas.mockbank.models.Bank;

public class BankService {
	
	private static List<Bank> banks = null;
	
	@Autowired
	private Environment env;
	/*static {
		BankService b = new BankService();
		b.loadBanks();
		//loadBanks();
	}
*/
	private  void loadBanks() {
		Bank b = null;
		System.out.println(env.getProperty("bankIds"));

	}

}

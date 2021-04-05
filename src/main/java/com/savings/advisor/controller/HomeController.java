package com.savings.advisor.controller;

import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.savings.advisor.model.Customer;
import com.savings.advisor.model.New_Customer;

@Controller
@RequestMapping(value="/digitalbanking")
public class HomeController
{
	
	  @RequestMapping({ "/" }) 
	  public String showBase() { 
		  return "index"; }
	 
    
    @RequestMapping({ "/home" })
    public String showHome(ModelMap model, Principal principal) {
    	
		String name = principal.getName();
		model.addAttribute("username", name);
        return "home";
    }
    
    @RequestMapping(value="/login")
    public String showLogin(ModelMap model) {
    	return "login";
    }
    
    @RequestMapping({ "/savingsadvisor" })
    public String savingsAdvisor(final Model theModel, Principal principal) {
        final New_Customer cust = new New_Customer();
        final Customer customer = new Customer();
        String name = principal.getName();
		theModel.addAttribute("username", name);
        theModel.addAttribute("customer", customer);
        theModel.addAttribute("new_customer", (Object)cust);
        return "savings";
    }
    
    @PostMapping({ "/savingsadvisor" })
    public String aftersubmit(@ModelAttribute("new_customer") final New_Customer new_customer,
    		@ModelAttribute("customer") final Customer customer ,final Model theModel,Principal principal) {
        
    	String name = principal.getName();
    	double points=0;
    	if(new_customer.getAge()!=0 && new_customer.getIncome()!=0) {
    	points = this.get_points(new_customer.getAge(), new_customer.getIncome());
		
    	}
    	else if(customer.getLastbeforemonthbl()!=-1 && customer.getLastmonthbl()!=-1) {
    	double balance = (customer.getLastbeforemonthbl()+customer.getLastmonthbl())/2;
    	
    	if(balance<2100)
    		points=0.25;
    	else if(balance>2100 && balance<4100)
    		points=0.50;
    	else if(balance>4100 && balance <40000)
    		points=0.75;
    	else
    		points=1;
    	}
    	theModel.addAttribute("animesh", points);
    	theModel.addAttribute("username", name);
    	return "savings-plan";
    }
    
    
    
    private double get_points(final int age, final int income) {
        double points = 0.0;
        if (age >= 20 && age <= 30) {
            points = 0.25;
        }
        else if (age >= 31 && age <= 40) {
            points = 0.5;
        }
        else if (age >= 41 && age <= 50) {
            points = 0.75;
        }
        else {
            points = 1.0;
        }
        if (income <= 20000) {
            points += 0.25;
        }
        else if (income >= 21000 && income <= 30000) {
            points += 0.5;
        }
        else if (income >= 31000 && income <= 40000) {
            points += 0.75;
        }
        else {
            ++points;
        }
        return points / 2.0;
    }
    
}
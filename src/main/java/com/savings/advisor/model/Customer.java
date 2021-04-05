package com.savings.advisor.model;

public class Customer
{
	private int age;
    private int income;
    private int lastmonthbl;
    private int lastbeforemonthbl;
    
    
	public int getLastmonthbl() {
		return lastmonthbl;
	}

	public void setLastmonthbl(int lastmonthbl) {
		this.lastmonthbl = lastmonthbl;
	}

	public int getLastbeforemonthbl() {
		return lastbeforemonthbl;
	}

	public void setLastbeforemonthbl(int lastbeforemonthbl) {
		this.lastbeforemonthbl = lastbeforemonthbl;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public int getIncome() {
		return income;
	}

	public void setIncome(int income) {
		this.income = income;
	}
    
    
    
}
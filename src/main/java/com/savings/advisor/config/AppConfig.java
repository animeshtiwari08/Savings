package com.savings.advisor.config;


import java.util.concurrent.TimeUnit;

import org.springframework.context.annotation.Bean;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.CacheControl;



@Configuration
@EnableWebMvc
@ComponentScan(basePackages = { "com.savings.advisor" })
public class AppConfig extends WebMvcConfigurerAdapter
{
	  @Bean 
	  public ViewResolver viewResolver() { final InternalResourceViewResolver
	  viewResolver = new InternalResourceViewResolver();
	  viewResolver.setPrefix("/WEB-INF/views/"); viewResolver.setSuffix(".jsp");
	  return (ViewResolver)viewResolver; }
	 
	  
	  @Override
	    public void addResourceHandlers(ResourceHandlerRegistry registry) {
	        registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
	    }
   
}
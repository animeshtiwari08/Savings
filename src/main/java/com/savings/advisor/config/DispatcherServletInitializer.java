package com.savings.advisor.config;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class DispatcherServletInitializer extends AbstractAnnotationConfigDispatcherServletInitializer
{
    protected Class<?>[] getRootConfigClasses() {
        return (Class<?>[])new Class[] { };
    }
    
    protected Class<?>[] getServletConfigClasses() {
        return (Class<?>[])new Class[] { AppConfig.class };
    }
    
    protected String[] getServletMappings() {
        return new String[] { "/" };
    }
}
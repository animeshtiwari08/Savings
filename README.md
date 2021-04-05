This is readme file for Online Job Portal Case Study.

Online Job Portal application is an Web application where the admins will be able to login, create/view/update/delete jobs and view profiles. 
Employees will be able to create/update/delete profiles and view/apply for jobs.


Prototype HTML files path : prototype

Design Document :  design_documents\Online Job Portal Designv1.docx

Test plan & Test cases : design_documents\Test Plan & Test Results.xlsx

SQL Scripts for Setup : setup\setup.sql and setup\sampledata.sql

Application Setup Steps  :
-----------------------------


Update database configuration details in spring config xml
Run maven build to generate war
Deploy war to tomcat server
Setup database tables using setup/setup.sql
Load sample data using setup/sample.sql

Tools & Technologies :

Application Server --
--------------------------------
Tomcat 8

Database --
-------------------------------
MY SQL Server 6.3

Technologies-- 
--------------------------------
Java 1.8,
Spring 4.3.7
Thymeleaf 2.1.4
Hibernate 4.2 
Bootstrap

Build Tool --
---------------------------
Maven

Development tool --
------------------------
Eclipse Luna










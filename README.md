# HR_Analytics
This data consists of HR_Analytics practice and analysis of employees
Tool: SQL Server
You can see important analysis of data based on HR Analytics such as retention, employees performance, their trainings analysis and so on.

Project Overview
This project involves a comprehensive analysis of a US-based HR dataset using MS SQL Server. The goal was to clean raw data, analyze employee demographics, monitor performance trends, and evaluate the return on investment (ROI) for corporate training programs.

Technical Skills Demonstrated
Data Cleaning: Handling duplicates and structuring tables for analysis.

Feature Engineering: Creating status flags and calculating tenure using DATEDIFF and CASE statements.

Advanced SQL: * Window Functions: Using OVER(PARTITION BY...) for percentage and average calculations.

Subqueries: Nesting logic to calculate complex ratios.

Aggregation: Advanced grouping by Department, Gender, and Race.

1. Data Preparation & Engineering
Created a clean dataset (yeni_data) by removing duplicates.

Engineered a Worker_status column to distinguish between active and former employees.

2. Demographic & Diversity Profiling
Gender Balance: Analyzed the distribution of male vs. female employees across departments.

Leadership Diversity: Calculated the gender percentage specifically for Managerial roles to assess inclusivity.

3. Training Cost Efficiency
Budget Allocation: Calculated the total cost per training program and the percentage of budget consumed by each department.

4. Employee Retention & "Burnout" RiskIdentified "At-Risk" employees: Those with high tenure (>2 years) but very low Engagement and Satisfaction scores ($< 2$).Supervisor Performance: Tracked which supervisors have the highest rate of "Failed" training outcomes among their subordinates.

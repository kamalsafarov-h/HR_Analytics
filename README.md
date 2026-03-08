# HR_Analytics_with_SQL
Here is data below
[Messy_HR_Dataset_Detailed.csv](https://github.com/user-attachments/files/25500114/Messy_HR_Dataset_Detailed.csv)
It is my codes:
[SQLQuery1.sql](https://github.com/user-attachments/files/25500112/SQLQuery1.sql)

This data consists of HR_Analytics practice and analysis of employees
Tool: SQL Server
You can see important analysis of data based on HR Analytics such as retention, employees performance, their trainings analysis and so on.

Project Overview:
This project involves a comprehensive analysis of a US-based HR dataset using MS SQL Server. The goal was to clean raw data, analyze employee demographics, monitor performance trends, and evaluate the return on investment (ROI) for corporate training programs.

Technical Skills Demonstrated:
Data Cleaning: Handling duplicates and structuring tables for analysis.
Feature Engineering: Creating status flags and calculating tenure using DATEDIFF and CASE statements.
Advanced SQL: * Window Functions: Using OVER(PARTITION BY...) for percentage and average calculations.
Subqueries: Nesting logic to calculate complex ratios.
Aggregation: Advanced grouping by Department, Gender, and Race.

1. Data Preparation & Engineering:
Created a clean dataset (yeni_data) by removing duplicates.
Engineered a Worker_status column to distinguish between active and former employees.

3. Demographic & Diversity Profiling:
Gender Balance: Analyzed the distribution of male vs. female employees across departments.
Leadership Diversity: Calculated the gender percentage specifically for Managerial roles to assess inclusivity.

5. Training Cost Efficiency:
Budget Allocation: Calculated the total cost per training program and the percentage of budget consumed by each department.

7. Employee Retention & "Burnout" RiskIdentified:
   "At-Risk" employees: Those with high tenure (>2 years) but very low Engagement and Satisfaction scores ($< 2$).Supervisor Performance: Tracked which supervisors have the highest rate of "Failed" training outcomes among their subordinates
   
Results:
<img width="444" height="287" alt="Screenshot 2026-02-23 231408" src="https://github.com/user-attachments/assets/2b5ecd59-d2ba-4a84-9c37-deadf15dc289" />
<img width="401" height="344" alt="Screenshot 2026-02-23 231458" src="https://github.com/user-attachments/assets/afec665b-81b5-480d-97c3-759d6a11ff0f" />
<img width="630" height="304" alt="Screenshot 2026-02-23 231552" src="https://github.com/user-attachments/assets/06c7b758-fd16-4e09-973c-fe9a932e6a14" />
<img width="606" height="284" alt="Screenshot 2026-02-23 234837" src="https://github.com/user-attachments/assets/2a580830-3ae1-4cf6-8e26-64fcbcb93fcb" />
<img width="1128" height="725" alt="Screenshot 2026-02-23 234906" src="https://github.com/user-attachments/assets/da2c2d1e-2eca-4108-9905-88f44cc843c0" />
<img width="1346" height="563" alt="Screenshot 2026-02-23 234929" src="https://github.com/user-attachments/assets/f06018e5-14ea-4c67-8a8b-1d3ed7106f6a" />
<img width="1112" height="585" alt="Screenshot 2026-02-23 235034" src="https://github.com/user-attachments/assets/7aaef050-8d8a-4595-b6fb-e54e660ee82f" />
<img width="1276" height="549" alt="Screenshot 2026-02-23 235102" src="https://github.com/user-attachments/assets/5a1de79b-5098-4c09-ad46-fd24ee1d1764" />
<img width="1143" height="315" alt="Screenshot 2026-02-23 235126" src="https://github.com/user-attachments/assets/a98c50f3-ed02-465d-a63c-664a6cc11aed" />
<img width="1159" height="568" alt="Screenshot 2026-02-23 235201" src="https://github.com/user-attachments/assets/52e5dc3b-c375-4445-8e70-b13d5450d162" />
<img width="1423" height="657" alt="Screenshot 2026-02-23 235323" src="https://github.com/user-attachments/assets/364d2d15-595d-464d-b518-512ff02954b2" />
<img width="802" height="504" alt="Screenshot 2026-02-23 235341" src="https://github.com/user-attachments/assets/3d5bb9c2-e03e-4394-9a3e-7851e2680285" />


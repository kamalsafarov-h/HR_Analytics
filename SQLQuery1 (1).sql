	USE Praktika;
	use Praktika;


--------------------------------

select * into yeni_data
from HR_data
where 1=0;
--- ------------------------------

select * from yeni_data;
insert into yeni_data
select distinct * from HR_data;
-----------------------------------
select count(Employee_ID) from yeni_data
where ExitDate is null;
-------------Count of Employees----------

SELECT GenderCode, COUNT(EMPLOYEE_ID)AS SIZE FROM yeni_data
where ExitDate is  null 
GROUP BY GenderCode; -------employees grouping to gender
SELECT RaceDesc, COUNT(EMPLOYEE_ID)AS SIZE FROM yeni_data
where ExitDate is not null 
GROUP BY RaceDesc
---6CI
SELECT DepartmentType, AVG(Current_Employee_Rating) AS AVERAGE_RATING FROM yeni_data
GROUP BY DepartmentType;
---7CI
SELECT Training_Program_Name, 
        ROUND(SUM(Training_Cost),2) AS COST FROM yeni_data
GROUP BY Training_Program_Name;
---8CI

ALTER TABLE dbo.yeni_data
ADD ISCI_STATUSU2 VARCHAR(50);
SELECT * FROM yeni_data;


UPDATE DBO.yeni_data
SET ISCI_STATUSU2= CASE WHEN ExitDate IS NOT NULL THEN 'ISDEN CIXIB'
    ELSE 'ISLEYIR' END;

alter table yeni_data
drop COLUMN ISCI_STATUSU;
---9CU
SELECT * FROM yeni_data;

SELECT * FROM (SELECT COUNT(EMPLOYEE_ID) AS SAY FROM yeni_data WHERE ISCI_STATUSU2='ISDEN CIXIB') AS T;
SELECT T.SAY 


SELECT AVG((SELECT COUNT(EMPLOYEE_ID) FROM yeni_data
WHERE ISCI_STATUSU2='ISDEN CIXIB')*100/COUNT(EMPLOYEE_ID)) FROM yeni_data
GROUP BY DepartmentType;
---10CU
SELECT Employee_ID,FirstName,LastName,
DATEDIFF(MONTH,StartDate,GETDATE()) AS FERQ,Current_Employee_Rating FROM yeni_data
WHERE DATEDIFF(MONTH,StartDate,GETDATE())>36 AND ISCI_STATUSU2='ISLEYIR' ;

SELECT * FROM yeni_data;
---11CI
SELECT * FROM yeni_data;
SELECT Employee_ID,FirstName,LastName,Current_Employee_Rating,Training_Outcome, avg(Current_Employee_Rating) over() as average_rating FROM yeni_data
WHERE (Training_Outcome='PASSED' OR Training_Outcome='failed') AND (ISCI_STATUSU2='ISLEYIR') ;


---12ci
select * from yeni_data;
select FirstName,LastName,JobFunctionDescription,GenderCode,
avg(training_cost) over(partition by GenderCode) as train_cost from yeni_data
order by JobFunctionDescription desc;
--group by JobFunctionDescription,GenderCode
---13cu
select Employee_ID,FirstName,LastName,DATEDIFF(MONTH,Training_Date,GETDATE()),Engagement_Score,Satisfaction_Score
from yeni_data
where Engagement_Score<2 and Satisfaction_Score<2 and DATEDIFF(MONTH,Training_Date,GETDATE())>24;
---14cu


select distinct * from (select DepartmentType,sum(training_cost) over(partition by DepartmentType) as dep_cost,
sum(training_cost) over(partition by DepartmentType)*100/sum(training_cost) over() as faiz,
sum(training_cost) over() as total_cost   from yeni_data) as t;
---15ci
select * from dbo.yeni_data;
select Supervisor, Employee_ID,FirstName,LastName,count(Employee_ID) 
over (partition by Supervisor) as kesilen_isci
from yeni_data
where Training_Outcome='Failed'
order by 5 desc;
---16ci---

select Supervisor,count(Employee_ID) from yeni_data
where ExitDate is not null and DATEDIFF(MONTH,StartDate,ExitDate)<12
group by Supervisor;
---17ci

select Employee_ID,FirstName,LastName,Training_Cost,Current_Employee_Rating,Training_Program_Name from yeni_data
where Training_Cost>500 and Current_Employee_Rating<=2;
--18CI

select t.DepartmentType,
       t.GenderCode, 
       t.say,sum(t.say) over(partition by t.DepartmentType) as cem,
  concat(cast(t.say*100/sum(t.say) over(partition by t.DepartmentType) as decimal(5,2)),'%') as faiz
    from 
     (SELECT DepartmentType,GenderCode,COUNT(Employee_ID) as say from yeni_data
       where JobFunctionDescription='Manager'
        group by DepartmentType,GenderCode) as t;

---19cu
select * from yeni_data;



















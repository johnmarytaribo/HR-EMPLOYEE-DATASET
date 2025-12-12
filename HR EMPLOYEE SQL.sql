use BlackBoma
go

select * from [HR-Employee-Attrition]

1)Average Age of employees 
select AVG(Age) as averageAge from [HR-Employee-Attrition]

2)Average monthlyincome for each jobRole 
select jobRole, AVG(Monthlyincome) as AVGincome from [HR-Employee-Attrition]
group by JobRole

3)Average yearsAtcompany by Department
select Department, AVG(yearsATcompany) as AVGyears from [HR-Employee-Attrition]
group by Department

 4) JobRole with the highest Average jobsatisfaction
select JobRole, AVG(JobSatisfaction) as avgSatisfaction from [HR-Employee-Attrition]
group by JobRole
order by avgSatisfaction desc;

5)what is the attrition rate by EducationField 
select EducationField,Attrition, count(*) as total from [HR-Employee-Attrition]
group by EducationField,Attrition

6)COUNT Employees with YearsAtcompany > 10
select count(*) as LongStayers from [HR-Employee-Attrition]
where YearsAtCompany >10

7)What is the Minimum and Maximum MonthlyIncome 
select min(MonthlyIncome)as minIncome, max(MonthlyIncome)as maxIncome from [HR-Employee-Attrition]


8)top 10 highest earning employees
select top 10 * from [HR-Employee-Attrition]
order by MonthlyIncome desc;

9)what is the average WorklifeBalance per Department
select Department, avg(WorklifeBalance)as avgWLB from [HR-Employee-Attrition]
group by Department;

10)EMPLOYEES WITH MORE THAN 5YRS SINCE LAST PROMOTION 
select EmployeeNumber,JobRole,YearsSinceLastPromotion from [HR-Employee-Attrition]
where YearsSinceLastPromotion > 5








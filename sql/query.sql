-- Total Patients --
select count(*) as total_patients
from patients
;

-- Total Revenue --
select 
sum(cost) as total_revenue
from visits
;

-- Revenue by Department --
select department, sum(cost) as revenue
from visits
group by department
order by revenue desc
;

-- Most Common Diagnoses --
select diagnosis, count(*) as total_cases
from visits
group by diagnosis 
order by total_cases desc
;

-- Patient Visit Count --
select p.name, count(v.visit_id) as visits
from patients p
left join visits v
on p.patient_id = v.patient_id
group by p.name
;

-- Average Cost per Visit --
select avg(cost) as avg_cost
from visits
;
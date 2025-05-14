CREATE DATABASE COVID_19_Vaccinations;
select *
from vaccinations;
describe vaccinations;
select *
from vaccinations;
select Series_Complete_Pop_pct_agegroup
from vaccinations
where Series_Complete_Pop_pct_agegroup is NULL;
select distinct `Date Administered`
from vaccinations
limit 5;
select `7-day_avg_group_cases_per_100k`,
Administered_Dose1_pct_agegroup,
Series_Complete_Pop_pct_agegroup,
 count(*) as duplicate_count
from vaccinations
group by `7-day_avg_group_cases_per_100k`,
Administered_Dose1_pct_agegroup,
Series_Complete_Pop_pct_agegroup
having count(*) > 1;
WITH CTE as (
SELECT *,
ROW_NUMBER() OVER (PARTITION BY `7-day_avg_group_cases_per_100k`, Administered_Dose1_pct_agegroup, Series_Complete_Pop_pct_agegroup ORDER BY `7-day_avg_group_cases_per_100k`) AS row_num
FROM vaccinations)
DELETE from CTE 
WHERE row_num > 1;
ALTER TABLE vaccinations
ADD COLUMN id INT PRIMARY KEY AUTO_INCREMENT;
select *
from vaccinations;
set @row_number = 0;
update vaccinations
set id = (@row_number := @row_number + 1);
alter table vaccinations
drop column id;
alter table vaccinations
add column id INT; 
select id
from vaccinations;
select id, count(*)
from vaccinations
group by id
having count(*) > 1;
alter table vaccinations
add primary key (id);
select `Date Administered`,
AgeGroupVacc,
`7-day_avg_group_cases_per_100k`,
Administered_Dose1_pct_agegroup,
Series_Complete_Pop_pct_agegroup,
count(*) as duplicate_count
from vaccinations
group by `Date Administered`,
AgeGroupVacc,
`7-day_avg_group_cases_per_100k`,
Administered_Dose1_pct_agegroup,
Series_Complete_Pop_pct_agegroup
having count(*) > 1;
select 	sum(CASE WHEN `Date Administered` IS NULL THEN 1 ELSE 0 END) AS Missing_Date_Administered,
sum(Case WHEN AgeGroupVacc IS NULL THEN 1 ELSE 0 END) AS Missing_GroupVacc,
sum(CASE WHEN `7-day_avg_group_cases_per_100k` IS NULL THEN 1 ELSE 0 END) AS Missing_7day_Avg,
sum(CASE WHEN Administered_Dose1_pct_agegroup IS NULL THEN 1 ELSE 0 END) AS Missing_Administered_Dose1,
sum(CASE WHEN Series_Complete_Pop_pct_agegroup IS NULL THEN 1 ELSE 0 END) AS Missing_Series
from vaccinations;
select *
from vaccinations
where 
`7-day_avg_group_cases_per_100k`< 0
OR Administered_Dose1_pct_agegroup < 0
OR Administered_Dose1_pct_agegroup > 100
OR Series_Complete_Pop_pct_agegroup < 0
OR Series_Complete_Pop_pct_agegroup > 100;
select *
from vaccinations;










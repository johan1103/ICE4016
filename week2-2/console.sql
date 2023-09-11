#‘Corporate’ branch에 해당하는 모든 사원의 이름, 기존 급여, 10% 증가된 급여를 출력하라.
select e.first_name,e.last_name,e.salary,e.salary*1.1 as incresedSalary
from employee e join branch b on e.branch_id = b.branch_id where b.branch_name='Corporate';

#급여가 60,000에서 80,000 사이에 있는 모든 남자 사원의 이름, 급여를 출 력하라.
select e.first_name,e.last_name,e.salary from employee e where e.salary>=60000 and e.salary<=80000;

#모든 사원을 1. branch_id(내림차순) 2. 급여(오름차순)으로 정렬하고, 이름, branch_id, 급여를 출력하라.
select e.first_name,e.last_name,b.branch_id,e.salary from employee e join branch b on e.branch_id = b.branch_id order by b.branch_id desc, e.salary;

#‘FedEx’와 일하는 급여 60,000 이상의 모든 사원의 이름, total_sales를 출 력하라.
select e.first_name,e.last_name,ww.total_sales from employee e join works_with ww on e.emp_id=ww.emp_id join client c
    on ww.client_id = c.client_id where c.client_name='FedEx' and e.salary>=60000;

#사원의 급여의 합, 최고 급여, 최저 급여, 평균 급여를 출력하라.

select SUM(e.salary) as sum_salary,MAX(e.salary) as max_salary,MIN(e.salary) as min_salary,AVG(e.salary) as avg_salary
from employee e;

#회사의 총 사원수를 제시하라.
select COUNT(*) from employee e;

#각 branch별 근무하는 사원의 수를 검색하여 branch 이름과 소속 사원수 를 출력하라
select b.branch_name,COUNT(e.emp_id) as employee_count from branch b join employee e on b.branch_id=e.branch_id group by b.branch_id;
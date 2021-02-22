select e.emp_no, e.last_name, e.first_name, e.sex, s.salary 
from public."Employees" e, 
     public."Salaries" s
where e.emp_no  = s.emp_no; 

select first_name, last_name, hire_date
from public."Employees"
where hire_date between '1986-01-01' and '1986-12-31'
order by hire_date asc;

select d.dept_no "Department Number", 
d.dept_name "Department Name", 
m.emp_no "Manager Employee Number",
e.last_name "Manager Last Name", 
e.first_name "Manager First Name"
from public."Employees" e, public."Departments" d, public."Dept_Manager" m
where e.emp_no = m.emp_no
and d.dept_no = m.dept_no;

select 
m.emp_no "Employee Number",
e.last_name "Last Name", 
e.first_name "First Name",
d.dept_name "Department Name"
from public."Employees" e, public."Departments" d, public."Dept_Emp" m
where e.emp_no = m.emp_no
and d.dept_no = m.dept_no;

select 
e.first_name "First Name", 
e.last_name "Last Name", 
e.sex
from public."Employees" e
where e.first_name = 'Hercules'
and last_name like 'B%';

select e.emp_no, e.last_name, e.first_name, d.dept_name
from public."Employees" e, public."Departments" d, public."Dept_Emp" de
where e.emp_no = de.emp_no
and d.dept_no = de.dept_no
and d.dept_name = 'Sales';

select e.emp_no, e.last_name, e.first_name, d.dept_name
from public."Employees" e, public."Departments" d, public."Dept_Emp" de
where e.emp_no = de.emp_no
and d.dept_no = de.dept_no
and d.dept_name in ('Sales','Development');

select last_name, count(last_name) Last_Name_Frequency
from public."Employees" e
group by last_name
order by 2 desc;


--- List employee number, last & first name, sex, and salary of each employee ---
select 
	emp.emp_no,
	emp.last_name,
	emp.first_name,
	emp.sex,
	sal.salary
	
from
	employees emp
	
left join
	salaries sal
on
	emp.emp_no = sal.emp_no;
	
--- List the first & last name, and hire date of employees hired in 1986 ---
select
	first_name,
	last_name,
	hire_date
	
from
	employees
	
where
	hire_date between '01-01-1986' and '12-31-1986';
	
--- List the manager of each department along with their department number, name, emp. number, last & first name ---
select
	dept.dept_no,
	dept.dept_name,
	man.emp_no,
	emp.last_name,
	emp.first_name
	
from
	departments dept
	
join
	dept_manager man
on
	dept.dept_no = man.dept_no
	
join
	employees emp
on
	man.emp_no = emp.emp_no;
	
--- List the department # for each employee along w/ that employee's emp. #, last & first name, and dept name ---
select
	dept_emp.dept_no,
	dept_emp.emp_no,
	emp.last_name,
	emp.first_name,
	dept.dept_name
	
from
	dept_emp
	
join
	employees emp
on
	dept_emp.emp_no = emp.emp_no
	
join
	departments dept
on
	dept_emp.dept_no = dept.dept_no;
	
--- List first & last names and sex of each employee whose first name is Hercules and whose last name begins with the letter B ---
select
	emp.first_name,
	emp.last_name,
	emp.sex
	
from
	employees emp
	
where
	first_name = 'Hercules'
	and last_name like 'B%';
	
--- List each employee in the Sales dept., including emp. #, last name, first name, dept name ---
select
	emp.emp_no,
	emp.last_name,
	emp.first_name,
	dept.dept_name
	
from
	employees emp
	
join
	dept_emp 
on
	emp.emp_no = dept_emp.emp_no
	
join
	departments dept
on
	dept_emp.dept_no = dept.dept_no
	
where
	dept.dept_name = 'Sales';
	
--- List each employee in the Sales & Development depts., including emp. #, last & first name, and dept. name ---
select
	emp.emp_no,
	emp.last_name,
	emp.first_name,
	dept.dept_name
	
from
	employees emp
	
join
	dept_emp 
on
	emp.emp_no = dept_emp.emp_no
	
join
	departments dept
on
	dept_emp.dept_no = dept.dept_no
	
where
	dept.dept_name in ('Sales','Development');
	
--- List the frequency counts, in descending order, of all the employee surnames ---
select
	last_name,
	namecount
	
from
	(
	select
		last_name,
		count(last_name) as namecount
	
	from
		employees
		
	group by
			last_name
	) a
	
order by
	namecount desc, last_name asc
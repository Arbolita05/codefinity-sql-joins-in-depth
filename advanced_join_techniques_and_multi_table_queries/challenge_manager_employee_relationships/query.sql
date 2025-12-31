-- Write your code here
SELECT e.name as employee_name, m.name as manager_name
FROM employees e LEFT JOIN employees m ON e.manager_id=m.employee_id
CREATE VIEW employee_order_assignments AS
SELECT 
    Employee.first_name,
    Employee.last_name,
    Order_assignment.order_number,
    Order_assignment.completion_status
FROM Order_assignment
INNER JOIN Employee
ON Order_assignment.emp_id = Employee.emp_id;
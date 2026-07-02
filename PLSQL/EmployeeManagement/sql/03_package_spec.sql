CREATE OR REPLACE PACKAGE employee_pkg
AS
    PROCEDURE add_employee(
        p_emp_id IN NUMBER,
        p_emp_name IN VARCHAR2,
        p_emp_dept IN VARCHAR2,
        p_email IN VARCHAR2,
        p_salary IN NUMBER,
        p_joining_date IN DATE
    );
    
    PROCEDURE update_salary(
        p_emp_id IN NUMBER,
        p_new_salary IN NUMBER
    );

    PROCEDURE delete_employee(
        p_emp_id IN NUMBER
    );

    PROCEDURE show_all_employees;


    FUNCTION get_salary(
        p_emp_id IN NUMBER
    ) RETURN NUMBER;

    FUNCTION calculate_bonus(
        p_salary IN NUMBER
    ) RETURN NUMBER;

    FUNCTION employee_exists(
        p_emp_id IN NUMBER
    ) RETURN NUMBER;

END employee_pkg;
/
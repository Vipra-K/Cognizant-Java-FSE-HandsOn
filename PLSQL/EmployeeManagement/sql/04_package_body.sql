CREATE OR REPLACE PACKAGE BODY employee_pkg AS

    PROCEDURE add_employee(
        p_emp_id        IN NUMBER,
        p_emp_name      IN VARCHAR2,
        p_emp_dept    IN VARCHAR2,
        p_email         IN VARCHAR2,
        p_salary        IN NUMBER,
        p_joining_date  IN DATE
    )
    AS
    BEGIN
        INSERT INTO Employee (
            emp_id,
            emp_name,
            emp_dept,
            email,
            salary,
            joining_date
        )
        VALUES (
            p_emp_id,
            p_emp_name,
            p_emp_dept,
            p_email,
            p_salary,
            p_joining_date
        );

        DBMS_OUTPUT.PUT_LINE('Employee Added Successfully.');

    EXCEPTION

        WHEN DUP_VAL_ON_INDEX THEN
            DBMS_OUTPUT.PUT_LINE('Employee ID or Email already exists.');

        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE(SQLERRM);

    END add_employee;



   PROCEDURE update_salary(
        p_emp_id      IN NUMBER,
        p_new_salary  IN NUMBER
    )
    AS
    BEGIN

        UPDATE Employee
        SET salary = p_new_salary 
        WHERE emp_id = p_emp_id;

        IF SQL%ROWCOUNT = 0 THEN
            DBMS_OUTPUT.PUT_LINE('Employee Not Found');
        ELSE
            DBMS_OUTPUT.PUT_LINE('Salary Updated');
        END IF;

    EXCEPTION

        WHEN OTHERS THEN    
            DBMS_OUTPUT.PUT_LINE(SQLERRM);

    END update_salary;


    PROCEDURE delete_employee(
        p_emp_id IN NUMBER
    )
    AS
    BEGIN

        DELETE FROM Employee 
        WHERE emp_id = p_emp_id;

        IF SQL%ROWCOUNT = 0 THEN 
            DBMS_OUTPUT.PUT_LINE('Employee Not Found.');
        ELSE 
            DBMS_OUTPUT.PUT_LINE('Employee Deleted.');
        END IF;

    EXCEPTION

        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE(SQLERRM);

    END delete_employee;




    PROCEDURE show_all_employees
    AS

        CURSOR emp_cursor
        IS
            SELECT * FROM Employee 
            ORDER BY emp_id;

    BEGIN
    
        FOR emp IN emp_cursor LOOP
            DBMS_OUTPUT.PUT_LINE(
                'ID : '|| emp.emp_id ||
                ' | Name : ' || emp.emp_name ||
                ' | Dept : ' || emp.emp_dept ||
                ' | Salary : ' || emp.salary
            );
        END LOOP;

    END show_all_employees;





    FUNCTION get_salary(
        p_emp_id IN NUMBER
    )
    RETURN NUMBER
    AS
        v_salary Employee.salary%TYPE;
        
    BEGIN

        SELECT salary INTO v_salary
        FROM Employee
        WHERE emp_id = p_emp_id;

        RETURN v_salary;

    EXCEPTION

        WHEN NO_DATA_FOUND THEN 
            RETURN -1;

        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE(SQLERRM);
            RETURN -1;

    END get_salary;




    FUNCTION calculate_bonus(
        p_salary IN NUMBER
    )
    RETURN NUMBER
    AS

    v_bonus NUMBER;

    BEGIN

        IF p_salary >=70000 THEN
            v_bonus := p_salary * 0.20;
        
        ELSIF p_salary >= 50000 THEN
            v_bonus := p_salary * 0.15;

        ELSE
            v_bonus := p_salary * 0.10;

        END IF;

        RETURN v_bonus;

    END calculate_bonus;




    FUNCTION employee_exists(
        p_emp_id IN NUMBER
    )
    RETURN NUMBER
    AS
        v_count NUMBER;

    BEGIN

        SELECT COUNT(*)
        INTO v_count 
        FROM Employee
        WHERE emp_id=p_emp_id;

        IF v_count > 0 THEN 
            RETURN 1;
        ELSE
            RETURN 0;
        END IF;
    
    END employee_exists;

END employee_pkg;
/
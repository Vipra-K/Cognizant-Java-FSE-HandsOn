BEGIN
    
    employee_pkg.show_all_employees;
    
END;
/

BEGIN

    employee_pkg.add_employee(
        105,
        'Karan',
        'IT',
        'karan@company.com',
        65000,
        DATE '2025-06-10'
    );

END;
/


BEGIN

    employee_pkg.add_employee(
        101,
        'Test',
        'IT',
        'test@company.com',
        50000,
        SYSDATE
    );

END;
/

BEGIN

    employee_pkg.update_salary(
        105,
        70000
    );

END;
/


BEGIN

    employee_pkg.update_salary(

        999,

        90000

    );

END;
/

BEGIN

    employee_pkg.delete_employee(

        105

    );

END;
/

BEGIN

    employee_pkg.delete_employee(

        999

    );

END;
/

DECLARE

    v_salary NUMBER;

BEGIN

    v_salary := employee_pkg.get_salary(101);

    DBMS_OUTPUT.PUT_LINE(

        'Salary : ' || v_salary

    );

END;
/

DECLARE

    v_salary NUMBER;

BEGIN

    v_salary := employee_pkg.get_salary(999);

    DBMS_OUTPUT.PUT_LINE(v_salary);

END;
/

DECLARE

    v_bonus NUMBER;

BEGIN

    v_bonus := employee_pkg.calculate_bonus(

        60000

    );

    DBMS_OUTPUT.PUT_LINE(

        'Bonus : ' || v_bonus

    );

END;
/

DECLARE

    v_exists NUMBER;

BEGIN

    v_exists := employee_pkg.employee_exists(101);

    DBMS_OUTPUT.PUT_LINE(

        'Exists : ' || v_exists

    );

END;
/

DECLARE

    v_exists NUMBER;

BEGIN

    v_exists := employee_pkg.employee_exists(999);

    DBMS_OUTPUT.PUT_LINE(

        'Exists : ' || v_exists

    );

END;
/
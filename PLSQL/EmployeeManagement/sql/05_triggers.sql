CREATE OR REPLACE TRIGGER trg_set_current_date 

BEFORE INSERT
ON Employee

FOR EACH ROW

BEGIN
    :NEW.created_date := SYSDATE;

END;
/

BEGIN
    
    employee_pkg.show_all_employees;
    
END;
/


CREATE OR REPLACE TRIGGER trg_validate_salary

BEFORE INSERT OR UPDATE
ON Employee

FOR EACH ROW

BEGIN

    IF :NEW.salary < 0 THEN

        RAISE_APPLICATION_ERROR(
            -20001,
            'Salary cannot be negative.'
        );

    END IF;

END;
/


CREATE OR REPLACE TRIGGER trg_salary_audit

AFTER UPDATE OF salary
ON Employee

FOR EACH ROW

BEGIN

    INSERT INTO Employee_Audit(

        emp_id,

        old_salary,

        new_salary,

        action_type,

        action_date

    )

    VALUES(

        :OLD.emp_id,

        :OLD.salary,

        :NEW.salary,

        'UPDATE',

        SYSDATE

    );

END;
/
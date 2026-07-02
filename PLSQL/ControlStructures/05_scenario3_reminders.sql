DECLARE 
    CURSOR loan_record IS 
        SELECT c.Customer_Name,
        l.Loan_Amount,
        l.Due_Date
        FROM Customers c 
        JOIN Loans l
        ON c.Customer_Id = l.Customer_Id
        WHERE l.Due_Date BETWEEN SYSDATE AND SYSDATE+30;
    
BEGIN

    FOR customer_loan IN loan_record
    LOOP
        DBMS_OUTPUT.PUT_LINE('Remainder: Loan '|| customer_loan.Loan_Amount || ' for ' || customer_loan.Customer_Name || 'is due on '|| TO_CHAR(customer_loan.Due_Date, 'DD-MM-YYYY'));

    END LOOP;
END;
/
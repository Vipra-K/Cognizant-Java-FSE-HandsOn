BEGIN 

    FOR customer_record IN (
        SELECT Customer_Id,Customer_Age FROM Customers
    )
    LOOP
        IF customer_record.Customer_Age > 60 THEN
            
            UPDATE Loans
            SET Interest_Rate = Interest_Rate - 1
            WHERE Customer_Id = customer_record.Customer_Id;
        END IF;
    END LOOP;
    COMMIT;
END;
/


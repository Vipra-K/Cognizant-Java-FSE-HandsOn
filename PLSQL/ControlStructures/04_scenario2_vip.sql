DECLARE
    CURSOR Customers_Data IS
        SELECT Customer_Id,Customer_Balance FROM Customers;

BEGIN

    FOR Customer IN Customers_Data 
    LOOP
        IF Customer.Customer_Balance > 10000 THEN

            UPDATE Customers SET
            Is_VIP = 'Y' WHERE Customer_Id = Customer.Customer_ID;
        END IF;
    END LOOP;
    
    COMMIT;

END;
/

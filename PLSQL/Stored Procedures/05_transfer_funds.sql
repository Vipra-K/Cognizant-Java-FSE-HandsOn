CREATE OR REPLACE PROCEDURE TransferFunds(

    p_from_account IN NUMBER,
    p_to_account   IN NUMBER,
    p_amount       IN NUMBER

)
IS

    v_balance NUMBER;

BEGIN

    SELECT BALANCE
    INTO v_balance
    FROM ACCOUNTS
    WHERE ACCOUNT_ID = p_from_account;

    IF v_balance >= p_amount THEN

        UPDATE ACCOUNTS
        SET BALANCE = BALANCE - p_amount
        WHERE ACCOUNT_ID = p_from_account;

        UPDATE ACCOUNTS
        SET BALANCE = BALANCE + p_amount
        WHERE ACCOUNT_ID = p_to_account;

        COMMIT;

        DBMS_OUTPUT.PUT_LINE('Transfer Successful');

    ELSE

        DBMS_OUTPUT.PUT_LINE('Insufficient Balance');

    END IF;

END;
/
BEGIN
    TransferFunds(101,102,5000);
END;
/
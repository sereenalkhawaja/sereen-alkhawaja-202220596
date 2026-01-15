/*Answer for Q1 - Parts 1 & 2 (Variables & Tomorrow) */
DECLARE
    TODAY DATE := SYSDATE;
    TOMORROW TODAY%TYPE;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Hello World');
    TOMORROW := TODAY + 1;
    DBMS_OUTPUT.PUT_LINE('Today is: ' || TODAY);
    DBMS_OUTPUT.PUT_LINE('Tomorrow is: ' || TOMORROW);
END;


/*  Answer for Q1 - Part 3 (Date Format & Last Day) */
DECLARE
    my_date DATE := SYSDATE;
    v_last_day DATE;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Formatted Date: ' || TO_CHAR(my_date, 'Month dd, yyyy'));
    v_last_day := LAST_DAY(my_date);
    DBMS_OUTPUT.PUT_LINE('Last day of this month: ' || v_last_day);
END;


/*Answer for Q1 - Part 4 (Adding 45 Days) */
DECLARE
    my_date DATE := SYSDATE;
    future_date DATE;
    months_diff NUMBER;
BEGIN
    future_date := my_date + 45;
    months_diff := MONTHS_BETWEEN(future_date, my_date);
    DBMS_OUTPUT.PUT_LINE('Future Date (+45 days): ' || future_date);
    DBMS_OUTPUT.PUT_LINE('Months Between: ' || months_diff);
END;

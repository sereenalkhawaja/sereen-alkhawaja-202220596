CREATE TABLE countries (
    country_name VARCHAR2(50),
    median_age NUMBER(6, 2)
);


INSERT INTO countries VALUES ('Japan', 48.4);
INSERT INTO countries VALUES ('Jordan', 23.5);
COMMIT;

DECLARE
   
    v_country_name countries.country_name%TYPE;
    v_median_age   countries.median_age%TYPE;

    CURSOR c_country IS
        SELECT country_name, median_age 
        FROM countries 
        WHERE country_name = 'Japan'; 

BEGIN
   
    OPEN c_country;
    
 
    FETCH c_country INTO v_country_name, v_median_age;
    
  
    IF c_country%FOUND THEN
        DBMS_OUTPUT.PUT_LINE('The median age in ' || v_country_name || ' is ' || v_median_age || '.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Country not found.');
    END IF;
    
   
    CLOSE c_country;
END;
/

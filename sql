--Q1: Question 1
DECLARE
  TODAY DATE := SYSDATE;
  TOMORROW TODAY%TYPE;
BEGIN
  -- Question 2
  DBMS_OUTPUT.PUT_LINE('Hello World');
  TOMORROW := TODAY + 1;
  DBMS_OUTPUT.PUT_LINE('Today: ' || TODAY);
  DBMS_OUTPUT.PUT_LINE('Tomorrow: ' || TOMORROW);

  -- Question 3
  DECLARE
    my_date DATE := TODAY;
    v_last_day DATE;
  BEGIN
    DBMS_OUTPUT.PUT_LINE('Formatted Date: ' || TO_CHAR(my_date, 'Month dd, yyyy'));

    -- Question 4
    v_last_day := LAST_DAY(my_date);
    DBMS_OUTPUT.PUT_LINE('Last day of the month: ' || v_last_day);

    my_date := my_date + 45;
    DBMS_OUTPUT.PUT_LINE('Date after adding 45 days: ' || my_date);

    -- Calculate and display the number of months between the two dates
    DBMS_OUTPUT.PUT_LINE('Number of months between the two dates: ' || MONTHS_BETWEEN(my_date, TODAY));
  END;
END;


-- Q2:Creating the 'countries' table
CREATE TABLE countries (
  country_name VARCHAR2(50),
  median_age NUMBER(6, 2)
);

-- Inserting sample records
INSERT INTO countries VALUES ('Japan', 48.2);
INSERT INTO countries VALUES ('USA', 38.1);
INSERT INTO countries VALUES ('Germany', 44.6);

-- PL/SQL code with %TYPE attribute
DECLARE
  country_name countries.country_name%TYPE;
  median_age countries.median_age%TYPE;
BEGIN
  SELECT country_name, median_age
  INTO country_name, median_age
  FROM countries
  WHERE country_name = 'Japan';

  DBMS_OUTPUT.PUT_LINE('The median age in ' || country_name || ' is ' || median_age || '.');
END;


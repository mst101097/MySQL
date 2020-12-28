-- TODO: Quesiton 1 answer

-- SELECT  * FROM CUSTOMERS LEFT JOIN ORDERS ON
-- ORDERS.CUSTOMER_ID = CUSTOMERS.CUSTOMER_ID WHERE ORDERS.STATUS = "cancelled";


-- SELECT count(CUSTOMERS.CUSTOMER_name) FROM CUSTOMERS LEFT JOIN ORDERS ON
-- ORDERS.CUSTOMER_ID = CUSTOMERS.CUSTOMER_ID WHERE ORDERS.STATUS = "cancelled";

-- TODO: Quesiton 2 answer

-- SELECT * FROM CUSTOMERS LEFT JOIN PAYMENTS ON
-- PAYMENTS.CUSTOMER_ID = CUSTOMERS.CUSTOMER_ID WHERE PAYMENTS.AMOUNT between 5000 and 35000 
-- order by PAYMENTS.AMOUNT;

-- TODO: Quesiton 3 answer

-- insert into employees (employee_id,last_name,first_name,extension,email,office_code,reports_to,job_title)
-- values
-- (15657,"roy","lakshami","x4065","lakshimiroy1@lcomotors.com",4,1088,"salesrop");

-- TODO: Quesiton 4 answer

-- UPDATE CUSTOMERS SET CUSTOMERS.SALES_EMPLOYEE_ID = 15657 WHERE CUSTOMERS.PHONE = 21255;


-- TODO: Quesiton 5 answer

-- SELECT * FROM ORDERS LEFT JOIN ORDERDETAILS ON ORDERDETAILS.order_id = ORDERS.order_id 
-- LEFT JOIN PRODUCTS ON ORDERDETAILS.product_code = PRODUCTS.product_code WHERE
-- PRODUCTS.product_line = "MOTORCYCLES" and ORDERS.STATUS = "SHIPPED";

-- SELECT count(ORDERS.STATUS) FROM ORDERS LEFT JOIN ORDERDETAILS ON ORDERDETAILS.order_id = ORDERS.order_id 
-- LEFT JOIN PRODUCTS ON ORDERDETAILS.product_code = PRODUCTS.product_code WHERE
-- PRODUCTS.product_line = "MOTORCYCLES" and ORDERS.STATUS = "SHIPPED";

-- TODO: Quesiton 6 answer

-- SELECT employees.employee_id,employees.first_name,employees.office_code FROM employees LEFT JOIN
-- offices ON offices.office_code = employees.office_code WHERE offices.city = "SYDNEY";

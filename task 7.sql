select * from customer_view

-- Create a view

CREATE VIEW customer_view AS
SELECT customer_id, customer_name, last_name, age
FROM customer
WHERE state = 'New York';

update VIEW customer_view AS
SET customer_name = UPPER(customer_name),
    age = age + 1
WHERE state = 'New York';

view customer_view

-- Original view
ALTER VIEW customer_view2 AS
SELECT customer_id, customer_name, last_name, age
FROM customer
WHERE age > 90;

DROP VIEW IF EXISTS customer_view2;

-- Alter the view
CREATE VIEW customer_view2 AS
SELECT customer_id, customer_name, last_name, age
FROM customer
WHERE age > 45;

DELETE FROM customer_view2
WHERE age > 44;




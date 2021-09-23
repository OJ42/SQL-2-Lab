UPDATE customer
SET fax = NULL;
SELECT * FROM customer;

UPDATE customer
SET company = 'Self'
WHERE company IS NULL;

SELECT * FROM customer;

UPDATE customer
SET last_name = 'Thompson'
WHERE first_name = 'Julia' AND last_name = 'Barnett ';

SELECT * FROM customer;

UPDATE customer
SET support_rep_id = 4
WHERE email = 'luisrojas@yahoo.cl';
SELECT * FROM customer;

UPDATE track
SET composer = 'The darkness around us'
WHERE genre_id = (SELECT genre_id FROM genre WHERE name = 'Metal')
AND composer IS null;
SELECT * FROM track;
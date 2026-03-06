

CREATE DATABASE Enterprise_Data;

use Enterprise_Data;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    full_name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(20),
    country VARCHAR(50),
    registration_date DATE,
    annual_income DECIMAL(10,2)
);

INSERT INTO customers VALUES
(1, 'Safa Nya', 'safa.nya@gmail.com', '0612345678', 'morocco', '2023-01-10', 12000),
(2, 'Meryem Ali', NULL, '0623456789', 'Morocco', '2023-02-15', 15000),
(3, 'Ali Hassan', 'ali.hassan@gmail.com', '0634567890', 'FRANCE', '2023-03-20', 20000),
(4, 'Youssef Karim', 'youssef@gmail.com', '0645678901', 'france', '2023-03-25', 18000),
(5, 'Salma Idrissi', 'salma.idrissi@gmail.com', NULL, 'Spain', '2023-04-01', 22000),
(6, 'Safa Nya', 'safa.nya@gmail.com', '0612345678', 'morocco', '2023-01-10', 12000), -- doublon
(7, 'Karim Amine', NULL, '0656789012', 'MOROCCO', '2023-05-12', 17000),
(8, 'Nadia Zahra', 'nadia@gmail.com', 'invalid_phone', 'spain', '2023-06-01', 21000),
(9, 'Omar Tazi', 'omar.tazi@gmail.com', '0667890123', 'France', '2023-06-15', -5000), -- revenu négatif
(10, 'Sara Benali', 'sarabenali@gmail', '0678901234', NULL, '2023-07-01', 19000), -- email invalide
(11, 'Hamza El', 'hamza.el@gmail.com', '0689012345', ' Morocco ', '2023-08-10', 25000),
(12, 'Imane Lahlou', 'imane.lahlou@gmail.com', '0690123456', 'FRANCE', '2023-09-01', NULL),
(13, 'Rachid B', 'rachid.b@gmail.com', '0701234567', 'Spain', '2023-09-15', 3000000), -- revenu trop élevé
(14, 'Fatima K', 'fatima.k@gmail.com', '0712345678', 'France', '2023-10-01', 23000),
(15, 'Yassine M', 'yassine.m@gmail.com', NULL, 'spain', '2023-10-20', 21000),
(16, 'Amal H', 'amal.h@gmail.com', '0723456789', 'MOROCCO', '2023-11-05', 24000),
(17, 'Nadia Zahra', 'nadia@gmail.com', 'invalid_phone', 'spain', '2023-06-01', 21000), -- doublon
(18, 'Hassan R', NULL, '0734567890', 'France', '2023-12-01', 26000),
(19, 'Khadija L', 'khadija.l@gmail.com', '0745678901', 'morocco', '2024-01-10', 20000),
(20, 'Bilal A', 'bilal.a@gmail.com', '0756789012', 'FRANCE', '2024-02-01', 28000);


select * from customers



--SELECT
--COUNT(CASE WHEN email IS NULL THEN 1 END) AS Email_NULL,
--COUNT(CASE WHEN phone IS NULL THEN 1 END) AS Phone_NULL,
--COUNT(CASE WHEN country IS NULL THEN 1 END) AS Country_NULL,
--COUNT(CASE WHEN annual_income IS NULL THEN 1 END) AS Income_NULL
--COUNT customers;


--comptage des valeurs manquantes par colonnes 
SELECT
COUNT(*) - COUNT(email) AS Email_NULL,
COUNT(*) - COUNT(phone) AS Phone_NULL,
COUNT(*) - COUNT(country) AS Country_NULL,
COUNT(*) - COUNT(annual_income) AS Income_NULL
FROM customers;



-- Détection des emails en doublon
SELECT email, COUNT(*) AS Nombre_Occurrences
FROM customers
GROUP BY email
HAVING COUNT(*) > 1;

-- Détection customer_id en doublon
SELECT customer_id, COUNT(*) AS Nombre_Occurrences
FROM customers
GROUP BY customer_id
HAVING COUNT(*) > 1;


--voir les formats pays
select country from customers

--voir les pays incohérents

SELECT country, COUNT(*) AS Occurrences
FROM customers
GROUP BY country
ORDER BY Occurrences DESC;


--Corriger les NULL 

UPDATE customers
SET country = 'UNKNOWN'
WHERE country IS NULL;

--Normaliser country (TRIM + UPPER)
select UPPER(country) as country_normalise
from customers

select * from customers 


UPDATE customers
SET country = UPPER(LTRIM(RTRIM(country)))
WHERE country IS NOT NULL;

--update emails nulles 
update customers 
set email = lower(full_name) + '@gmail.com'
where email IS NULL;
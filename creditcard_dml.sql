USE financial_db;
-- Write a query that will display the number of records in the table.
SELECT  Creditcard_company
FROM creditcard
;
-- Write a query that will display a list 
-- of credit cards, 
-- ordered by the highest credit limit

SELECT DISTINCT CreditcardNum,CardHolder, Credit_Limit
FROM creditcard
ORDER BY Credit_Limit DESC LIMIT 1;
SELECT CreditcardNum, Credit_Limit 
FROM creditcard 
WHERE Credit_Limit = (
    SELECT MAX(Credit_Limit) 
    FROM creditcard 
    );

SELECT `CreditcardNum`, `Credit_Limit` 
FROM creditcard
WHERE `Credit_Limit` IN (1200,3000,4500)
ORDER BY `Credit_Limit`;

SELECT CreditcardNum,CardHolder, City
FROM creditcard
WHERE `City` <> 'London';

SELECT COUNT(`CreditcardNum`) as NumberOfMasters
FROM creditcard
WHERE `Creditcard_type` = 'Mastercard';

SELECT City, COUNT(CreditcardNum)
FROM creditcard
GROUP BY `City`;

SELECT CardHolder, COUNT(DISTINCT CreditcardNum) as NumOFCards
FROM creditcard
GROUP BY CardHolder
ORDER BY NumOfCards DESC;

SELECT City, MIN(Credit_Limit) AS Minimum, MAX(Credit_Limit) AS Maximum
FROM creditcard
GROUP BY City;

SELECT City, MIN(Credit_Limit) AS Minimum, MAX(Credit_Limit) AS Maximum,
SUM(Totalspent) AS Total
FROM creditcard
GROUP BY City;

SELECT CardHolder, MIN(Totalspent) AS Minimum, MAX(Totalspent) AS Maximum,
SUM(Totalspent) AS Total, SUM(`Credit_Limit`) AS totalLimit
FROM creditcard
GROUP BY CardHolder,`CreditcardNum`
ORDER BY CardHolder;

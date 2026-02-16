--1. Display all properties in the database
Select *
from PropertyData

--2. Show only the CITY, PROVINCE, and PROPERTY_PRICE columns

select CITY, PROVINCE, PROPERTY_PRICE
from PropertyData

--3. List all distinct provinces in the table.

select DISTINCT province
from PropertyData

--4. Find all properties located in Gauteng
Select *
from PropertyData
where PROVINCE='Gauteng'

--5. Show properties priced under R1,500,000

Select *
from PropertyData
where PROPERTY_PRICE < 1500000
--6. List properties with more than 3 bedrooms.

Select *
from PropertyData
where BEDROOMS>3
--7. Find properties with parking for at least 2 cars.
Select *
from PropertyData
where PARKING >=2

--8. Show properties where the monthly repayment is greater than R25,000
Select *
from PropertyData
where Monthly_Repayment >25000
--9. Show all properties ordered by property price from highest to lowest.
Select *
from PropertyData
ORDER BY PROPERTY_PRICE desc 

--10. List properties ordered by floor size from smallest to largest.
Select *
from PropertyData
ORDER BY FLOOR_SIZE asc
--11. Show Gauteng properties ordered by monthly repayment

Select PROVINCE
from PropertyData
ORDER BY Monthly_Repayment

--12. Find Western Cape properties priced below R3,000,000

Select *
from PropertyData
where PROVINCE='Western Cape' AND PROPERTY_PRICE < 3000000

--13. Show KwaZulu-Natal properties with 3 or more bedrooms
Select PROVINCE
from PropertyData
WHERE PROVINCE='KwaZulu-Natal' AND BEDROOMS >=3

--14. Find properties in Limpopo or Free State ordered by property price.

Select *
from PropertyData
WHERE PROVINCE='Limpopo ' OR PROVINCE='Free State'
ORDER BY PROPERTY_PRICE

--15. Show the 10 most expensive properties.

Select TOP 10 * 
from PropertyData
where PROPERTY_PRICE is not null
order by PROPERTY_PRICE DESC

--16. Show the 5 cheapest properties.
SELECT TOP 5 *
from PropertyData
where PROPERTY_PRICE is not null
order by PROPERTY_PRICE ASC

--17. Show the top 10 properties with the largest floor size.
SELECT TOP 10 *
FROM PropertyData
ORDER BY FLOOR_SIZE DESC

--18. Which province appears to have the highest priced properties?

SELECT PROVINCE
FROM PropertyData
ORDER BY PROPERTY_PRICE DESC

--19.Which cities appear to have the most affordable housing?
SELECT CITY
FROM PropertyData
ORDER BY PROPERTY_PRICE ASC

--20.What minimum income is typically required for properties priced above R4,000,000?
SELECT Min_Gross_Monthly_Income,PROPERTY_PRICE
FROM PropertyData
WHERE PROPERTY_PRICE >4000000


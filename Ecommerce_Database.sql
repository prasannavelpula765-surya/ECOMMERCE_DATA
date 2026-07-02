CREATE TABLE ECOMMERCE_DATA (
OrderID VARCHAR2(20),
Product VARCHAR2(20),
Category  VARCHAR2(20),
Brand VARCHAR2(20),
Platform VARCHAR2(20),
City VARCHAR2(20),
Price  DECIMAL(20,10),
Quantity  DECIMAL(20,10),
TotalAmount  DECIMAL(20,10),
Rating  DECIMAL(20,10),
Reviews DECIMAL (20,10),
OrderDate Date
);
select * from ecommerce_data;
select * from ecommerce_data where orderid = 'ORD100024';
SELECT to_Char(Orderdate,'YYYY')
as year,
count(*)
from ecommerce_data
group by to_char(orderdate,'YYYY');
//  SUM FUNCTION IS USED TO FIND THE TOTAL NUMBER OF ITEM HAS BEEN SOLD
SELECT SUM(QUANTITY) FROM ecommerce_data;
SELECT SUM(QUANTITY) FROM ecommerce_data;
// MAXIMUM FUNCTION IS USED TO FIND THE TOTAL NUMBER OF ITEM HAS BEEN SOLD
SELECT MAX(QUANTITY) FROM ecommerce_data;
// MINIUM FUNCTION IS USED TO FIND THE TOTAL NUMBER OF ITEM HAS BEEN SOLD
SELECT MIN(QUANTITY) FROM ecommerce_data;
//  AVERAGE FUNCTION IS USED TO FIND THE TOTAL NUMBER OF ITEM HAS BEEN SOLD
SELECT AVG(QUANTITY) FROM ecommerce_data;


create index idx_ecom_product on ecommerce_data(product);
select * from ecommerce_data where product='Xiaomi Redmi Note 12'

SELECT OrderID, Product, Price
FROM ECOMMERCE_DATA
ORDER BY Price ASC;

SELECT City, SUM(TotalAmount) AS TotalSales
FROM ECOMMERCE_DATA
GROUP BY City;

-- Find products with price greater than the average price
SELECT Product, Price
FROM ECOMMERCE_DATA
WHERE Price > (SELECT AVG(Price) FROM ECOMMERCE_DATA);

-- Bad: selects everything
SELECT * FROM ECOMMERCE_DATA;

-- Good: selects only required columns
SELECT OrderID, Product, Price FROM ECOMMERCE_DATA;
CREATE INDEX idx_city ON ECOMMERCE_DATA(City);
CREATE INDEX idx_orderdate ON ECOMMERCE_DATA(OrderDate);

SELECT OrderID, Product, Price
FROM ECOMMERCE_DATA
WHERE City = 'Bengaluru';
select * from ecommerce_data where orderdate between '22-06-2024' and '11-11-2024';





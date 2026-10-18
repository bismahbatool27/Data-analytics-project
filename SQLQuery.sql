create database Order_Dataset
use Order_Dataset

SELECT *
FROM Orders;


-- Highest TotalPrice first

SELECT *
FROM Orders
ORDER BY TotalPrice DESC;


-- COUNT ORDERS BY PRODUCT

SELECT 
    Product,
    COUNT(*) AS TotalOrders
FROM Orders
GROUP BY Product;


--TOTAL QUANTITY SOLD BY PRODUCT

SELECT 
    Product,
    SUM(Quantity) AS TotalQuantity
FROM Orders
GROUP BY Product;


-- TOTAL SALES BY PRODUCT

SELECT 
    Product,
    SUM(TotalPrice) AS TotalSales
FROM Orders
GROUP BY Product;


-- ORDERS BY PAYMENT METHOD

SELECT 
    PaymentMethod,
    COUNT(*) AS TotalOrders
FROM Orders
GROUP BY PaymentMethod;


-- ORDERS BY ORDER STATUS

SELECT 
    OrderStatus,
    COUNT(*) AS TotalOrders
FROM Orders
GROUP BY OrderStatus;


-- ORDERS BY REFERRAL SOURCE

SELECT 
    ReferralSource,
    COUNT(*) AS TotalOrders
FROM Orders
GROUP BY ReferralSource;

-- ORDERS BY COUPON CODE

SELECT 
    CouponCode,
    COUNT(*) AS TotalOrders
FROM Orders
GROUP BY CouponCode;


-- Highest sales first

SELECT 
    Product,
    SUM(TotalPrice) AS TotalSales
FROM Orders
GROUP BY Product
ORDER BY TotalSales DESC;


-- PRODUCTS WITH MORE THAN 10 ORDERS

SELECT 
    Product,
    COUNT(*) AS TotalOrders
FROM Orders
GROUP BY Product
HAVING COUNT(*) > 10
ORDER BY TotalOrders DESC;

-- OVERALL SUMMARY

SELECT 
    COUNT(*) AS TotalOrders,
    SUM(Quantity) AS TotalQuantity,
    SUM(TotalPrice) AS TotalSales,
    AVG(TotalPrice) AS AverageOrderValue
FROM Orders;
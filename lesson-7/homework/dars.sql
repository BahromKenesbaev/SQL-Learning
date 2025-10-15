-- Easy Level Answers

-- Minimum (MIN) price of a product
SELECT MIN(Price) AS MinPrice
FROM Products;

-- Maximum (MAX) Salary
SELECT MAX(Salary) AS MaxSalary
FROM Employees;

-- Count the number of rows in Customers table
SELECT COUNT(*) AS TotalCustomers
FROM Customers;

-- Count unique product categories
SELECT COUNT(DISTINCT Category) AS UniqueCategories
FROM Products;

-- Total sales amount for product with id = 7
SELECT SUM(SaleAmount) AS TotalSalesForProduct7
FROM Sales
WHERE ProductID = 7;

-- Average age of employees
SELECT AVG(Age) AS AvgEmployeeAge
FROM Employees;

-- Count number of employees in each department
SELECT DepartmentName, COUNT(*) AS EmployeeCount
FROM Employees
GROUP BY DepartmentName;

-- Minimum and maximum price grouped by category
SELECT Category,
       MIN(Price) AS MinPrice,
       MAX(Price) AS MaxPrice
FROM Products
GROUP BY Category;

-- Total sales per customer
SELECT CustomerID, SUM(SaleAmount) AS TotalSales
FROM Sales
GROUP BY CustomerID;

-- Departments having more than 5 employees
SELECT DepartmentName, COUNT(*) AS EmployeeCount
FROM Employees
GROUP BY DepartmentName
HAVING COUNT(*) > 5;


-- Medium Level Answers

-- Department-wise average salary (AVG)
SELECT DepartmentName,
       AVG(Salary) AS AvgSalary
FROM Employees
GROUP BY DepartmentName;

-- Find the second highest salary
SELECT MAX(Salary) AS SecondHighestSalary
FROM Employees
WHERE Salary < (SELECT MAX(Salary) FROM Employees);

-- List customers who made more than 3 purchases
SELECT CustomerID, COUNT(*) AS PurchaseCount
FROM Sales
GROUP BY CustomerID
HAVING COUNT(*) > 3;

-- Find employees whose salary is above the company average
SELECT *
FROM Employees
WHERE Salary > (SELECT AVG(Salary) FROM Employees);

-- Find total revenue per category
SELECT p.Category,
       SUM(s.SaleAmount) AS TotalRevenue
FROM Sales s
JOIN Products p ON s.ProductID = p.ProductID
GROUP BY p.Category;

-- Show top 3 highest-priced products
SELECT *
FROM Products
ORDER BY Price DESC
LIMIT 3;

-- Find employees whose name starts and ends with same letter
SELECT *
FROM Employees
WHERE LOWER(LEFT(Name, 1)) = LOWER(RIGHT(Name, 1));

-- Find employees working in departments starting with ‘S’
SELECT *
FROM Employees
WHERE DepartmentName LIKE 'S%';

-- List employees hired in 2022
SELECT *
FROM Employees
WHERE YEAR(HireDate) = 2022;


-- Hard Level Answers

-- Find the 3rd highest salary
SELECT DISTINCT Salary
FROM Employees e1
WHERE 2 = (
    SELECT COUNT(DISTINCT e2.Salary)
    FROM Employees e2
    WHERE e2.Salary > e1.Salary
);

--Find departments where total salary > 100000
SELECT DepartmentName,
       SUM(Salary) AS TotalDeptSalary
FROM Employees
GROUP BY DepartmentName
HAVING SUM(Salary) > 100000;

-- Find products never sold
SELECT p.*
FROM Products p
LEFT JOIN Sales s ON p.ProductID = s.ProductID
WHERE s.ProductID IS NULL;

-- Find customers who bought all categories
SELECT CustomerID
FROM Sales s
JOIN Products p ON s.ProductID = p.ProductID
GROUP BY CustomerID
HAVING COUNT(DISTINCT p.Category) = (
    SELECT COUNT(DISTINCT Category) FROM Products
);

-- Find employees with the same salary
SELECT Salary, COUNT(*) AS EmployeeCount
FROM Employees
GROUP BY Salary
HAVING COUNT(*) > 1;

-- Find customers who haven’t made any purchase
SELECT c.*
FROM Customers c
LEFT JOIN Sales s ON c.CustomerID = s.CustomerID
WHERE s.CustomerID IS NULL;

-- Find top-selling product (highest total sales)
SELECT TOP 1 p.ProductName, SUM(s.SaleAmount) AS TotalSales
FROM Sales s
JOIN Products p ON s.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY TotalSales DESC;

-- Find top-selling product (highest total sales)
SELECT TOP 1 p.ProductName, SUM(s.SaleAmount) AS TotalSales
FROM Sales s
JOIN Products p ON s.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY TotalSales DESC;

-- Find average sale per customer
SELECT CustomerID,
       AVG(SaleAmount) AS AvgSalePerCustomer
FROM Sales
GROUP BY CustomerID;

-- Find employee hired most recently
SELECT *
FROM Employees
WHERE HireDate = (SELECT MAX(HireDate) FROM Employees);

-- Find customers who spent above average
SELECT CustomerID, SUM(SaleAmount) AS TotalSpent
FROM Sales
GROUP BY CustomerID
HAVING SUM(SaleAmount) > (
    SELECT AVG(TotalCustomer)
    FROM (
        SELECT SUM(SaleAmount) AS TotalCustomer
        FROM Sales
        GROUP BY CustomerID
    ) AS avg_tbl
);



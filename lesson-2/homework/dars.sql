-- Basic-Level Tasks (10)
-- 1.
CREATE TABLE Employees (EmpID INT, Name VARCHAR(50), Salary DECIMAL(10,2))

--2.
INSERT INTO Employees (EmpID, Name, Salary) VALUES
(1, 'Alice', 5000)

INSERT INTO Employees (EmpID, Name, Salary) VALUES
(2, 'Bob', 6000)

INSERT INTO Employees (EmpID, Name, Salary) VALUES
  (3, 'Carol', 5500),
  (4, 'David', 6500)

  --3. Update:
  UPDATE Employees SET Salary = 7000 WHERE EmpID = 1
  
  --4. Delete:
  DELETE FROM Employees WHERE EmpID = 2

  /*5. DELETE vs TRUNCATE vs DROP — qisqacha farqlari:

DELETE — jadvaldan ma’lumotlarni shart bilan (WHERE) yoki barcha yozuvlarni (agar WHERE bo‘lmasa) o‘chirish uchun ishlatiladi. Har bir satr uchun transaction logga yozuv bo‘ladi, shuning uchun katta jadvalda asta‑asta ishlashi mumkin.

TRUNCATE — barcha yozuvlarni tezda o‘chiradi, lekin strukturani qoldiradi. Truncate odatda minimal log bilan ishlaydi va jadvalni bo‘sh holga keltiradi. Ammo TRUNCATE WHERE bilan ishlamaydi.

DROP — jadvalni butunlay o‘chiradi, ya’ni struktura + ma’lumotlar ham yo‘qoladi. Jadvalga bog‘langan constraint’lar, index’lar ham yo‘qoladi.
*/

--6. 
ALTER TABLE Employees
ALTER COLUMN Name VARCHAR(100)

--7. 
ALTER TABLE Employees
ADD Department VARCHAR(50)

--8. 
ALTER TABLE Employees
ALTER COLUMN Salary FLOAT

--9. 
CREATE TABLE Departments (DepartmentID INT PRIMARY KEY, DepartmentName VARCHAR(50))

--10. 
TRUNCATE TABLE Employees


-- Intermediate-Level Tasks (6)

--11.
INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
  (1, 'HR'),
  (2, 'IT'),
  (3, 'Finance'),
  (4, 'Marketing'),
  (5, 'Sales')

  --12. 
  UPDATE Employees SET Department = 'Management' WHERE Salary > 5000

  --13. 
  TRUNCATE TABLE Employees

  --14. 
  ALTER TABLE Employees DROP COLUMN Department

  --15. 
  EXEC sp_rename 'Employees', 'StaffMembers'

  --16. 
  DROP TABLE Departments


 Advanced-Level Tasks (9)

--17.
  CREATE TABLE Products (ProductID INT PRIMARY KEY, ProductName VARCHAR(100), Category VARCHAR(50), Price DECIMAL(10,2), Description VARCHAR(255))
   
--18.

ALTER TABLE Products ADD CONSTRAINT CHK_Price_Positive CHECK (Price > 0)

--19. 
ALTER TABLE Products ADD StockQuantity INT DEFAULT 50

--20.
EXEC sp_rename 'Products.Category', 'ProductCategory', 'COLUMN'

--21.
INSERT INTO Products (ProductID, ProductName, ProductCategory, Price, Description, StockQuantity) VALUES
  (1, 'Product A', 'Category1', 100, 'Desc A', DEFAULT),
  (2, 'Product B', 'Category2', 250, 'Desc B', DEFAULT),
  (3, 'Product C', 'Category1', 75, 'Desc C', DEFAULT),
  (4, 'Product D', 'Category3', 300, 'Desc D', DEFAULT),
  (5, 'Product E', 'Category2', 150, 'Desc E', DEFAULT)

  --22.
 SELECT * INTO Products_Backup FROM Products

 --23.
 EXEC sp_rename 'Products', 'Inventory'

 --24. 
 ALTER TABLE Inventory ALTER COLUMN Price FLOAT

 --25.
 
CREATE TABLE Inventory_New (ProductCode INT IDENTITY(1000, 5) PRIMARY KEY, ProductID INT, ProductName VARCHAR(100), ProductCategory VARCHAR(50), Price FLOAT, 
Description VARCHAR(255), StockQuantity INT)

INSERT INTO Inventory_New (ProductID, ProductName, ProductCategory, Price, Description, StockQuantity)
SELECT ProductID, ProductName, ProductCategory, Price, Description, StockQuantity FROM Inventory

DROP TABLE Inventory

EXEC sp_rename 'Inventory_New', 'Inventory'











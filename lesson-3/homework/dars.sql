-- Easy-Level Tasks (10)
/*
1. Define and explain the purpose of BULK INSERT in SQL Server

BULK INSERT — bu SQL Server’ga tashqi fayldan (odatda .csv, .txt) katta hajmdagi ma’lumotlarni jadvalga tezda yuklash uchun ishlatiladigan buyruqdir.
*/

BULK INSERT dbo.TableName
FROM 'C:\Path\To\File.csv'
WITH (
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2
)

-- 2. List four file formats that can be imported into SQL Server

/* 
SQL Server quyidagi fayl formatlaridan ma’lumot yuklay oladi:

.CSV — Comma-Separated Values

.TXT — Plain Text files

.XML — Extensible Markup Language

.JSON — JavaScript Object Notation
*/

-- 3. Create a table Products

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Price DECIMAL(10,2)
)

-- 4. Insert three records into the Products table

INSERT INTO Products (ProductID, ProductName, Price)
VALUES
(1, 'Laptop', 1200.00),
(2, 'Mouse', 25.99),
(3, 'Keyboard', 45.50);

/*
5. Explain the difference between NULL and NOT NULL

NULL — ustundagi qiymat noma’lum yoki mavjud emas degani. Bu qiymat bo‘sh degani, lekin 0 yoki ʼʼ emas.

NOT NULL — bu ustun har doim qiymatga ega bo‘lishi shart, bo‘sh (NULL) bo‘lishiga ruxsat berilmaydi.
*/

-- 6. Add a UNIQUE constraint to the ProductName column

ALTER TABLE Products
ADD CONSTRAINT UQ_ProductName UNIQUE (ProductName);

/*
7. Write a comment in a SQL query explaining its purpose
 
-- bu bir qatordan iborat komment

/* ... */ bu ko‘p qatorlik komment
*/

-- 8. Add CategoryID column to the Products table

ALTER TABLE Products
ADD CategoryID INT

-- 9. Create a table Categories

CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(50) UNIQUE
)

/*
10. Explain the purpose of the IDENTITY column in SQL Server

IDENTITY ustuni — bu avtomatik tarzda o‘sib boradigan raqam bilan to‘ldiriladigan ustundir.
*/


-- 11. Use BULK INSERT to import data from a text file into the Products table
BULK INSERT Products
FROM 'C:\Data\products.txt'
WITH (
    FIELDTERMINATOR = ',',  -- Har bir ustun ',' bilan ajratilgan
    ROWTERMINATOR = '\n',   -- Har bir qator yangi qator bilan ajralgan
    FIRSTROW = 2            -- Fayldagi birinchi qator sarlavha bo‘lsa
)

-- 12. Create a FOREIGN KEY in the Products table that references the Categories table
ALTER TABLE Products
ADD CONSTRAINT FK_Products_Categories
FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)

--13. PRIMARY KEY asosiy identifikator sifatida ishlatiladi, UNIQUE esa boshqa ustunlarda ham unikal qiymatlar talab qilingan holatlarda ishlatiladi.

--14. Add a CHECK constraint to the Products table ensuring Price > 0 

ALTER TABLE Products
ADD CONSTRAINT CHK_Price_Positive
CHECK (Price > 0);

--15. Modify the Products table to add a column Stock (INT, NOT NULL)

ALTER TABLE Products
ADD Stock INT NOT NULL DEFAULT 0

--16. Use the ISNULL function to replace NULL values in Price column with 0

SELECT ProductName, ISNULL(Price, 0) AS Price
FROM Products

/* 
17. Describe the purpose and usage of FOREIGN KEY constraints in SQL Server

FOREIGN KEY — bu ma'lumotlar integraligini (to‘g‘riligini) ta’minlaydigan cheklov bo‘lib, bir jadvaldagi ustun qiymatlari boshqa jadvaldagi ustun qiymatlari bilan mos kelishini talab qiladi.

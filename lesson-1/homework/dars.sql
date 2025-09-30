-- Easy
/*
1. Define the following terms:

Data – Ma’lumotlar; bu raqamlar, matn, sanalar kabi axborotlar bo‘lib, ularni tahlil qilish yoki saqlash uchun ishlatiladi.

Database – Ma’lumotlar bazasi; bu ma’lumotlarni tartibli saqlash, boshqarish va izlash uchun ishlatiladigan tizim.

Relational Database – Aloqador ma’lumotlar bazasi; bunda ma’lumotlar bir nechta jadvalda saqlanadi va ular orasida munosabat (relationship) mavjud.

Table – Jadval; bu ma’lumotlar bazasidagi asosiy tuzilma bo‘lib, qator (row) va ustun (column)lardan iborat.



2. List five key features of SQL Server:

High Performance – Katta hajmdagi ma’lumotlar bilan tez ishlay oladi.

Data Security – Kuchli xavfsizlik mexanizmlari (logins, roles, permissions).

Backup and Restore – Ma’lumotlarni zaxiralash va tiklash imkoniyati.

Stored Procedures and Triggers – Murakkab biznes mantiqlarini avtomatlashtirish imkoniyati.

Scalability – Kichikdan katta tizimlargacha ishlata olish mumkin.


3. What are the different authentication modes?

Windows Authentication – Tizim foydalanuvchisiga asoslangan xavfsizlik.

SQL Server Authentication – Maxsus SQL login va parol orqali kirish.

*/


-- Medium 

-- 4. Create a new database in SSMS named SchoolDB.
Create database SchoolDB

-- 5. Write and execute a query to create a table called Students with columns: StudentID (INT, PRIMARY KEY), Name (VARCHAR(50)), Age (INT).
create table Students (StudentID INT PRIMARY KEY, Name VARCHAR(50), Age INT)


/* 6. Describe the differences between SQL Server, SSMS, and SQL:

SQL Server - Microsoft’ning ma’lumotlar bazasini boshqarish tizimi (DBMS). Bu yerda ma’lumotlar saqlanadi va boshqariladi.
SSMS (SQL Server Management Studio) - SQL Server bilan ishlash uchun grafik interfeys (GUI). Bu dastur orqali SQL yoziladi, ma’lumotlar ko‘riladi va boshqariladi.
SQL (Structured Query Language) - Ma’lumotlar bilan ishlash uchun universal so‘rov tili. Bu tilda biz ma’lumotlarni tanlaymiz, o‘zgartiramiz, o‘chiramiz va boshqalar.

*/

-- Hard 

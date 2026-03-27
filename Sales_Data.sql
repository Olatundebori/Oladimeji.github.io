--CREATE DATABASE STATEMENT
CREATE DATABASE Bori_Database

CREATE DATABASE DATABASE_BORI

--DROP DATABASE STATEMENT
DROP DATABASE[DATABASE_BORI]

--CREATE TABLE STATEMENT
CREATE TABLE SALE_MANAGER_RECORDS (Salesperson_ID VARCHAR(200)
							      ,Salesman_Name VARCHAR(200)
								  ,Date_of_Birth DATE
								  ,City VARCHAR(200)
								  ,Phone_Number VARCHAR(200)
								  ,Gender VARCHAR(10)
								)

--INSERT INTO STATEMENT

INSERT INTO [SALE_MANAGER_RECORDS]
VALUES ('ID001','JOHN SAM', '1986/12/12','BRISTOL','+4475494648','FEMALE')

INSERT INTO [SALE_MANAGER_RECORDS]
VALUES ('ID002','ADE SAM', '1934/12/1','LONDON','+44754964548','MALE'),
		('ID003','LONG ESTHER', '1986/1/11','KENT','+4478357648','FEMALE'),
		('ID004','NORTH TIMI', '1953/06/18','SWANSEA','+4475774648','MALE'),
		('ID005','FOX MAY', '2000/07/01','NEWPORT','+4475353648','FEMALE'),
		('ID006','RUTH AGE', '1986/12/6','BRISTOL','+4475354648','FEMALE')


--CREATE TABLE STATEMENT
CREATE TABLE TOM_SALES_RECORDS (Salesperson_ID VARCHAR(200)
								  ,Date_of_sales DATE
							      ,Region VARCHAR(200)
								  ,City VARCHAR(200)
								  ,Category VARCHAR(200)
								  ,Product VARCHAR(200)
								  ,Quality VARCHAR(200)
								  ,Unit_Price DECIMAL(10,2)
								)

--INSERT INTO STATEMENT


INSERT INTO [TOM_SALES_RECORDS]
VALUES ('ID07351','2022/01/01','EAST','BOSTON','Bars','CARROT','33','1.77'),
		('ID07352','2022/01/04','EAST','BOSTON','Crackers','WHOLE_WHEAT','87','3.49'),
		('ID07353','2022/01/07','WEST','LOS_ANGELES','COOKIES','CHOCOLATE_CHIP','58','1.87'),
		('ID07354','2022/01/10','EAST','NEW_YORK','COOKIES','CHOCOLATE_CHIP','82','1.87')

--DROP TABLE AND TRUNCATE TABLE STATEMENT	
TRUNCATE TABLE [dbo].[SALE_MANAGER_RECORDS]

DROP TABLE [dbo].[SALE_MANAGER_RECORDS]

/*ALTER TABLE STATEMENT
1. Create a new column in an exciting table 
(ALTER TABLE [dbo].[TOM_SALES_RECORDS]
ADD SALE VARCHAR(200))

2. DELETE AN EXCITING COLUMN
ALTER TABLE [dbo].[TOM_SALES_RECORDS]
DROP COLUMN PROJECTED_SALE

3. CHANGE THE DATATYPE IN A COLUMN
ALTER TABLE [dbo].[TOM_SALES_RECORDS]


4. RENAME A COLUMN
right on the column you want rename and change it there
*/ 

ALTER TABLE [dbo].[TOM_SALES_RECORDS]
ADD SALE VARCHAR(200)

ALTER TABLE [dbo].[TOM_SALES_RECORDS]
ADD PROJECTED_SALE VARCHAR(200)

ALTER TABLE [dbo].[TOM_SALES_RECORDS]
DROP COLUMN PROJECTED_SALE

ALTER TABLE [dbo].[TOM_SALES_RECORDS]
ALTER COLUMN SALE decimal(5,2)

ALTER TABLE [dbo].[TOM_SALES_RECORDS]
ADD Duration decimal(5,2)

ALTER TABLE [dbo].[TOM_SALES_RECORDS]
ALTER COLUMN [Duration] INT

ALTER TABLE [dbo].[TOM_SALES_RECORDS]
DROP COLUMN SALE


--Update table statement
Update[dbo].[TOM_SALES_RECORDS]
SET [Duration] =DATEDIFF(YEAR,[Date_of_sales],GETDATE())

Update[dbo].[TOM_SALES_RECORDS]
SET [City] = 'BRISTOL'
Where [Salesperson_ID] = 'ID07354'

--DELETE FROM STATEMENT
DELETE FROM [dbo].[TOM_SALES_RECORDS]
WHERE [Duration] <= 2

-- Data Manipulation Language

select*
from [dbo].['Workplace Safety Data$']

select Date
		,Department
		,[Incident Cost]
from [dbo].['Workplace Safety Data$']

-- Where clause
select*
from [dbo].['Workplace Safety Data$']
where [Plant] = 'Georgia'
--(plant in georgia)

select*
from [dbo].['Workplace Safety Data$']
where [Plant] != 'Georgia'

select*
from [dbo].['Workplace Safety Data$']
where [Plant] <> 'Georgia'
--(all plant excluding georgia)

select*
from [dbo].['Workplace Safety Data$']
where [Injury Location] <> 'N/A'
--(all excluding N/A)
 
 --- IN & NOT IN OPERATORS
 SELECT*
 FROM [dbo].['Workplace Safety Data$']
 WHERE PLANT IN ('FLORIDA','TEXAS')
 --(PLANT IN FLORIDA AND TEXAS ONLY IN SAME COLUMN)

 SELECT*
 FROM [dbo].['Workplace Safety Data$']
 WHERE PLANT NOT IN ('FLORIDA','TEXAS')
 --(ALL PLANT EXPECT FLORIDA AND TEXAS ONLY IN SAME COLUMN)

 --- AND & OR OPERATORS
 SELECT*
 FROM [dbo].['Workplace Safety Data$']
 WHERE PLANT = 'FLORIDA' AND [Incident Cost] > 1000
  --(Where PLANT IN FLORIDA and the other criteria incident cost is 1000 is met in different COLUMN)

  SELECT*
 FROM [dbo].['Workplace Safety Data$']
 WHERE PLANT = 'FLORIDA' or [Incident Cost] > 1000
  --(Where PLANT IN FLORIDA or the other criteria incident cost is 1000 is met in different COLUMN)

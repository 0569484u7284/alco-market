/*
Шаблон скрипта после развертывания							
--------------------------------------------------------------------------------------
 В данном файле содержатся инструкции SQL, которые будут добавлены в скрипт построения.		
 Используйте синтаксис SQLCMD для включения файла в скрипт после развертывания.			
 Пример:      :r .\myfile.sql								
 Используйте синтаксис SQLCMD для создания ссылки на переменную в скрипте после развертывания.		
 Пример:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

--добавление в таблицы данных
insert into Country (Name) values 
(N'Україна'),
(N'Россия'),
(N'Германия'),
(N'Польша')


insert into Product (Name, ProductCode, Quantity) values
(N'Балтика 0', 100000031, 10),
(N'Балтика 3', 100000012, 50),
(N'Балтика 7', 100000013, 70),
(N'Балтика 9', 100000014, 90),
(N'Воздух', 100000021, 24), 
(N'Revo', 1000000041, 70)


insert into Category(Name) values
(N'Слабоалкогольное'),
(N'Крепкие напитки'),
(N'Безалкогольные'),
(N'Энергетические напитки')

--добавление категорий продуктам
insert into ProductCategory (CategoryID, ProductID) values
(
	(select Id from Category where Name =N'Слабоалкогольное'),
	(select Id from Product where  Name =N'Балтика 0')
),
(
	(select Id from Category where Name =N'Крепкие напитки'),
	(select Id from Product where  Name =N'Воздух')
),
(
	(select Id from Category where Name =N'Безалкогольные'),
	(select Id from Product where  Name =N'Балтика 0')
),
(
	(select Id from Category where Name =N'Слабоалкогольное'),
	(select Id from Product where  Name =N'Балтика 3')
),

(
	(select Id from Category where Name =N'Слабоалкогольное'),
	(select Id from Product where  Name =N'Балтика 7')
),

(
	(select Id from Category where Name =N'Слабоалкогольное'),
	(select Id from Product where  Name =N'Балтика 9')
),

(
	(select Id from Category where Name =N'Энергетические напитки'),
	(select Id from Product where  Name =N'Revo')
)

--добавление поставщиков
insert into Suppliers (Name,CountryID) values 
(
(N'Германское Пиво'),
(select Id from Country where Name =N'Германия')
),
(
(N'Росийский спирт'),
(select Id from Country where Name =N'Россия')
),
(
(N'Польское производство'),
(select Id from Country where Name =N'Польша')
),
(
(N'Модернизация Рошен'),
(select Id from Country where Name =N'Україна')
)

insert into Customers (Name, Adress) values
(N'Rick', N'st. Cucumber 12'), 
(N'Morty', N'st. Cucumber 12'),
(N'007', N'st. Incognito 01')

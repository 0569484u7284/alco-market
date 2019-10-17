--------------------------------------------------------------------CREATE TABLE [dbo].[Sales]
--------------------------------------------------------------------(
--------------------------------------------------------------------	[Id] INT NOT NULL PRIMARY KEY, 
--------------------------------------------------------------------    [ProductID] INT NOT NULL, 
 ------------------------------------------------------------------------   [Data] DATE NOT NULL, 
 ------------------------------------------------------------------------   [Cost] FLOAT NOT NULL
	------------------------------------------------------------------------FOREIGN KEY (Customer) NOT NULL,
	------------------------------------------------------------------------FOREIGN KEY (Customer) REFERENCES  (Customers),
	------------------------------------------------------------------------	 REFERENCES Customers (Id),


--создание таблицы с продажами
	CREATE TABLE Sales (
	--уникальное id
    SaleID int NOT NULL PRIMARY KEY,
    CustomerID int FOREIGN KEY REFERENCES Customers(Id) NOT NULL,
	ProductID int FOREIGN KEY REFERENCES Product(Id) NOT NULL,

);



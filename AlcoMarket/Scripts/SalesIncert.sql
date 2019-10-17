insert into Sales(CustomerId, ProductID) values
((select Id from  Customers where Name = "Rick"), (select Id from Product where Name = "Балтика 9"))
((select Id from  Customers where Name = "Morty"), (select Id from Product where Name = "Балтика 0"))


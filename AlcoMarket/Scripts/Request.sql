-- вывод всех продуктов кода и количества
select 
Id as N'Код',
Name as N'Название',
ProductCode as N'Уникальный код товара',
Quantity as N'Количество товара'
from Product

-- категории
select 
Id as N'Код',
Name as N'Название'
from Category

-- страны
select 
Id as N'Код',
Name as N'Название'
from Country

-- сапоставление продуктов и категорий (вывод таблицы)
select 
(select Name from Category where Id = CategoryID) as N'Категория',
--выбрать имя из таблицы категорий по номеру = номер категории и вывести как Категория

(select Name from Product where Id = ProductID) as N'Продукт'
-- что выбрать, из какой таблицы, по какому номеру и вывести как 
from ProductCategory

-- поставщики по странам
select 
Name as N' Поставщик',
(select Name from Country where Id = CountryID) as N'Страна'
from Suppliers 



select 
SaleId, CustomerID, ProductID
from Sales
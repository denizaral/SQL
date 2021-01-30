--Select
--ANSII
Select ContactName Adi,CompanyName SirketAdi,City Sehir from Customers
Select * from Customers where City = 'Berlin'
--case insensitive
Select * from Products where CategoryID = 1 or CategoryID = 3
Select * from Products where CategoryID = 1 and UnitPrice>=10
Select * from Products order by UnitPrice desc --ascending --descending
Select count(*) from Products
Select CategoryID,count(*) from Products where UnitPrice>20 group by CategoryID having count(*)<10
Select Products.ProductID, Products.ProductName, Products.UnitPrice, Categories.CategoryName
from Products inner join Categories
on Products.CategoryID = Categories.CategoryID

--DTO Data Transformation Object
Select * from Products p left join [Order Details] od
on p.ProductID = od.ProductID
Select * from Customers c left join Orders o
on c.CustomerID = o.CustomerID
where o.CustomerID is null

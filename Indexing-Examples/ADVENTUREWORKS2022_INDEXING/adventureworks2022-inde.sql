--1.SORGU
SELECT SalesOrderID, OrderQty, UnitPrice
FROM Sales.SalesOrderDetail
WHERE ProductID = 707;

CREATE NONCLUSTERED INDEX IX_ORDERDETAILS ON Sales.SalesOrderDetail (ProductID) INCLUDE (OrderQty,UnitPrice) 

--2.SORGU
SELECT SalesOrderID, OrderDate, TotalDue
FROM Sales.SalesOrderHeader
WHERE OrderDate BETWEEN '2011-07-01' AND '2011-07-31';

CREATE NONCLUSTERED INDEX IX_SALESORDERHEADER ON Sales.SalesOrderHeader(OrderDate) INCLUDE(TotalDue)


--3.SORGU
SELECT ProductID, Name, ListPrice
FROM Production.Product
ORDER BY ListPrice DESC;

CREATE NONCLUSTERED INDEX IX_Production on Production.Product(ListPrice DESC) INCLUDE (ProductID,Name)


--4.SORGU
SET STATISTICS IO ON;
SET STATISTICS TIME ON;
SELECT c.CustomerID, p.FirstName, p.LastName, SUM(TotalDue) AS TotalSpent
FROM Sales.SalesOrderHeader soh
JOIN Sales.Customer c ON soh.CustomerID = c.CustomerID
JOIN Person.Person p ON c.PersonID = p.BusinessEntityID
GROUP BY c.CustomerID, p.FirstName, p.LastName;

CREATE NONCLUSTERED INDEX IX_SalesOrderHeader_CustomerID_TotalDue
ON Sales.SalesOrderHeader (CustomerID)
INCLUDE (TotalDue);


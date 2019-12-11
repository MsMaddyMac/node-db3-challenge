-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
select p.ProductName
    , c.CategoryName
from [Product] as p
join category as c on p.CategoryId = c.id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
select o.id
    , s.CompanyName
from [Order] as o
join Shipper as s on o.ShipVia = s.id
where OrderDate < "2012-08-09";


-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
select p.ProductName
, od.Quantity
from [Order] as o
join Product as p on od.ProductId = p.id
join OrderDetail as od on o.id = od.OrderId 
where o.id = "10251"
order by p.ProductName asc;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
select o.id as OrderID
, c.CompanyName as Customer
, e.lastName  as Employee
from [Order] as o
join Customer as c on o.CustomerId = c.id
join Employee as e on o.EmployeeId = e.id;
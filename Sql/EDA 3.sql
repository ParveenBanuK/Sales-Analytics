select c.ContactTitle,c.Country,count(o.OrderID) as Orders_by_ContactTitle
from customers c
join orders o
on c.CustomerID = o.CustomerID
join orderdetails od on
o.OrderID = od.OrderID
group by c.ContactTitle,c.Country
order by Orders_by_ContactTitle desc
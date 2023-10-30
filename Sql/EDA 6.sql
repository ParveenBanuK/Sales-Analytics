select c.CustomerID,c.ContactTitle,c.Country,count(o.OrderID) as Orders,
round(AVG(day(o.OrderDate))) AS avg_order_frequency
from customers c
inner join orders o
on c.CustomerID = o.CustomerID
group by c.ContactTitle,c.Country,c.CustomerID


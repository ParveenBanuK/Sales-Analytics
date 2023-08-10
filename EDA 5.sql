select c.CustomerID,c.ContactTitle,round(avg(od.Quantity)) as Order_Size,p.CategoryID
from customers c
inner join orders o on c.CustomerID = o.CustomerID
inner join orderdetails od on o.OrderID = od.OrderID
inner join products p on od.ProductID = p.ProductID
group by c.CustomerID,c.ContactTitle,p.CategoryID
order by Order_Size desc


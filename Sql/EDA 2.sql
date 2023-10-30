select c.CustomerID,c.Country,count(o.OrderID) as count_of_Orders,count(od.ProductID) as count_of_Products,p.CategoryID
from customers c
join orders o on c.CustomerID = o.CustomerID
join orderdetails od on o. OrderID = od.OrderID
join products p on od.ProductID = p.ProductID
group by c.CustomerID,c.Country,p.CategoryID



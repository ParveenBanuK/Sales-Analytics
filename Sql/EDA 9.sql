select month(OrderDate) as months,count(od.ProductID) as ProductsSold
from orders o
inner join orderdetails od
on o.OrderID = od.OrderID
group by month(OrderDate)
order by months

select 
p.CategoryID,c.CategoryName,count(od.ProductID) as Ordered_Products,
round(sum(od.Quantity*od.UnitPrice-od.Discount)) as order_revenue
from orderdetails od
join products p
on od.ProductID = p.ProductID
join categories c
on p.CategoryID = c.CategoryID
group by p.CategoryID,c.CategoryName
order by order_revenue desc
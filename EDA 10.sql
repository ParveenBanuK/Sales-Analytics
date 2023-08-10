select count(s.SupplierID)as supplier_count,s.Country,s.CompanyName,date(o.RequiredDate),date(o.OrderDate)
from suppliers s
inner join products p 
on s.SupplierID = p.SupplierID
inner join orderdetails od
on p.ProductID = od.ProductID
inner join orders o 
on od.OrderID = o.OrderID
group by s.Country,s.CompanyName,date(o.RequiredDate),date(o.OrderDate)

select p.supplierID,count(od.ProductID) as Products,p.CategoryID
from orderdetails od
join products p 
on od.ProductID = p.ProductID
group by p.supplierID,p.CategoryID
order by p.SupplierID

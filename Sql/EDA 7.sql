select e.EmployeeID,e.Title,count(o.OrderID) as Order_Handled,
round(sum(od.Quantity*od.UnitPrice-od.Discount)) as Order_Revenue
from employees e
inner join orders o
on e.EmployeeID = o.EmployeeID
inner join orderdetails od
on o.OrderID = od.OrderID
group by e.EmployeeID,e.Title
order by Order_Handled desc
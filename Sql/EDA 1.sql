select CustomerID,count(OrderID) as Count_Of_Orders
from orders
group by CustomerID
order by Count_Of_Orders desc

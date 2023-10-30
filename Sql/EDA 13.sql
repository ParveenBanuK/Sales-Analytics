SELECT YEAR(o.OrderDate) AS OrderYear,s.SupplierID,s.CompanyName AS SupplierName,
round(AVG(p.UnitPrice)) AS AverageOrderValue
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
JOIN Employees e ON o.EmployeeID = e.EmployeeID
JOIN orderdetails od ON o.OrderID = od.OrderID
JOIN Products p ON od.ProductID = p.ProductID
JOIN Suppliers s ON p.SupplierID = s.SupplierID
GROUP BY YEAR(o.OrderDate),s.SupplierID,s.CompanyName
ORDER BY OrderYear,SupplierID;
-- TODO: INNER JOIN query

SELECT Orders.OrderID,Orders.OrderDate,Customers.CustomerName
from Orders
Join Customers ON Orders.CustomerID = Customers.CustomerID limit 5;


SELECT Orders.OrderID,Customers.CustomerName,Orders.OrderDate
from (Orders
INNER Join Customers ON Orders.CustomerID = Customers.CustomerID limit 5);

TODO: Join 3 more tables

SELECT Orders.OrderID,Customers.CustomerName, Shippers.ShipperName
 from ((Orders INNER Join Customers on Orders.CustomerID = Customers.CustomerID)
      INNER Join Shippers on Orders.ShipperID = Shippers.ShipperID) limit 5;

TODO: LEFT JOIN QUREY

SELECT Customers.CustomerName, Orders.OrderID from Customers
LEFT JOIN Orders on Customers.CustomerID = Orders.CustomerID;

SELECT Customers.CustomerName, Orders.OrderID from Customers
LEFT JOIN Orders on Customers.CustomerID = Orders.CustomerID limit 10 ;


TODO: RIGHT JOIN QUREY

SELECT Customers.CustomerName, Orders.OrderID from Customers
RIGHT JOIN Orders on Customers.CustomerID = Orders.CustomerID limit 10;


TODO: FULL outer Join 

Not used in MYSQl Relational database




SELECT * FROM Users;
SELECT * FROM Products;
SELECT * FROM Orders;

UPDATE Products SET Harga = 5.000 WHERE Id = 2;

DELETE FROM Users WHERE Id = 2;

DROP TABLE Users;
DROP TABLE Products;
DROP TABLE Orders;

DROP DATABASE Toko_Online;
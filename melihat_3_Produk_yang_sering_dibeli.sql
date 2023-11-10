SELECT Products.Nama_Produk, COUNT(*) as count
FROM Orders
JOIN Products ON Orders.Products_Id = Products.Id
GROUP BY Products.Id
ORDER BY count DESC
LIMIT 3;
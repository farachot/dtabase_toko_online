SELECT AVG(total) as average
FROM (
  SELECT SUM(Products.Harga * Orders.Jumlah) as total
  FROM Orders
  JOIN Products ON Orders.Products_Id = Products.Id
  WHERE Orders.Users_Id = 3 AND Orders.Tanggal > DATE_SUB(CURDATE(), INTERVAL 1 MONTH)
  GROUP BY Orders.Id
) as totals;
SELECT Products.Deskripsi_Produk, COUNT(*) as count
FROM Products
GROUP BY Products.Deskripsi_Produk
ORDER BY count DESC
LIMIT 1;

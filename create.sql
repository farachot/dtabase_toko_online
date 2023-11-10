CREATE DATABASE Toko_Online;

CREATE TABLE Users (
  Id INT AUTO_INCREMENT,
  Nama_Lengkap VARCHAR(255),
  Username VARCHAR(255),
  Pasword VARCHAR(255),
  Email VARCHAR(255),
  Alamat TEXT,
  PRIMARY KEY (Id)
);

CREATE TABLE Products (
  Id INT AUTO_INCREMENT,
  Nama_Produk VARCHAR(255),
  Deskripsi_Produk TEXT,
  Harga DECIMAL(10, 2),
  Stok INT,
  Gambar VARCHAR(255),
  PRIMARY KEY (Id)
);

CREATE TABLE orders (
  Id INT AUTO_INCREMENT,
  Users_Id INT,
  Products_Id INT,
  Jumlah INT,
  Tanggal DATE,
  PRIMARY KEY (Id),
  FOREIGN KEY (Users_Id) REFERENCES Users(Id),
  FOREIGN KEY (Products_Id) REFERENCES Products(Id)
);

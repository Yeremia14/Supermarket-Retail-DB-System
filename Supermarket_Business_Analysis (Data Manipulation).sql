-- Data Manipulation for Business Analysis

--VIEW 
-- Untuk melihat data transaksi yang terjadi pada bulan febuari
CREATE VIEW v_February AS 
SELECT td.TransactionID, th.CustomerID,  CustomerName, ProductName, Quantity
FROM TransactionHeader th JOIN TransactionDetail td
	ON th.TransactionID = td.TransactionID
	JOIN Customer c
	ON th.CustomerID = c.CustomerID
	JOIN Product pr
	ON td.ProductID = pr.ProductID
WHERE MONTH(TransactionDate) = 2

GO
-- Untuk melihat data transaksi yang terjadi pada bulan May
CREATE VIEW v_May AS
SELECT td.TransactionID, th.CustomerID,  td.ProductID , ProductName,  Quantity
FROM TransactionHeader th JOIN TransactionDetail td
	ON th.TransactionID = td.TransactionID
	JOIN Customer c
	ON th.CustomerID = c.CustomerID
	JOIN Product pr
	ON td.ProductID = pr.ProductID
WHERE MONTH(TransactionDate) = 5
GO
-- Melihat total kuantitas transaksi section food
CREATE VIEW v_Food AS 
SELECT ProductTypeName, SUM(Quantity) AS TotalQuantity
FROM ProductType pt
	JOIN Product pr
	ON pr.ProductTypeID = pt.ProductTypeID
	JOIN TransactionDetail td
	ON pr.ProductID = td.ProductID
WHERE pr.ProductTypeID = 'PT001'
GROUP BY ProductTypeName, ProductName
GO

-- UPDATE
-- Perubahan Staff
Update Staff set StaffName = 'Asep Sunandar' Where StaffId =  'ST002'

-- Perubahan Staff
UPDATE Staff set StaffGender = 'Male' Where StaffID = 'ST002'

-- Update jumlah kuantitas barang
UPDATE TransactionDetail
SET Quantity = 15
WHERE TransactionID = 'TR001' AND ProductID = 'PR001'


--DELETE

DELETE FROM Staff WHERE StaffID = 'ST002'
DELETE FROM TransactionDetail WHERE TransactionID = 'TR035'
DELETE FROM TransactionHeader WHERE TransactionID = 'TR035'


--JOIN
-- Untuk melacak transaksi customer
select cus.CustomerId, cus.CustomerName, cao.TransactionDate
	FROM Customer cus
	JOIN TransactionHeader cao on cus.CustomerId = cao.CustomerId
	WHERE CustomerName = 'Andrew Pratama'

-- Nyari detail tentang produk Indomie
select paw.ProductId, ProductName, paw.ProductTypeId, ProductPrice 
	FROM Product paw
	JOIN ProductType kiw 
	on paw.ProductTypeID = kiw.ProductTypeID
	WHERE ProductName = 'Indomie'

-- melihat produk jenis baby care
select paw.ProductId, paw.ProductName, paw.ProductTypeId, paw.ProductPrice, kiw.ProductTypeName
	FROM ProductType kiw
	JOIN Product paw on kiw.ProductTypeID = paw.ProductTypeID
	WHERE ProductTypeName = 'Baby care'

-- Melihat transaksi penjualan Beer bintang
select TransactionID, paw.ProductId, paw.ProductName, kiw.Quantity
	FROM TransactionDetail kiw
	JOIN Product paw on kiw.ProductID = paw.ProductID
	WHERE ProductName = 'Beer Bintang'


--UNION
-- Untuk melihat data transaksi bulan ke 3 dan 4
SELECT th.TransactionID, CustomerName
FROM TransactionHeader th JOIN Customer c
	ON th.CustomerID = c.CustomerID
WHERE MONTH(TransactionDate) = 3
UNION
SELECT th.TransactionID, CustomerName
FROM TransactionHeader th JOIN Customer c
	ON th.CustomerID = c.CustomerID
WHERE MONTH(TransactionDate) = 4

-- Untuk melihat data transaksi yang membeli sebanyak 7 dan 6
SELECT TransactionID, ProductID, Quantity
FROM TransactionDetail
WHERE Quantity = 7
UNION
SELECT TransactionID, ProductID, Quantity
FROM TransactionDetail
WHERE Quantity = 6

-- Untuk melihat transaksi yang dilayani oleh staff female dan pada bulan febuari
SELECT CustomerID
FROM TransactionHeader th JOIN Staff st
	ON th.StaffID = st.StaffID
WHERE StaffGender = 'Female'
UNION
SELECT CustomerID
FROM TransactionHeader th JOIN Staff st
	ON th.StaffID = st.StaffID
WHERE MONTH(TransactionDate) = 2

--AGGREGATE FUNCTION

-- Melihat harga produk termahal
SELECT TOP 1 ProductName, MAX(ProductPrice) AS MaximumPrice  
FROM Product p JOIN ProductType pt
	ON p.ProductTypeID = pt.ProductTypeID
GROUP BY ProductName

-- Melihat total transaksi setiap customer
SELECT th.CustomerID, CustomerName,  COUNT(*) AS TotalTransaction
FROM Customer c JOIN TransactionHeader th
	ON c.CustomerID = th.CustomerID
GROUP BY th.CustomerID, CustomerName

-- Melihat total kuantitas TransactionID 'TR001'
SELECT TransactionID, SUM(Quantity) AS TotalQuantity
FROM TransactionDetail
WHERE TransactionID = 'TR001'
GROUP BY TransactionID

--SUBQUERY

--Melihat nama customer & staff u/ transaksi yang terjadi di bulan januari
SELECT CustomerName, StaffName
FROM Customer c JOIN TransactionHeader th
	ON c.CustomerID = th.CustomerID
	JOIN Staff st
	ON th.StaffID = st.StaffID
WHERE TransactionID IN (
		SELECT TransactionID
		FROM TransactionHeader
		WHERE MONTH(TransactionDate) = 1
)

-- Melihat Transaksi yang dilayani oleh staff Male
SELECT CustomerID, TransactionID
FROM TransactionHeader
WHERE TransactionID  IN (
	SELECT TransactionID
	FROM TransactionHeader th JOIN Staff st
	ON th.StaffID = st.StaffID
	WHERE StaffGender = 'Male'
)

-- Melihat transaksi yang membeli produk yang harganya lebih dr 50.000
SELECT TransactionID, td.ProductID, ProductPrice
FROM Product p JOIN TransactionDetail td
	ON p.ProductID = td.ProductID
WHERE p.ProductID  IN  (
		SELECT ProductID
		FROM Product
		WHERE ProductPrice > 50000 
)
-- data Insertion
USE Supermarket

--INSERT
INSERT INTO Staff(
StaffID,
StaffName,
StaffGender
)
VALUES
('ST001', 'Adiputra Chandra', 'Male'),
('ST002', 'Meli Christie', 'Female'),
('ST003', 'Sutigno Widodo', 'Male'),
('ST004', 'Andrew Pradua', 'Male'),
('ST005', 'Hartono Purnama', 'Male'),
('ST006', 'Nadia Putri', 'Female'),
('ST007', 'Kelly Purwanti', 'Female'),
('ST008', 'Kiky Kendari', 'Female'),
('ST009', 'Lisa Kertjana', 'Female'),
('ST010', 'Rendy Purwanto', 'Male')
;

INSERT INTO Customer 
VALUES 
( 'CU001', 'Agus Saepul', 'agussaeupul@gmail.com'),
('CU002', 'Andrew Pratama','andrew.pratama@gmail.com'),
('CU003', 'Yusuf Iskandar', 'yusfis234@gmail.com'),
('CU004', 'Ahmad Syamil' , 'ahmadsyamil88@gmail.com'),
('CU005', 'Irvan Heru', 'irvangantenk46@gmail.com ' ),
('CU006', 'Kartini Putri', 'kartiniputri22@gmail.com'),
('CU007', 'Yono Bakrie', 'yonnsskuyy@gmail.com'),
('CU008', 'Samuel Sucipta', 'suciptasamue56l@gmail.com'),
('CU009', 'Cindy Caroline', 'cindcarrol56@gmail.com'),
('CU010', 'Michael Saputra', 'michamicu55@gmail.com')
;

INSERT INTO TransactionHeader 
	VALUES 
	('TR001','ST001','CU001','2024-01-01'),
	('TR002','ST002','CU002','2024-01-01'),
	('TR003','ST003','CU003','2024-01-01'),
	('TR004','ST004','CU004','2024-01-01'),
	('TR005','ST005','CU005','2024-01-11'),
	('TR006','ST006','CU006','2024-01-11'),
	('TR007','ST007','CU007','2024-01-11'),
	('TR008','ST008','CU008','2024-01-11'),
	('TR009','ST009','CU009','2024-01-11'),
	('TR010','ST010','CU010','2024-01-11'),
	('TR011','ST010','CU001','2024-02-05'),
	('TR012','ST009','CU002','2024-02-05'),
	('TR013','ST008','CU003','2024-02-05'),
	('TR014','ST007','CU004','2024-02-05'),
	('TR015','ST006','CU005','2024-02-05'),
	('TR016','ST005','CU006','2024-02-25'),
	('TR017','ST004','CU007','2024-02-25'),
	('TR018','ST003','CU008','2024-02-25'),
	('TR019','ST002','CU009','2024-02-25'),
	('TR020','ST001','CU010','2024-02-25'),
	('TR021','ST002','CU001','2024-03-09'),
	('TR022','ST004','CU002','2024-03-09'),
	('TR023','ST006','CU003','2024-03-09'),
	('TR024','ST008','CU004','2024-03-09'),
	('TR025','ST010','CU005','2024-03-09'),
	('TR026','ST001','CU006','2024-03-19'),
	('TR027','ST003','CU007','2024-03-19'),
	('TR028','ST005','CU008','2024-03-19'),
	('TR029','ST007','CU009','2024-03-19'),
	('TR030','ST009','CU010','2024-03-19'),
	('TR031','ST009','CU001','2024-04-06'),
	('TR032','ST007','CU002','2024-04-06'),
	('TR033','ST005','CU003','2024-04-06'),
	('TR034','ST003','CU004','2024-04-06'),
	('TR035','ST001','CU005','2024-04-06'),
	('TR036','ST010','CU006','2024-04-26'),
	('TR037','ST008','CU007','2024-04-26'),
	('TR038','ST006','CU008','2024-04-26'),
	('TR039','ST004','CU009','2024-04-26'),
	('TR040','ST002','CU010','2024-04-26'),
	('TR041','ST003','CU001','2024-05-02'),
	('TR042','ST005','CU002','2024-05-02'),
	('TR043','ST001','CU003','2024-05-02'),
	('TR044','ST002','CU004','2024-05-02'),
	('TR045','ST004','CU005','2024-05-02'),
	('TR046','ST008','CU006','2024-05-12'),
	('TR047','ST006','CU007','2024-05-12'),
	('TR048','ST009','CU008','2024-05-12'),
	('TR049','ST010','CU009','2024-05-12'),
	('TR050','ST007','CU010','2024-05-12')
;

INSERT INTO ProductType
VALUES
('PT001','Food'),
('PT002','Bevarage'),
('PT003','Health'),
('PT004','Beauty'),
('PT005','House hold'),
('PT006','Baby care'),
('PT007','Pet care'),
('PT008','Book & Stationery'),
('PT009','Electronic'),
('PT010','Toy')

INSERT INTO Product
VALUES
('PR001','PT001','Indomie', 3200),
('PR002','PT002','Beer Bintang', 8500),
('PR003','PT003','Tolak Angin', 2570),
('PR004','PT004','Kahf', 28900),
('PR005','PT005','Rinso', 17900),
('PR006','PT006','Mamypoko',78600),
('PR007','PT007','Whiskas', 23200),
('PR008','PT008','SNOWMAN', 10100),
('PR009','PT009','Baseus',155000),
('PR010','PT010','LEGO', 550200)
;
INSERT INTO TransactionDetail 
VALUES
('TR001', 'PR001', 5),
('TR002', 'PR002', 10),
('TR003', 'PR003', 3),
('TR004', 'PR004', 2),
('TR005', 'PR005', 7),
('TR006', 'PR006', 4),
('TR007', 'PR007', 8),
('TR008', 'PR008', 6),
('TR009', 'PR009', 1),
('TR010', 'PR010', 9),
('TR011', 'PR001', 8),
('TR012', 'PR002', 3),
('TR013', 'PR003', 6),
('TR014', 'PR004', 5),
('TR015', 'PR005', 2),
('TR016', 'PR006', 7),
('TR017', 'PR007', 9),
('TR018', 'PR008', 4),
('TR019', 'PR009', 5),
('TR020', 'PR010', 3),
('TR021', 'PR001', 10),
('TR022', 'PR002', 8),
('TR023', 'PR003', 4),
('TR024', 'PR004', 6),
('TR025', 'PR005', 3),
('TR026', 'PR006', 5),
('TR027', 'PR007', 2),
('TR028', 'PR008', 7),
('TR029', 'PR009', 8),
('TR030', 'PR010', 1),
('TR031', 'PR001', 6),
('TR032', 'PR002', 9),
('TR033', 'PR003', 2),
('TR034', 'PR004', 7),
('TR035', 'PR005', 4),
('TR036', 'PR006', 8),
('TR037', 'PR007', 5),
('TR038', 'PR008', 3),
('TR039', 'PR009', 10),
('TR040', 'PR010', 6),
('TR041', 'PR001', 2),
('TR042', 'PR002', 7),
('TR043', 'PR003', 9),
('TR044', 'PR004', 4),
('TR045', 'PR005', 8),
('TR046', 'PR006', 6),
('TR047', 'PR007', 3),
('TR048', 'PR008', 5),
('TR049', 'PR009', 2),
('TR050', 'PR010', 9)
;




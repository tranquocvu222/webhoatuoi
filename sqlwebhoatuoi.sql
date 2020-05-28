create table Users(
	Id int identity(1,1) primary key,
	Fullname nvarchar(50),
	Username nvarchar(20) ,
	Pass varchar(40) ,
	Email varchar(30) ,
	Address nvarchar(50),
	Phone varchar(11),
	Role int,
)
create table Service(
	Id  int identity(1,1) primary key,
	Name_Service nvarchar(30),
)
create table Status(
	Id  int identity(1,1) primary key,
	Name_Status nvarchar(30),
)

create table Flowers(
	Id int identity(1,1) primary key,
	Id_Service int foreign key references Flowers(Id),
	Avatar varchar(30),
	amount int,
	Name nvarchar(30),
	Price int,
)

create table Orders(
	Id int identity(1,1) primary key,
	Id_user int foreign key references Users(Id),
	Id_flower int foreign key references Flowers(Id),
	number_buy int,
	price money,
	id_status int foreign key references Status(Id)
	
)

create table Detail_Order(
)





insert into Users(Fullname, Username, Pass, Email,Address, Phone, Role) values ('Tran Quoc Vu','vu','admin','tranquocvu22298@gmail.com','104 Tran Thu Do','0585987254',1)
insert into Users(Fullname, Username, Pass, Email,Address, Phone, Role) values ('Nguyen Van Ha','ha','1234','ha@gmail.com','111 Le Lai','0912121121',2)
insert into Users(Fullname, Username, Pass, Email,Address, Phone, Role) values ('Nguyen Van Nam','nam','4321','nam@gmail.com','111 Le Loi','0931313131',2)
insert into Users(Fullname,Pass) values ('a','b')

insert into Service(Name_Service) values (N'Hoa cưới')
insert into Service(Name_Service) values (N'Hoa viếng')
insert into Service(Name_Service) values (N'Hoa khai trương')
insert into Service(Name_Service) values (N'Hoa sinh nhật')

insert into Status(Name_Status) values (N'Chờ xác nhận')
insert into Status(Name_Status) values (N'Đã duyệt')
insert into Status(Name_Status) values (N'Đã hủy')


insert into Flowers(Id_Service, Avatar, amount, Name, Price) values(1,'hoacuoi1.jpg',4, N'HC01', 350000)
insert into Flowers(Id_Service, Avatar, amount, Name, Price) values(1,'hoacuoi2.jpg',7, N'HC02', 650000)
insert into Flowers(Id_Service, Avatar, amount, Name, Price) values(1,'hoacuoi3.jpg',2, N'HC03', 400000)
insert into Flowers(Id_Service, Avatar, amount, Name, Price) values(1,'hoacuoi4.jpg',5, N'HC04', 300000)
insert into Flowers(Id_Service, Avatar, amount, Name, Price) values(1,'hoacuoi5.jpg',2, N'HC05', 400000)
insert into Flowers(Id_Service, Avatar, amount, Name, Price) values(1,'hoacuoi6.jpg',2, N'HC06', 350000)
insert into Flowers(Id_Service, Avatar, amount, Name, Price) values(1,'hoacuoi7.jpg',8, N'HC07', 450000)
insert into Flowers(Id_Service, Avatar, amount, Name, Price) values(1,'hoacuoi8.jpg',1, N'HC08', 350000)
insert into Flowers(Id_Service, Avatar, amount, Name, Price) values(1,'hoacuoi9.jpg',9, N'HC09', 500000)
insert into Flowers(Id_Service, Avatar, amount, Name, Price) values(1,'hoacuoi10.jpg',10, N'HC10',300000)
insert into Flowers(Id_Service, Avatar, amount, Name, Price) values(1,'hoacuoi11.jpg',6, N'HC11', 450000)
insert into Flowers(Id_Service, Avatar, amount, Name, Price) values(1,'hoacuoi12.jpg',4, N'HC12', 550000)

insert into Flowers(Id_Service, Avatar, amount, Name, Price) values(2,'vonghoa1.jpg',1, N'VH01', 1700000)
insert into Flowers(Id_Service, Avatar, amount, Name, Price) values(2,'vonghoa2.jpg',4, N'VH02', 1000000)
insert into Flowers(Id_Service, Avatar, amount, Name, Price) values(2,'vonghoa3.jpg',2, N'VH03', 1350000)
insert into Flowers(Id_Service, Avatar, amount, Name, Price) values(2,'vonghoa4.jpg',3, N'VH04', 1600000)
insert into Flowers(Id_Service, Avatar, amount, Name, Price) values(2,'vonghoa5.jpg',4, N'VH05', 1100000)
insert into Flowers(Id_Service, Avatar, amount, Name, Price) values(2,'vonghoa6.jpg',1, N'VH06', 1900000)
insert into Flowers(Id_Service, Avatar, amount, Name, Price) values(2,'vonghoa7.jpg',1, N'VH07', 1750000)
insert into Flowers(Id_Service, Avatar, amount, Name, Price) values(2,'vonghoa8.jpg',2, N'VH08', 1250000)
insert into Flowers(Id_Service, Avatar, amount, Name, Price) values(2,'vonghoa9.jpg',3, N'VH09', 1200000)
insert into Flowers(Id_Service, Avatar, amount, Name, Price) values(2,'vonghoa10.jpg',4, N'VH10',1100000)
insert into Flowers(Id_Service, Avatar, amount, Name, Price) values(2,'vonghoa11.jpg',7, N'VH11',1000000)
insert into Flowers(Id_Service, Avatar, amount, Name, Price) values(2,'vonghoa12.jpg',2, N'VH12', 1250000)

insert into Flowers(Id_Service, Avatar, amount, Name, Price) values(3,'khaitruong1.jpg',1, N'KT01', 2100000)
insert into Flowers(Id_Service, Avatar, amount, Name, Price) values(3,'khaitruong2.jpg',3, N'KT02', 1100000)
insert into Flowers(Id_Service, Avatar, amount, Name, Price) values(3,'khaitruong3.jpg',6, N'KT03', 800000)
insert into Flowers(Id_Service, Avatar, amount, Name, Price) values(3,'khaitruong4.jpg',2, N'KT04', 1300000)
insert into Flowers(Id_Service, Avatar, amount, Name, Price) values(3,'khaitruong5.jpg',2, N'KT05', 1350000)
insert into Flowers(Id_Service, Avatar, amount, Name, Price) values(3,'khaitruong6.jpg',3, N'KT06', 1400000)
insert into Flowers(Id_Service, Avatar, amount, Name, Price) values(3,'khaitruong7.jpg',2, N'KT07', 1500000)
insert into Flowers(Id_Service, Avatar, amount, Name, Price) values(3,'khaitruong8.jpg',1, N'KT08', 1700000)
insert into Flowers(Id_Service, Avatar, amount, Name, Price) values(3,'khaitruong9.jpg',1, N'KT09', 1100000)
insert into Flowers(Id_Service, Avatar, amount, Name, Price) values(3,'khaitruong10.jpg',2, N'KT10', 1400000)
insert into Flowers(Id_Service, Avatar, amount, Name, Price) values(3,'khaitruong11.jpg',1, N'KT11', 1300000)
insert into Flowers(Id_Service, Avatar, amount, Name, Price) values(3,'khaitruong12.jpg',1, N'KT12', 2300000)

insert into Flowers(Id_Service, Avatar, amount, Name, Price) values(4,'sinhnhat1.jpg',6, N'SN01', 200000)
insert into Flowers(Id_Service, Avatar, amount, Name, Price) values(4,'sinhnhat2.jpg',6, N'SN02', 350000)
insert into Flowers(Id_Service, Avatar, amount, Name, Price) values(4,'sinhnhat3.jpg',3, N'SN03', 450000)
insert into Flowers(Id_Service, Avatar, amount, Name, Price) values(4,'sinhnhat4.jpg',6, N'SN04', 250000)
insert into Flowers(Id_Service, Avatar, amount, Name, Price) values(4,'sinhnhat5.jpg',5, N'SN05', 300000)
insert into Flowers(Id_Service, Avatar, amount, Name, Price) values(4,'sinhnhat6.jpg',5, N'SN06', 350000)
insert into Flowers(Id_Service, Avatar, amount, Name, Price) values(4,'sinhnhat7.jpg',3, N'SN07', 700000)
insert into Flowers(Id_Service, Avatar, amount, Name, Price) values(4,'sinhnhat8.jpg',8, N'SN08', 400000)
insert into Flowers(Id_Service, Avatar, amount, Name, Price) values(4,'sinhnhat9.jpg',2, N'SN09', 500000)
insert into Flowers(Id_Service, Avatar, amount, Name, Price) values(4,'sinhnhat10.jpg',3, N'SN10', 450000)
insert into Flowers(Id_Service, Avatar, amount, Name, Price) values(4,'sinhnhat11.jpg',4, N'SN11', 300000)
insert into Flowers(Id_Service, Avatar, amount, Name, Price) values(4,'sinhnhat12.jpg',7, N'SN12', 200000)

create table Tbl_Category(

CategoryId int identity primary key,
CategoryName varchar(500) unique,
)

create table Tbl_Product(

ProductId int identity primary key,
ProductName varchar(500) unique,
CategoryId int,
Color VARCHAR(15) NOT NULL,
Product_Size VARCHAR(2) NOT NULL,
Description datetime null,
ProductImage varchar(max),
Quantity int,
Cost int not null,
CreatedDate datetime null,
ModifiedDate datetime null,
foreign key (CategoryId) references Tbl_Category(CategoryId),
)

create table Tbl_Members
(
 MemberId int identity primary key,
 FirstName varchar(200),
 LastName varchar(200),
 EmailId varchar(200) unique,
 Password varchar(500),
 Phone varchar(20) unique,
 CreatedOn datetime,
 ModifiedOn datetime,
)


create table Tbl_ShippingDetails(
ShippingDetailId int identity primary key,
MemberId int,
Adress varchar(500),
City varchar(500),
State varchar(500),
Country varchar(50),

Zipcode varchar(50),
OrderId int,
AmountPaid decimal,
PaymentType varchar(50),
foreign key (MemberId) references Tbl_Members(MemberId)
)

create table Tbl_Cart
(
CartId int identity primary key,
ProductId int,
MemberId int,
CartStatusId int,
foreign key (ProductId) references Tbl_Product(ProductId) 
)

create table Tbl_CartStatus(
CartStatusId int primary key,
CartStatus varchar(500),
)

create table Tbl_MemberRole
(
MemberRoleID int identity primary key,
memberid int,
RoleId int
)

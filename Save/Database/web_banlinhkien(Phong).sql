USE [master]
GO
/****** Object:  Database [db_weblinhkien]    Script Date: 12/05/2017 00:21:50 ******/
CREATE DATABASE [db_weblinhkien] ON  PRIMARY 
( NAME = N'db_weblinhkien', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\db_weblinhkien.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'db_weblinhkien_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\db_weblinhkien_log.LDF' , SIZE = 768KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [db_weblinhkien] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db_weblinhkien].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [db_weblinhkien] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [db_weblinhkien] SET ANSI_NULLS OFF
GO
ALTER DATABASE [db_weblinhkien] SET ANSI_PADDING OFF
GO
ALTER DATABASE [db_weblinhkien] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [db_weblinhkien] SET ARITHABORT OFF
GO
ALTER DATABASE [db_weblinhkien] SET AUTO_CLOSE ON
GO
ALTER DATABASE [db_weblinhkien] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [db_weblinhkien] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [db_weblinhkien] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [db_weblinhkien] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [db_weblinhkien] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [db_weblinhkien] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [db_weblinhkien] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [db_weblinhkien] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [db_weblinhkien] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [db_weblinhkien] SET  ENABLE_BROKER
GO
ALTER DATABASE [db_weblinhkien] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [db_weblinhkien] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [db_weblinhkien] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [db_weblinhkien] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [db_weblinhkien] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [db_weblinhkien] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [db_weblinhkien] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [db_weblinhkien] SET  READ_WRITE
GO
ALTER DATABASE [db_weblinhkien] SET RECOVERY SIMPLE
GO
ALTER DATABASE [db_weblinhkien] SET  MULTI_USER
GO
ALTER DATABASE [db_weblinhkien] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [db_weblinhkien] SET DB_CHAINING OFF
GO
USE [db_weblinhkien]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 12/05/2017 00:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[id_user] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](20) NOT NULL,
	[password] [varchar](30) NOT NULL,
	[fullname] [nvarchar](50) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[address] [ntext] NULL,
	[phone] [varchar](15) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_user] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GroupCategories]    Script Date: 12/05/2017 00:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupCategories](
	[id_group_category] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_group_category] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Banners]    Script Date: 12/05/2017 00:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banners](
	[id_banner] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[url] [ntext] NOT NULL,
	[url_banner] [ntext] NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_banner] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admin_Users]    Script Date: 12/05/2017 00:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Admin_Users](
	[id_admin_user] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](20) NOT NULL,
	[password] [varchar](30) NOT NULL,
	[fullname] [nvarchar](50) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[address] [ntext] NULL,
	[phone_number] [varchar](15) NULL,
	[role] [varchar](255) NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_admin_user] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Category]    Script Date: 12/05/2017 00:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id_category] [int] IDENTITY(1,1) NOT NULL,
	[id_group_category] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_category] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[addNewUserAdmin]    Script Date: 12/05/2017 00:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[addNewUserAdmin]
	@username varchar(20),
	@password varchar(50),
	@fullname nvarchar(50),
	@email varchar(255),
	@address ntext,
	@phone_number varchar(15),
	@role varchar(255),
	@created_at datetime,
	@updated_at datetime
as
begin
	insert into Admin_Users(username, password, fullname, email, address, phone_number, role, created_at, updated_at)
	values(@username, @password, @fullname, @email, @address, @phone_number, @role, @created_at, @updated_at);
end

--Insert accounts custommer
GO
/****** Object:  StoredProcedure [dbo].[addNewUser]    Script Date: 12/05/2017 00:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[addNewUser]
	@username varchar(20),
	@password varchar(50),
	@fullname nvarchar(50),
	@email varchar(255),
	@address ntext,
	@phone varchar(15),
	@created_at datetime,
	@updated_at datetime
as
begin
	insert into Users(username, password, fullname, email, address, phone, created_at, updated_at)
	values(@username, @password, @fullname, @email, @address, @phone, @created_at, @updated_at);
end

--Get all accounts admin
GO
/****** Object:  StoredProcedure [dbo].[getAllUsers]    Script Date: 12/05/2017 00:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getAllUsers]
as
begin
	select 
		id_user as 'ID', 
		username as 'Tài khoản',
		fullname as 'Họ và tên',
		email as 'Email',
		phone as 'Số điện thoại'
	from Users ;
end

--Login By account admin
GO
/****** Object:  StoredProcedure [dbo].[getAllGroupCategories]    Script Date: 12/05/2017 00:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[getAllGroupCategories]
as
begin
	select * from GroupCategories
end

-- Delete category
GO
/****** Object:  StoredProcedure [dbo].[getAllAdminUsers]    Script Date: 12/05/2017 00:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getAllAdminUsers]
as
begin
	select 
		id_admin_user as 'ID', 
		username as 'Tài khoản',
		fullname as 'Họ và tên',
		email as 'Email',
		phone_number as 'Số điện thoại',
		role as 'Chức vụ'
	from Admin_Users ;
end

--Get all accounts custommer
GO
/****** Object:  StoredProcedure [dbo].[loginByUserAdmin]    Script Date: 12/05/2017 00:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[loginByUserAdmin]
	@username varchar(20),
	@password varchar(50)
as
begin
	select * from Admin_Users where username=@username and password=@password	
end

--Login by account custommer
GO
/****** Object:  StoredProcedure [dbo].[loginByUser]    Script Date: 12/05/2017 00:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[loginByUser]
	@username varchar(20),
	@password varchar(50)
as
begin
	select * from Users where username=@username and password=@password	
end

--Get all products
GO
/****** Object:  Table [dbo].[Products]    Script Date: 12/05/2017 00:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Products](
	[id_product] [int] IDENTITY(1,1) NOT NULL,
	[id_category] [int] NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[price] [float] NULL,
	[status] [int] NULL,
	[promotion] [varchar](255) NULL,
	[tag] [varchar](255) NULL,
	[details] [ntext] NULL,
	[description] [ntext] NULL,
	[content] [ntext] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_product] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[deleteCategory]    Script Date: 12/05/2017 00:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[deleteCategory]
	@id int,
	@isRoot int
as
begin
	if (@isRoot = 0)
		delete from GroupCategories where GroupCategories.id_group_category=@id
	else
		delete from Category where Category.id_category=@id
end
GO
/****** Object:  StoredProcedure [dbo].[addNewCategory]    Script Date: 12/05/2017 00:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Add new category
create procedure [dbo].[addNewCategory]
	@parent int,
	@name nvarchar(50),
	@created_at datetime,
	@updated_at datetime
as
begin
	if (@parent = 0)
		insert into GroupCategories(name, created_at, updated_at) values(@name, @created_at, @updated_at);
	else
		insert into Category(id_category, name, created_at, updated_at) values(@parent, @name, @created_at, @updated_at);
end

-- Get all categories group
GO
/****** Object:  StoredProcedure [dbo].[getAllCategories]    Script Date: 12/05/2017 00:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Get all categories
create procedure [dbo].[getAllCategories]
as
begin
	select id_category,Category.name as category, GroupCategories.name as group_category, GroupCategories.id_group_category as id_group
	from Category, GroupCategories 
	where Category.id_group_category = GroupCategories.id_group_category
end

--Add new product
GO
/****** Object:  StoredProcedure [dbo].[addNewProduct]    Script Date: 12/05/2017 00:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[addNewProduct]
	@id_category int,
	@name nvarchar(100),
	@price float,
	@status int,
	@promotion nvarchar(255),
	@tag nvarchar(255),
	@details ntext,
	@description ntext,
	@content ntext,
	@created_at datetime,
	@updated_at datetime
as
begin
	insert into Products(id_category, name, price, status, promotion, tag, details, description, content, created_at, updated_at)
	values(@id_category, @name, @price, @status, @promotion, @tag, @details, @description, @content, @created_at, @updated_at);
end
GO
/****** Object:  StoredProcedure [dbo].[getAllPromotionProducts]    Script Date: 12/05/2017 00:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- get all products have promotion
create procedure [dbo].[getAllPromotionProducts]
as
begin
	select * from Products where promotion != NULL or promotion != '';
end
GO
/****** Object:  Table [dbo].[Images]    Script Date: 12/05/2017 00:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Images](
	[id_image] [int] IDENTITY(1,1) NOT NULL,
	[id_product] [int] NOT NULL,
	[link_image] [text] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_image] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[updateProduct]    Script Date: 12/05/2017 00:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- update product
create procedure [dbo].[updateProduct]
	@id_product int,
	@id_category int,
	@name nvarchar(255),
	@price float,
	@status int,
	@promotion varchar(255),
	@tags varchar(255),
	@details text,
	@description text,
	@content text,
	@updated_at datetime
as
begin
	update Products 
	set id_category=@id_category, name=@name, price=@price, status=@status, promotion=@promotion, tag=@tags, details=@details, description=@description, content=@content, updated_at=@updated_at
	where id_product=@id_product;
end
GO
/****** Object:  StoredProcedure [dbo].[getAllProducts]    Script Date: 12/05/2017 00:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[getAllProducts]
as
begin
	select Products.id_product, Category.name as category, Products.name, price, status, promotion, tag, details, description, content 
	from Products, Category
	where Products.id_category=Category.id_category
	order by id_product DESC
end
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 12/05/2017 00:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[id_order_detail] [int] IDENTITY(1,1) NOT NULL,
	[id_product] [int] NOT NULL,
	[quantity] [int] NULL,
	[current_price] [float] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_order_detail] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[getProductsByGroupCategory]    Script Date: 12/05/2017 00:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Get products filter by group_category
create procedure [dbo].[getProductsByGroupCategory]
	@group_category_id int
as
begin
	select Products.*, GroupCategories.name as group_category_name, GroupCategories.id_group_category as group_category_id
	from Products, Category, GroupCategories
	where
		Products.id_category=Category.id_category and
		Category.id_group_category=GroupCategories.id_group_category and
		GroupCategories.id_group_category=@group_category_id
end
GO
/****** Object:  StoredProcedure [dbo].[getProductsByCategoryAndGroup]    Script Date: 12/05/2017 00:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Get products filter by category and Group
create procedure [dbo].[getProductsByCategoryAndGroup]
	@category_id int,
	@group_category_id int
as
begin
	select Products.*, GroupCategories.name as group_category_name, GroupCategories.id_group_category as group_category_id
	from Products, Category, GroupCategories
	where
		Products.id_category=Category.id_category and
		Category.id_group_category=GroupCategories.id_group_category and
		Category.id_category=@category_id and
		GroupCategories.id_group_category=@group_category_id
end
GO
/****** Object:  StoredProcedure [dbo].[getProductsByCategory]    Script Date: 12/05/2017 00:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Get products filter by category
create procedure [dbo].[getProductsByCategory]
	@category_id int
as
begin
	select Products.*, GroupCategories.name as group_category_name, GroupCategories.id_group_category as group_category_id
	from Products, Category, GroupCategories
	where
		Products.id_category=Category.id_category and
		Category.id_group_category=GroupCategories.id_group_category and
		Category.id_category=@category_id
end
GO
/****** Object:  StoredProcedure [dbo].[getProductById]    Script Date: 12/05/2017 00:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Get product by id
create procedure [dbo].[getProductById]
	@id_product int
as
begin
	select * from Products where id_product = @id_product
end
GO
/****** Object:  StoredProcedure [dbo].[uploadImage]    Script Date: 12/05/2017 00:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Upload Image by id
create procedure [dbo].[uploadImage]
	@id_product int,
	@link_image text,
	@created_at datetime,
	@updated_at datetime
as
begin
	if (@id_product = -1)
		insert into Images (id_product, link_image, created_at, updated_at) values((select MAX(id_product) from Products), @link_image, @created_at, @updated_at);
	else
		insert into Images (id_product, link_image, created_at, updated_at) values(@id_product, @link_image, @created_at, @updated_at);
end

-- Delete product
GO
/****** Object:  StoredProcedure [dbo].[getImagesByIdProduct]    Script Date: 12/05/2017 00:21:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Get Images by id product
create procedure [dbo].[getImagesByIdProduct]
	@id_product int
as
begin
	select * from Images where Images.id_product=@id_product; 
end

--Get products in search by name
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 12/05/2017 00:21:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Orders](
	[id_order] [int] NOT NULL,
	[id_order_detail] [int] NOT NULL,
	[id_user] [int] NOT NULL,
	[status] [int] NULL,
	[payment_method] [int] NULL,
	[coupon] [varchar](6) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_order] ASC,
	[id_order_detail] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[getProductsByPrice]    Script Date: 12/05/2017 00:21:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[getProductsByPrice]
	@min_price int,
	@max_price int
as
begin
	select Products.*, Images.link_image
	from Products, Images 
	where Products.price >=@min_price and price <@max_price and Images.id_product=Products.id_product
end
GO
/****** Object:  StoredProcedure [dbo].[getAllProductsInSearch]    Script Date: 12/05/2017 00:21:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getAllProductsInSearch]
	@q NVARCHAR(255)
as
begin
	select Products.id_product, Category.name as category, Products.name, price, status, promotion, tag, details, description, content, Images.link_image 
	from Products, Category, Images 
	where Products.id_category=Category.id_category and Products.name like '%'+@q+'%' and Images.id_product=Products.id_product
	order by id_product DESC
end
--Get products filter by price
GO
/****** Object:  StoredProcedure [dbo].[deleteProduct]    Script Date: 12/05/2017 00:21:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[deleteProduct]
	@id int
as
begin
	delete from Images where Images.id_product=@id;
	delete from Products where Products.id_product=@id;
end
GO
/****** Object:  StoredProcedure [dbo].[deleteImageById]    Script Date: 12/05/2017 00:21:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- delete Image by id
create procedure [dbo].[deleteImageById]
	@id_image int
as
begin
	delete from Images where id_image=@id_image
end
-- select * from Images
GO
/****** Object:  Default [DF__Users__created_a__2F10007B]    Script Date: 12/05/2017 00:21:51 ******/
ALTER TABLE [dbo].[Users] ADD  DEFAULT (NULL) FOR [created_at]
GO
/****** Object:  Default [DF__Users__updated_a__300424B4]    Script Date: 12/05/2017 00:21:51 ******/
ALTER TABLE [dbo].[Users] ADD  DEFAULT (NULL) FOR [updated_at]
GO
/****** Object:  Default [DF__GroupCate__creat__014935CB]    Script Date: 12/05/2017 00:21:51 ******/
ALTER TABLE [dbo].[GroupCategories] ADD  DEFAULT (NULL) FOR [created_at]
GO
/****** Object:  Default [DF__GroupCate__updat__023D5A04]    Script Date: 12/05/2017 00:21:51 ******/
ALTER TABLE [dbo].[GroupCategories] ADD  DEFAULT (NULL) FOR [updated_at]
GO
/****** Object:  Default [DF__Banners__created__182C9B23]    Script Date: 12/05/2017 00:21:51 ******/
ALTER TABLE [dbo].[Banners] ADD  DEFAULT (NULL) FOR [created_at]
GO
/****** Object:  Default [DF__Banners__updated__1920BF5C]    Script Date: 12/05/2017 00:21:51 ******/
ALTER TABLE [dbo].[Banners] ADD  DEFAULT (NULL) FOR [updated_at]
GO
/****** Object:  Default [DF__Admin_Use__creat__239E4DCF]    Script Date: 12/05/2017 00:21:51 ******/
ALTER TABLE [dbo].[Admin_Users] ADD  DEFAULT (NULL) FOR [created_at]
GO
/****** Object:  Default [DF__Admin_Use__updat__24927208]    Script Date: 12/05/2017 00:21:51 ******/
ALTER TABLE [dbo].[Admin_Users] ADD  DEFAULT (NULL) FOR [updated_at]
GO
/****** Object:  Default [DF__Category__create__07020F21]    Script Date: 12/05/2017 00:21:51 ******/
ALTER TABLE [dbo].[Category] ADD  DEFAULT (NULL) FOR [created_at]
GO
/****** Object:  Default [DF__Category__update__07F6335A]    Script Date: 12/05/2017 00:21:51 ******/
ALTER TABLE [dbo].[Category] ADD  DEFAULT (NULL) FOR [updated_at]
GO
/****** Object:  Default [DF__Products__create__0CBAE877]    Script Date: 12/05/2017 00:21:51 ******/
ALTER TABLE [dbo].[Products] ADD  DEFAULT (NULL) FOR [created_at]
GO
/****** Object:  Default [DF__Products__update__0DAF0CB0]    Script Date: 12/05/2017 00:21:51 ******/
ALTER TABLE [dbo].[Products] ADD  DEFAULT (NULL) FOR [updated_at]
GO
/****** Object:  Default [DF__Images__created___1273C1CD]    Script Date: 12/05/2017 00:21:51 ******/
ALTER TABLE [dbo].[Images] ADD  DEFAULT (NULL) FOR [created_at]
GO
/****** Object:  Default [DF__Images__updated___1367E606]    Script Date: 12/05/2017 00:21:51 ******/
ALTER TABLE [dbo].[Images] ADD  DEFAULT (NULL) FOR [updated_at]
GO
/****** Object:  Default [DF__OrderDeta__creat__34C8D9D1]    Script Date: 12/05/2017 00:21:51 ******/
ALTER TABLE [dbo].[OrderDetail] ADD  DEFAULT (NULL) FOR [created_at]
GO
/****** Object:  Default [DF__OrderDeta__updat__35BCFE0A]    Script Date: 12/05/2017 00:21:51 ******/
ALTER TABLE [dbo].[OrderDetail] ADD  DEFAULT (NULL) FOR [updated_at]
GO
/****** Object:  Default [DF__Orders__created___3A81B327]    Script Date: 12/05/2017 00:21:52 ******/
ALTER TABLE [dbo].[Orders] ADD  DEFAULT (NULL) FOR [created_at]
GO
/****** Object:  Default [DF__Orders__updated___3B75D760]    Script Date: 12/05/2017 00:21:52 ******/
ALTER TABLE [dbo].[Orders] ADD  DEFAULT (NULL) FOR [updated_at]
GO
/****** Object:  ForeignKey [fk_group_category_id]    Script Date: 12/05/2017 00:21:51 ******/
ALTER TABLE [dbo].[Category]  WITH CHECK ADD  CONSTRAINT [fk_group_category_id] FOREIGN KEY([id_group_category])
REFERENCES [dbo].[GroupCategories] ([id_group_category])
GO
ALTER TABLE [dbo].[Category] CHECK CONSTRAINT [fk_group_category_id]
GO
/****** Object:  ForeignKey [fk_product_category_id]    Script Date: 12/05/2017 00:21:51 ******/
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [fk_product_category_id] FOREIGN KEY([id_category])
REFERENCES [dbo].[Category] ([id_category])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [fk_product_category_id]
GO
/****** Object:  ForeignKey [fk_image_id]    Script Date: 12/05/2017 00:21:51 ******/
ALTER TABLE [dbo].[Images]  WITH CHECK ADD  CONSTRAINT [fk_image_id] FOREIGN KEY([id_product])
REFERENCES [dbo].[Products] ([id_product])
GO
ALTER TABLE [dbo].[Images] CHECK CONSTRAINT [fk_image_id]
GO
/****** Object:  ForeignKey [fk_product_id]    Script Date: 12/05/2017 00:21:51 ******/
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [fk_product_id] FOREIGN KEY([id_product])
REFERENCES [dbo].[Products] ([id_product])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [fk_product_id]
GO
/****** Object:  ForeignKey [fk_order_detail_id]    Script Date: 12/05/2017 00:21:52 ******/
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [fk_order_detail_id] FOREIGN KEY([id_order_detail])
REFERENCES [dbo].[OrderDetail] ([id_order_detail])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [fk_order_detail_id]
GO
/****** Object:  ForeignKey [fk_orders_user_id]    Script Date: 12/05/2017 00:21:52 ******/
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [fk_orders_user_id] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id_user])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [fk_orders_user_id]
GO

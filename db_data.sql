/*
 Navicat Premium Data Transfer

 Source Server         : Master Server
 Source Server Type    : SQL Server
 Source Server Version : 13001601
 Source Host           : localhost:1433
 Source Catalog        : DEMO
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 13001601
 File Encoding         : 65001

 Date: 17/04/2021 04:42:45
*/


-- ----------------------------
-- Table structure for admin
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[admin]') AND type IN ('U'))
	DROP TABLE [dbo].[admin]
GO

CREATE TABLE [dbo].[admin] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [create_by] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [created_date] date  NULL,
  [password] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_by] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [updated_date] date  NULL,
  [username] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [isdelete] bit  NULL,
  [role] int  NULL
)
GO

ALTER TABLE [dbo].[admin] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of admin
-- ----------------------------
SET IDENTITY_INSERT [dbo].[admin] ON
GO

INSERT INTO [dbo].[admin] ([id], [create_by], [created_date], [password], [update_by], [updated_date], [username], [isdelete], [role]) VALUES (N'1', NULL, N'2021-03-04', N'1234567', NULL, NULL, N'admin@gmail.com', N'0', N'1')
GO

INSERT INTO [dbo].[admin] ([id], [create_by], [created_date], [password], [update_by], [updated_date], [username], [isdelete], [role]) VALUES (N'2', N'admin@gmail.com', N'2021-03-04', N'1234567', N'admin@gmail.com', N'2021-04-16', N'admin1@gmail.com', N'0', N'0')
GO

INSERT INTO [dbo].[admin] ([id], [create_by], [created_date], [password], [update_by], [updated_date], [username], [isdelete], [role]) VALUES (N'3', N'admin@gmail.com', N'2021-03-04', N'1234567', N'admin@gmail.com', N'2021-03-04', N'admin2@gmail.com', N'0', N'0')
GO

INSERT INTO [dbo].[admin] ([id], [create_by], [created_date], [password], [update_by], [updated_date], [username], [isdelete], [role]) VALUES (N'4', N'admin@gmail.com', N'2021-03-04', N'1234567', N'admin@gmail.com', N'2021-03-04', N'admin3@gmail.com', N'1', N'0')
GO

INSERT INTO [dbo].[admin] ([id], [create_by], [created_date], [password], [update_by], [updated_date], [username], [isdelete], [role]) VALUES (N'5', N'admin@gmail.com', N'2021-04-14', N'123456789', NULL, NULL, N'phamphuc@gmail.com', N'0', N'1')
GO

INSERT INTO [dbo].[admin] ([id], [create_by], [created_date], [password], [update_by], [updated_date], [username], [isdelete], [role]) VALUES (N'6', N'admin@gmail.com', N'2021-04-17', N'1234567', NULL, NULL, N'minhquang10ks@gmail.com', N'0', N'1')
GO

INSERT INTO [dbo].[admin] ([id], [create_by], [created_date], [password], [update_by], [updated_date], [username], [isdelete], [role]) VALUES (N'7', N'admin@gmail.com', N'2021-04-17', N'1234567', NULL, NULL, N'nguyentienanh@gmail.com', N'0', N'1')
GO

INSERT INTO [dbo].[admin] ([id], [create_by], [created_date], [password], [update_by], [updated_date], [username], [isdelete], [role]) VALUES (N'8', N'admin@gmail.com', N'2021-04-17', N'1234567', NULL, NULL, N'nguyencuuquangtuan@gmail.com', N'0', N'1')
GO

SET IDENTITY_INSERT [dbo].[admin] OFF
GO


-- ----------------------------
-- Table structure for cart
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[cart]') AND type IN ('U'))
	DROP TABLE [dbo].[cart]
GO

CREATE TABLE [dbo].[cart] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [created_date] date  NULL,
  [total] float(53)  NULL,
  [update_date] date  NULL,
  [user_id] int  NULL
)
GO

ALTER TABLE [dbo].[cart] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of cart
-- ----------------------------
SET IDENTITY_INSERT [dbo].[cart] ON
GO

INSERT INTO [dbo].[cart] ([id], [created_date], [total], [update_date], [user_id]) VALUES (N'4', N'2021-03-04', N'9700000', N'2021-03-04', N'4')
GO

INSERT INTO [dbo].[cart] ([id], [created_date], [total], [update_date], [user_id]) VALUES (N'5', N'2021-04-02', N'11160000', N'2021-04-02', N'2')
GO

INSERT INTO [dbo].[cart] ([id], [created_date], [total], [update_date], [user_id]) VALUES (N'13', N'2021-04-14', N'83220000', N'2021-04-15', N'22')
GO

INSERT INTO [dbo].[cart] ([id], [created_date], [total], [update_date], [user_id]) VALUES (N'19', N'2021-04-16', N'5340000', N'2021-04-16', N'24')
GO

INSERT INTO [dbo].[cart] ([id], [created_date], [total], [update_date], [user_id]) VALUES (N'26', N'2021-04-17', N'0', N'2021-04-17', N'34')
GO

INSERT INTO [dbo].[cart] ([id], [created_date], [total], [update_date], [user_id]) VALUES (N'28', N'2021-04-17', N'0', N'2021-04-17', N'29')
GO

INSERT INTO [dbo].[cart] ([id], [created_date], [total], [update_date], [user_id]) VALUES (N'29', N'2021-04-17', N'0', N'2021-04-17', N'1')
GO

SET IDENTITY_INSERT [dbo].[cart] OFF
GO


-- ----------------------------
-- Table structure for cart_detail
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[cart_detail]') AND type IN ('U'))
	DROP TABLE [dbo].[cart_detail]
GO

CREATE TABLE [dbo].[cart_detail] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [product_price] float(53)  NULL,
  [quantity] int  NULL,
  [total] float(53)  NULL,
  [update_date] date  NULL,
  [cart_id] int  NULL,
  [product_id] int  NULL
)
GO

ALTER TABLE [dbo].[cart_detail] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of cart_detail
-- ----------------------------
SET IDENTITY_INSERT [dbo].[cart_detail] ON
GO

INSERT INTO [dbo].[cart_detail] ([id], [product_price], [quantity], [total], [update_date], [cart_id], [product_id]) VALUES (N'8', N'1310000', N'1', N'1310000', N'2021-03-04', N'4', N'6')
GO

INSERT INTO [dbo].[cart_detail] ([id], [product_price], [quantity], [total], [update_date], [cart_id], [product_id]) VALUES (N'10', N'5740000', N'1', N'5740000', N'2021-04-02', N'5', N'96')
GO

INSERT INTO [dbo].[cart_detail] ([id], [product_price], [quantity], [total], [update_date], [cart_id], [product_id]) VALUES (N'11', N'5420000', N'1', N'5420000', N'2021-04-02', N'5', N'82')
GO

INSERT INTO [dbo].[cart_detail] ([id], [product_price], [quantity], [total], [update_date], [cart_id], [product_id]) VALUES (N'38', N'9200000', N'3', N'27600000', N'2021-04-15', N'13', N'99')
GO

INSERT INTO [dbo].[cart_detail] ([id], [product_price], [quantity], [total], [update_date], [cart_id], [product_id]) VALUES (N'50', N'5340000', N'1', N'5340000', N'2021-04-16', N'19', N'82')
GO

SET IDENTITY_INSERT [dbo].[cart_detail] OFF
GO


-- ----------------------------
-- Table structure for comment
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[comment]') AND type IN ('U'))
	DROP TABLE [dbo].[comment]
GO

CREATE TABLE [dbo].[comment] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [content] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [created_date] date  NULL,
  [rate] int  NULL,
  [update_date] date  NULL,
  [isdelete] bit  NULL,
  [user_id] int  NULL,
  [product_id] int  NULL
)
GO

ALTER TABLE [dbo].[comment] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of comment
-- ----------------------------
SET IDENTITY_INSERT [dbo].[comment] ON
GO

INSERT INTO [dbo].[comment] ([id], [content], [created_date], [rate], [update_date], [isdelete], [user_id], [product_id]) VALUES (N'1', N'Sản Phẩm tốt', N'2021-03-04', N'5', N'2021-03-04', N'0', N'1', N'1')
GO

INSERT INTO [dbo].[comment] ([id], [content], [created_date], [rate], [update_date], [isdelete], [user_id], [product_id]) VALUES (N'2', N'Bình Thường', N'2021-03-04', N'2', N'2021-03-04', N'0', N'1', N'2')
GO

INSERT INTO [dbo].[comment] ([id], [content], [created_date], [rate], [update_date], [isdelete], [user_id], [product_id]) VALUES (N'3', N'Sản Phẩm Kém chất lượng', N'2021-03-04', N'1', N'2021-03-04', N'0', N'2', N'2')
GO

INSERT INTO [dbo].[comment] ([id], [content], [created_date], [rate], [update_date], [isdelete], [user_id], [product_id]) VALUES (N'5', N'Chất lượng sản phẩm quá tệ', N'2021-03-18', N'5', N'2021-03-18', N'0', N'1', N'5')
GO

INSERT INTO [dbo].[comment] ([id], [content], [created_date], [rate], [update_date], [isdelete], [user_id], [product_id]) VALUES (N'6', N'Sản Phẩm tốt, chất lượng', N'2021-03-30', N'5', NULL, N'0', N'10', N'2')
GO

INSERT INTO [dbo].[comment] ([id], [content], [created_date], [rate], [update_date], [isdelete], [user_id], [product_id]) VALUES (N'7', N'Mẫu mã đẹp', N'2021-03-30', N'5', NULL, N'0', N'11', N'2')
GO

INSERT INTO [dbo].[comment] ([id], [content], [created_date], [rate], [update_date], [isdelete], [user_id], [product_id]) VALUES (N'8', N'Tạm chấp nhận được', N'2021-03-30', N'4', NULL, N'0', N'12', N'2')
GO

INSERT INTO [dbo].[comment] ([id], [content], [created_date], [rate], [update_date], [isdelete], [user_id], [product_id]) VALUES (N'9', N'sản phẩm tốt nhưng giá hơi cao', N'2021-03-30', N'4', NULL, N'0', N'13', N'2')
GO

INSERT INTO [dbo].[comment] ([id], [content], [created_date], [rate], [update_date], [isdelete], [user_id], [product_id]) VALUES (N'10', N'Không giống trong hình', N'2021-03-30', N'2', NULL, N'0', N'14', N'2')
GO

INSERT INTO [dbo].[comment] ([id], [content], [created_date], [rate], [update_date], [isdelete], [user_id], [product_id]) VALUES (N'11', N'Sản Phẩm kém chất lượng', N'2021-03-30', N'1', NULL, N'0', N'15', N'2')
GO

INSERT INTO [dbo].[comment] ([id], [content], [created_date], [rate], [update_date], [isdelete], [user_id], [product_id]) VALUES (N'12', N'Mẫu mã đẹp chất lượng tốt', N'2021-03-30', N'5', NULL, N'0', N'16', N'2')
GO

INSERT INTO [dbo].[comment] ([id], [content], [created_date], [rate], [update_date], [isdelete], [user_id], [product_id]) VALUES (N'13', N'Sản phẩm tốt', N'2021-03-30', N'5', NULL, N'0', N'17', N'2')
GO

INSERT INTO [dbo].[comment] ([id], [content], [created_date], [rate], [update_date], [isdelete], [user_id], [product_id]) VALUES (N'14', N'Sản phẩm đẹp, bền, giao hàng nhanh', N'2021-03-30', N'5', NULL, N'0', N'18', N'2')
GO

INSERT INTO [dbo].[comment] ([id], [content], [created_date], [rate], [update_date], [isdelete], [user_id], [product_id]) VALUES (N'15', N'Giao hàng nhanh, chất lượng thì chưa biết', N'2021-03-30', N'5', NULL, N'0', N'19', N'2')
GO

INSERT INTO [dbo].[comment] ([id], [content], [created_date], [rate], [update_date], [isdelete], [user_id], [product_id]) VALUES (N'16', N'Mẫu mã đẹp tạm cho 5 sao', N'2021-03-30', N'5', NULL, N'0', N'20', N'2')
GO

INSERT INTO [dbo].[comment] ([id], [content], [created_date], [rate], [update_date], [isdelete], [user_id], [product_id]) VALUES (N'17', N'Mọi thứ đều tốt', N'2021-03-30', N'5', NULL, N'0', N'21', N'2')
GO

INSERT INTO [dbo].[comment] ([id], [content], [created_date], [rate], [update_date], [isdelete], [user_id], [product_id]) VALUES (N'18', N'Sản phẩm chất lượng tốt', N'2021-04-10', N'0', N'2021-04-10', N'0', N'22', N'2')
GO

INSERT INTO [dbo].[comment] ([id], [content], [created_date], [rate], [update_date], [isdelete], [user_id], [product_id]) VALUES (N'19', N'Giao hàng nhanh, nhân viên thân thiện', N'2021-04-10', N'0', N'2021-04-10', N'0', N'22', N'6')
GO

INSERT INTO [dbo].[comment] ([id], [content], [created_date], [rate], [update_date], [isdelete], [user_id], [product_id]) VALUES (N'20', N'Chất lượng sản phẩm tốt, giá rẻ, bảo hành uy tín', N'2021-04-10', N'5', N'2021-04-10', N'0', N'22', N'2')
GO

INSERT INTO [dbo].[comment] ([id], [content], [created_date], [rate], [update_date], [isdelete], [user_id], [product_id]) VALUES (N'21', N'Sản phẩm chất lượng, giao hàng nhanh, nhân viên nhiệt tình', N'2021-04-16', N'3', N'2021-04-16', N'0', N'24', N'32')
GO

SET IDENTITY_INSERT [dbo].[comment] OFF
GO


-- ----------------------------
-- Table structure for email
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[email]') AND type IN ('U'))
	DROP TABLE [dbo].[email]
GO

CREATE TABLE [dbo].[email] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [created_date] date  NULL,
  [email] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [isdelete] bit  NULL
)
GO

ALTER TABLE [dbo].[email] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of email
-- ----------------------------
SET IDENTITY_INSERT [dbo].[email] ON
GO

INSERT INTO [dbo].[email] ([id], [created_date], [email], [isdelete]) VALUES (N'1', N'2021-03-04', N'tranvanlong@gmail.com', N'0')
GO

INSERT INTO [dbo].[email] ([id], [created_date], [email], [isdelete]) VALUES (N'2', N'2021-03-04', N'levanluyen@gmail.com', N'0')
GO

INSERT INTO [dbo].[email] ([id], [created_date], [email], [isdelete]) VALUES (N'3', N'2021-03-04', N'nguyentrongnhan@gmail.com', N'0')
GO

INSERT INTO [dbo].[email] ([id], [created_date], [email], [isdelete]) VALUES (N'4', N'2021-03-04', N'tranvansinh@gmail.com', N'0')
GO

INSERT INTO [dbo].[email] ([id], [created_date], [email], [isdelete]) VALUES (N'5', N'2021-03-18', N'emaidgia100@gmail.com', N'0')
GO

SET IDENTITY_INSERT [dbo].[email] OFF
GO


-- ----------------------------
-- Table structure for invoice
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[invoice]') AND type IN ('U'))
	DROP TABLE [dbo].[invoice]
GO

CREATE TABLE [dbo].[invoice] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [code] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [created_date] date  NULL,
  [payment] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [status] int  NULL,
  [total] float(53)  NULL,
  [update_date] date  NULL,
  [update_by] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [isdelete] bit  NULL,
  [user_id] int  NULL,
  [voucher_id] int  NULL
)
GO

ALTER TABLE [dbo].[invoice] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of invoice
-- ----------------------------
SET IDENTITY_INSERT [dbo].[invoice] ON
GO

INSERT INTO [dbo].[invoice] ([id], [code], [created_date], [payment], [status], [total], [update_date], [update_by], [isdelete], [user_id], [voucher_id]) VALUES (N'1', N'HD01', N'2021-03-04', N'Trực Tiếp', N'4', N'10000000', N'2021-03-04', N'admin@gmail.com', N'0', N'1', N'1')
GO

INSERT INTO [dbo].[invoice] ([id], [code], [created_date], [payment], [status], [total], [update_date], [update_by], [isdelete], [user_id], [voucher_id]) VALUES (N'2', N'HD02', N'2021-03-04', N'Thẻ', N'3', N'9000000', N'2021-03-04', N'admin@gmail.com', N'0', N'1', NULL)
GO

INSERT INTO [dbo].[invoice] ([id], [code], [created_date], [payment], [status], [total], [update_date], [update_by], [isdelete], [user_id], [voucher_id]) VALUES (N'3', N'HD03', N'2021-03-04', N'Thẻ', N'3', N'9000000', N'2021-04-13', N'admin@gmail.com', N'0', N'2', N'1')
GO

INSERT INTO [dbo].[invoice] ([id], [code], [created_date], [payment], [status], [total], [update_date], [update_by], [isdelete], [user_id], [voucher_id]) VALUES (N'4', N'HD04', N'2021-03-04', N'Trực Tiếp', N'2', N'9000000', N'2021-03-04', N'admin@gmail.com', N'0', N'2', NULL)
GO

INSERT INTO [dbo].[invoice] ([id], [code], [created_date], [payment], [status], [total], [update_date], [update_by], [isdelete], [user_id], [voucher_id]) VALUES (N'5', N'HD05', N'2021-03-18', N'Trực tiếp', N'4', N'1000000', N'2021-03-18', N'System', N'0', N'3', N'1')
GO

INSERT INTO [dbo].[invoice] ([id], [code], [created_date], [payment], [status], [total], [update_date], [update_by], [isdelete], [user_id], [voucher_id]) VALUES (N'6', N'HD06', N'2021-03-30', N'Tiền Mặc', N'3', N'10000000', NULL, NULL, N'0', N'10', NULL)
GO

INSERT INTO [dbo].[invoice] ([id], [code], [created_date], [payment], [status], [total], [update_date], [update_by], [isdelete], [user_id], [voucher_id]) VALUES (N'7', N'HD07', N'2021-03-30', N'Tiền Mặc', N'3', N'99000000', NULL, NULL, N'0', N'11', NULL)
GO

INSERT INTO [dbo].[invoice] ([id], [code], [created_date], [payment], [status], [total], [update_date], [update_by], [isdelete], [user_id], [voucher_id]) VALUES (N'8', N'HD08', N'2021-03-30', N'Tiền Mặc', N'3', N'99000000', NULL, NULL, N'0', N'12', NULL)
GO

INSERT INTO [dbo].[invoice] ([id], [code], [created_date], [payment], [status], [total], [update_date], [update_by], [isdelete], [user_id], [voucher_id]) VALUES (N'9', N'HD09', N'2021-03-30', N'Tiền Mặc', N'3', N'99000000', NULL, NULL, N'0', N'13', NULL)
GO

INSERT INTO [dbo].[invoice] ([id], [code], [created_date], [payment], [status], [total], [update_date], [update_by], [isdelete], [user_id], [voucher_id]) VALUES (N'10', N'HD10', N'2021-03-30', N'Tiền Mặc', N'3', N'99000000', NULL, NULL, N'0', N'14', NULL)
GO

INSERT INTO [dbo].[invoice] ([id], [code], [created_date], [payment], [status], [total], [update_date], [update_by], [isdelete], [user_id], [voucher_id]) VALUES (N'11', N'HD11', N'2021-03-30', N'Tiền Mặc', N'3', N'99000000', NULL, NULL, N'0', N'15', NULL)
GO

INSERT INTO [dbo].[invoice] ([id], [code], [created_date], [payment], [status], [total], [update_date], [update_by], [isdelete], [user_id], [voucher_id]) VALUES (N'12', N'HD12', N'2021-03-30', N'Tiền Mặc', N'3', N'99000000', NULL, NULL, N'0', N'16', NULL)
GO

INSERT INTO [dbo].[invoice] ([id], [code], [created_date], [payment], [status], [total], [update_date], [update_by], [isdelete], [user_id], [voucher_id]) VALUES (N'13', N'HD13', N'2021-03-30', N'Tiền Mặc', N'3', N'99000000', NULL, NULL, N'0', N'17', NULL)
GO

INSERT INTO [dbo].[invoice] ([id], [code], [created_date], [payment], [status], [total], [update_date], [update_by], [isdelete], [user_id], [voucher_id]) VALUES (N'14', N'HD14', N'2021-03-30', N'Tiền Mặc', N'3', N'99000000', NULL, NULL, N'0', N'18', NULL)
GO

INSERT INTO [dbo].[invoice] ([id], [code], [created_date], [payment], [status], [total], [update_date], [update_by], [isdelete], [user_id], [voucher_id]) VALUES (N'15', N'HD15', N'2021-03-30', N'Tiền Mặc', N'3', N'99000000', NULL, NULL, N'0', N'19', NULL)
GO

INSERT INTO [dbo].[invoice] ([id], [code], [created_date], [payment], [status], [total], [update_date], [update_by], [isdelete], [user_id], [voucher_id]) VALUES (N'16', N'HD16', N'2021-03-30', N'Tiền Mặc', N'3', N'99000000', NULL, NULL, N'0', N'20', NULL)
GO

INSERT INTO [dbo].[invoice] ([id], [code], [created_date], [payment], [status], [total], [update_date], [update_by], [isdelete], [user_id], [voucher_id]) VALUES (N'17', N'HD17', N'2021-03-30', N'Tiền Mặc', N'3', N'99000000', NULL, NULL, N'0', N'21', NULL)
GO

INSERT INTO [dbo].[invoice] ([id], [code], [created_date], [payment], [status], [total], [update_date], [update_by], [isdelete], [user_id], [voucher_id]) VALUES (N'18', NULL, N'2021-03-31', N'Trực tiếp', N'2', N'13849000', N'2021-04-13', NULL, N'0', N'2', NULL)
GO

INSERT INTO [dbo].[invoice] ([id], [code], [created_date], [payment], [status], [total], [update_date], [update_by], [isdelete], [user_id], [voucher_id]) VALUES (N'19', NULL, N'2021-04-07', N'Trực tiếp', N'2', N'4794000', N'2021-04-13', N'admin@gmail.com', N'0', N'9', NULL)
GO

INSERT INTO [dbo].[invoice] ([id], [code], [created_date], [payment], [status], [total], [update_date], [update_by], [isdelete], [user_id], [voucher_id]) VALUES (N'20', NULL, N'2021-04-08', N'Trực tiếp', N'2', N'17970000', N'2021-04-13', N'admin@gmail.com', N'0', N'22', NULL)
GO

INSERT INTO [dbo].[invoice] ([id], [code], [created_date], [payment], [status], [total], [update_date], [update_by], [isdelete], [user_id], [voucher_id]) VALUES (N'21', NULL, N'2021-04-10', N'Trực tiếp', N'4', N'398445984', N'2021-04-13', NULL, N'0', N'22', NULL)
GO

INSERT INTO [dbo].[invoice] ([id], [code], [created_date], [payment], [status], [total], [update_date], [update_by], [isdelete], [user_id], [voucher_id]) VALUES (N'22', NULL, N'2021-04-10', N'Trực tiếp', N'4', N'4794000', N'2021-04-13', NULL, N'0', N'22', NULL)
GO

INSERT INTO [dbo].[invoice] ([id], [code], [created_date], [payment], [status], [total], [update_date], [update_by], [isdelete], [user_id], [voucher_id]) VALUES (N'23', NULL, N'2021-04-11', N'Trực tiếp', N'1', N'26180000', N'2021-04-13', NULL, N'0', N'1', NULL)
GO

INSERT INTO [dbo].[invoice] ([id], [code], [created_date], [payment], [status], [total], [update_date], [update_by], [isdelete], [user_id], [voucher_id]) VALUES (N'24', NULL, N'2021-04-14', N'Trực tiếp', N'2', N'1370279936', N'2021-04-14', N'admin@gmail.com', N'0', N'22', NULL)
GO

INSERT INTO [dbo].[invoice] ([id], [code], [created_date], [payment], [status], [total], [update_date], [update_by], [isdelete], [user_id], [voucher_id]) VALUES (N'25', NULL, N'2021-04-16', N'Trực tiếp', N'3', N'1034790080', N'2021-04-16', N'admin@gmail.com', N'0', N'1', NULL)
GO

INSERT INTO [dbo].[invoice] ([id], [code], [created_date], [payment], [status], [total], [update_date], [update_by], [isdelete], [user_id], [voucher_id]) VALUES (N'26', NULL, N'2021-04-16', N'Trực tiếp', N'3', N'64170000', N'2021-04-16', N'admin@gmail.com', N'0', N'24', NULL)
GO

INSERT INTO [dbo].[invoice] ([id], [code], [created_date], [payment], [status], [total], [update_date], [update_by], [isdelete], [user_id], [voucher_id]) VALUES (N'27', NULL, N'2021-04-16', N'Trực tiếp', N'3', N'4090000', N'2021-04-16', N'admin@gmail.com', N'0', N'24', NULL)
GO

INSERT INTO [dbo].[invoice] ([id], [code], [created_date], [payment], [status], [total], [update_date], [update_by], [isdelete], [user_id], [voucher_id]) VALUES (N'29', N'LvwWK', N'2021-04-16', N'Trực tiếp', N'3', N'72000000', N'2021-04-16', N'admin@gmail.com', N'0', N'24', NULL)
GO

INSERT INTO [dbo].[invoice] ([id], [code], [created_date], [payment], [status], [total], [update_date], [update_by], [isdelete], [user_id], [voucher_id]) VALUES (N'30', N'OiEPv', N'2021-04-16', N'Trực tiếp', N'0', N'213320000', N'2021-04-16', N'System', N'0', N'29', NULL)
GO

INSERT INTO [dbo].[invoice] ([id], [code], [created_date], [payment], [status], [total], [update_date], [update_by], [isdelete], [user_id], [voucher_id]) VALUES (N'31', N'p7zMU', N'2021-04-16', N'Trực tiếp', N'0', N'2844000', N'2021-04-16', N'System', N'0', N'9', NULL)
GO

INSERT INTO [dbo].[invoice] ([id], [code], [created_date], [payment], [status], [total], [update_date], [update_by], [isdelete], [user_id], [voucher_id]) VALUES (N'33', N'kMzeb', N'2021-04-17', N'Trực tiếp', N'0', N'18100000', N'2021-04-17', N'System', N'0', N'34', NULL)
GO

INSERT INTO [dbo].[invoice] ([id], [code], [created_date], [payment], [status], [total], [update_date], [update_by], [isdelete], [user_id], [voucher_id]) VALUES (N'34', N'wtnok', N'2021-04-17', N'Trực tiếp', N'0', N'160740000', N'2021-04-17', N'System', N'0', N'29', NULL)
GO

INSERT INTO [dbo].[invoice] ([id], [code], [created_date], [payment], [status], [total], [update_date], [update_by], [isdelete], [user_id], [voucher_id]) VALUES (N'35', N'DJsPh', N'2021-04-17', N'Trực tiếp', N'0', N'234000000', N'2021-04-17', N'System', N'0', N'29', NULL)
GO

INSERT INTO [dbo].[invoice] ([id], [code], [created_date], [payment], [status], [total], [update_date], [update_by], [isdelete], [user_id], [voucher_id]) VALUES (N'36', N'8Tbv3', N'2021-04-17', N'Trực tiếp', N'0', N'340000000', N'2021-04-17', N'System', N'0', N'1', NULL)
GO

SET IDENTITY_INSERT [dbo].[invoice] OFF
GO


-- ----------------------------
-- Table structure for invoice_detail
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[invoice_detail]') AND type IN ('U'))
	DROP TABLE [dbo].[invoice_detail]
GO

CREATE TABLE [dbo].[invoice_detail] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [created_date] date  NULL,
  [product_price] int  NULL,
  [quantity] int  NULL,
  [total] float(53)  NULL,
  [update_date] date  NULL,
  [invoice_id] int  NULL,
  [product_id] int  NULL,
  [price_sale] float(53)  NULL
)
GO

ALTER TABLE [dbo].[invoice_detail] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of invoice_detail
-- ----------------------------
SET IDENTITY_INSERT [dbo].[invoice_detail] ON
GO

INSERT INTO [dbo].[invoice_detail] ([id], [created_date], [product_price], [quantity], [total], [update_date], [invoice_id], [product_id], [price_sale]) VALUES (N'1', N'2021-03-04', N'1000000', N'1', N'1000000', N'2021-03-04', N'1', N'1', N'0')
GO

INSERT INTO [dbo].[invoice_detail] ([id], [created_date], [product_price], [quantity], [total], [update_date], [invoice_id], [product_id], [price_sale]) VALUES (N'2', N'2021-03-04', N'9000000', N'2', N'1800000', N'2021-03-04', N'1', N'2', N'0')
GO

INSERT INTO [dbo].[invoice_detail] ([id], [created_date], [product_price], [quantity], [total], [update_date], [invoice_id], [product_id], [price_sale]) VALUES (N'3', N'2021-03-04', N'1000000', N'1', N'1000000', N'2021-03-04', N'2', N'3', N'0')
GO

INSERT INTO [dbo].[invoice_detail] ([id], [created_date], [product_price], [quantity], [total], [update_date], [invoice_id], [product_id], [price_sale]) VALUES (N'4', N'2021-03-04', N'9000000', N'2', N'1800000', N'2021-03-04', N'2', N'2', N'0')
GO

INSERT INTO [dbo].[invoice_detail] ([id], [created_date], [product_price], [quantity], [total], [update_date], [invoice_id], [product_id], [price_sale]) VALUES (N'5', N'2021-03-04', N'1000000', N'1', N'1000000', N'2021-03-04', N'3', N'3', N'0')
GO

INSERT INTO [dbo].[invoice_detail] ([id], [created_date], [product_price], [quantity], [total], [update_date], [invoice_id], [product_id], [price_sale]) VALUES (N'6', N'2021-03-04', N'9000000', N'2', N'1800000', N'2021-03-04', N'3', N'4', N'0')
GO

INSERT INTO [dbo].[invoice_detail] ([id], [created_date], [product_price], [quantity], [total], [update_date], [invoice_id], [product_id], [price_sale]) VALUES (N'7', N'2021-03-04', N'1000000', N'1', N'1000000', N'2021-03-04', N'4', N'3', N'0')
GO

INSERT INTO [dbo].[invoice_detail] ([id], [created_date], [product_price], [quantity], [total], [update_date], [invoice_id], [product_id], [price_sale]) VALUES (N'8', N'2021-03-04', N'23000000', N'2', N'3400000', N'2021-03-04', N'4', N'5', N'0')
GO

INSERT INTO [dbo].[invoice_detail] ([id], [created_date], [product_price], [quantity], [total], [update_date], [invoice_id], [product_id], [price_sale]) VALUES (N'9', N'2021-03-18', N'1310000', N'1', N'1310000', N'2021-03-18', N'5', N'5', N'0')
GO

INSERT INTO [dbo].[invoice_detail] ([id], [created_date], [product_price], [quantity], [total], [update_date], [invoice_id], [product_id], [price_sale]) VALUES (N'10', N'2021-03-30', N'4230000', N'1', N'4230000', NULL, N'6', N'2', N'0')
GO

INSERT INTO [dbo].[invoice_detail] ([id], [created_date], [product_price], [quantity], [total], [update_date], [invoice_id], [product_id], [price_sale]) VALUES (N'11', N'2021-03-30', N'1128000', N'1', N'1000000', NULL, N'6', N'3', N'1000000')
GO

INSERT INTO [dbo].[invoice_detail] ([id], [created_date], [product_price], [quantity], [total], [update_date], [invoice_id], [product_id], [price_sale]) VALUES (N'12', N'2021-03-30', N'4230000', N'1', N'4230000', NULL, N'7', N'2', N'0')
GO

INSERT INTO [dbo].[invoice_detail] ([id], [created_date], [product_price], [quantity], [total], [update_date], [invoice_id], [product_id], [price_sale]) VALUES (N'13', N'2021-03-30', N'4230000', N'1', N'4230000', NULL, N'8', N'2', N'0')
GO

INSERT INTO [dbo].[invoice_detail] ([id], [created_date], [product_price], [quantity], [total], [update_date], [invoice_id], [product_id], [price_sale]) VALUES (N'14', N'2021-03-30', N'4230000', N'1', N'4230000', NULL, N'9', N'2', N'0')
GO

INSERT INTO [dbo].[invoice_detail] ([id], [created_date], [product_price], [quantity], [total], [update_date], [invoice_id], [product_id], [price_sale]) VALUES (N'15', N'2021-03-30', N'4230000', N'1', N'4230000', NULL, N'10', N'2', N'0')
GO

INSERT INTO [dbo].[invoice_detail] ([id], [created_date], [product_price], [quantity], [total], [update_date], [invoice_id], [product_id], [price_sale]) VALUES (N'16', N'2021-03-30', N'4230000', N'1', N'4230000', NULL, N'11', N'2', N'0')
GO

INSERT INTO [dbo].[invoice_detail] ([id], [created_date], [product_price], [quantity], [total], [update_date], [invoice_id], [product_id], [price_sale]) VALUES (N'17', N'2021-03-30', N'4230000', N'1', N'4230000', NULL, N'12', N'2', N'0')
GO

INSERT INTO [dbo].[invoice_detail] ([id], [created_date], [product_price], [quantity], [total], [update_date], [invoice_id], [product_id], [price_sale]) VALUES (N'18', N'2021-03-30', N'4230000', N'1', N'4230000', NULL, N'13', N'2', N'0')
GO

INSERT INTO [dbo].[invoice_detail] ([id], [created_date], [product_price], [quantity], [total], [update_date], [invoice_id], [product_id], [price_sale]) VALUES (N'19', N'2021-03-30', N'4230000', N'1', N'4230000', NULL, N'14', N'2', N'0')
GO

INSERT INTO [dbo].[invoice_detail] ([id], [created_date], [product_price], [quantity], [total], [update_date], [invoice_id], [product_id], [price_sale]) VALUES (N'20', N'2021-03-30', N'4230000', N'1', N'4230000', NULL, N'15', N'2', N'0')
GO

INSERT INTO [dbo].[invoice_detail] ([id], [created_date], [product_price], [quantity], [total], [update_date], [invoice_id], [product_id], [price_sale]) VALUES (N'21', N'2021-03-30', N'4230000', N'1', N'4230000', NULL, N'16', N'2', N'0')
GO

INSERT INTO [dbo].[invoice_detail] ([id], [created_date], [product_price], [quantity], [total], [update_date], [invoice_id], [product_id], [price_sale]) VALUES (N'23', N'2021-03-30', N'4230000', N'1', N'4230000', NULL, N'17', N'2', N'0')
GO

INSERT INTO [dbo].[invoice_detail] ([id], [created_date], [product_price], [quantity], [total], [update_date], [invoice_id], [product_id], [price_sale]) VALUES (N'24', N'2021-03-31', N'1310000', N'1', N'1310000', N'2021-03-31', N'18', N'2', N'0')
GO

INSERT INTO [dbo].[invoice_detail] ([id], [created_date], [product_price], [quantity], [total], [update_date], [invoice_id], [product_id], [price_sale]) VALUES (N'25', N'2021-03-31', N'1310000', N'1', N'1310000', N'2021-03-31', N'18', N'3', N'1000000')
GO

INSERT INTO [dbo].[invoice_detail] ([id], [created_date], [product_price], [quantity], [total], [update_date], [invoice_id], [product_id], [price_sale]) VALUES (N'26', N'2021-03-31', N'1310000', N'1', N'1310000', N'2021-03-31', N'18', N'4', N'0')
GO

INSERT INTO [dbo].[invoice_detail] ([id], [created_date], [product_price], [quantity], [total], [update_date], [invoice_id], [product_id], [price_sale]) VALUES (N'27', N'2021-04-07', N'1598000', N'2', N'3196000', N'2021-04-07', N'19', N'6', N'0')
GO

INSERT INTO [dbo].[invoice_detail] ([id], [created_date], [product_price], [quantity], [total], [update_date], [invoice_id], [product_id], [price_sale]) VALUES (N'28', N'2021-04-08', N'5990000', N'2', N'11980000', N'2021-04-08', N'20', N'83', N'0')
GO

INSERT INTO [dbo].[invoice_detail] ([id], [created_date], [product_price], [quantity], [total], [update_date], [invoice_id], [product_id], [price_sale]) VALUES (N'29', N'2021-04-10', N'14870000', N'2', N'29740000', N'2021-04-10', N'21', N'87', N'0')
GO

INSERT INTO [dbo].[invoice_detail] ([id], [created_date], [product_price], [quantity], [total], [update_date], [invoice_id], [product_id], [price_sale]) VALUES (N'30', N'2021-04-10', N'4230000', N'2', N'8460000', N'2021-04-10', N'21', N'2', N'0')
GO

INSERT INTO [dbo].[invoice_detail] ([id], [created_date], [product_price], [quantity], [total], [update_date], [invoice_id], [product_id], [price_sale]) VALUES (N'31', N'2021-04-10', N'1598000', N'2', N'3196000', N'2021-04-10', N'22', N'6', N'0')
GO

INSERT INTO [dbo].[invoice_detail] ([id], [created_date], [product_price], [quantity], [total], [update_date], [invoice_id], [product_id], [price_sale]) VALUES (N'32', N'2021-04-11', N'14870000', N'1', N'14870000', N'2021-04-11', N'23', N'87', N'0')
GO

INSERT INTO [dbo].[invoice_detail] ([id], [created_date], [product_price], [quantity], [total], [update_date], [invoice_id], [product_id], [price_sale]) VALUES (N'33', N'2021-04-14', N'12020000', N'10', N'120200000', N'2021-04-14', N'24', N'26', N'0')
GO

INSERT INTO [dbo].[invoice_detail] ([id], [created_date], [product_price], [quantity], [total], [update_date], [invoice_id], [product_id], [price_sale]) VALUES (N'34', N'2021-04-16', N'14870000', N'9', N'133830000', N'2021-04-16', N'25', N'87', N'0')
GO

INSERT INTO [dbo].[invoice_detail] ([id], [created_date], [product_price], [quantity], [total], [update_date], [invoice_id], [product_id], [price_sale]) VALUES (N'35', N'2021-04-16', N'23630000', N'1', N'23630000', N'2021-04-16', N'25', N'105', N'0')
GO

INSERT INTO [dbo].[invoice_detail] ([id], [created_date], [product_price], [quantity], [total], [update_date], [invoice_id], [product_id], [price_sale]) VALUES (N'36', N'2021-04-16', N'5340000', N'1', N'5340000', N'2021-04-16', N'26', N'82', N'5340000')
GO

INSERT INTO [dbo].[invoice_detail] ([id], [created_date], [product_price], [quantity], [total], [update_date], [invoice_id], [product_id], [price_sale]) VALUES (N'37', N'2021-04-16', N'7700000', N'2', N'15400000', N'2021-04-16', N'26', N'91', N'7700000')
GO

INSERT INTO [dbo].[invoice_detail] ([id], [created_date], [product_price], [quantity], [total], [update_date], [invoice_id], [product_id], [price_sale]) VALUES (N'38', N'2021-04-16', N'5740000', N'2', N'11480000', N'2021-04-16', N'26', N'96', N'0')
GO

INSERT INTO [dbo].[invoice_detail] ([id], [created_date], [product_price], [quantity], [total], [update_date], [invoice_id], [product_id], [price_sale]) VALUES (N'39', N'2021-04-16', N'4090000', N'1', N'4090000', N'2021-04-16', N'27', N'32', N'0')
GO

INSERT INTO [dbo].[invoice_detail] ([id], [created_date], [product_price], [quantity], [total], [update_date], [invoice_id], [product_id], [price_sale]) VALUES (N'41', N'2021-04-16', N'12000000', N'3', N'36000000', N'2021-04-16', N'29', N'36', N'12000000')
GO

INSERT INTO [dbo].[invoice_detail] ([id], [created_date], [product_price], [quantity], [total], [update_date], [invoice_id], [product_id], [price_sale]) VALUES (N'42', N'2021-04-16', N'5740000', N'7', N'40180000', N'2021-04-16', N'30', N'96', N'0')
GO

INSERT INTO [dbo].[invoice_detail] ([id], [created_date], [product_price], [quantity], [total], [update_date], [invoice_id], [product_id], [price_sale]) VALUES (N'43', N'2021-04-16', N'9880000', N'2', N'19760000', N'2021-04-16', N'30', N'94', N'0')
GO

INSERT INTO [dbo].[invoice_detail] ([id], [created_date], [product_price], [quantity], [total], [update_date], [invoice_id], [product_id], [price_sale]) VALUES (N'44', N'2021-04-16', N'1246000', N'1', N'1246000', N'2021-04-16', N'31', N'8', N'0')
GO

INSERT INTO [dbo].[invoice_detail] ([id], [created_date], [product_price], [quantity], [total], [update_date], [invoice_id], [product_id], [price_sale]) VALUES (N'45', N'2021-04-16', N'1598000', N'1', N'1598000', N'2021-04-16', N'31', N'6', N'0')
GO

INSERT INTO [dbo].[invoice_detail] ([id], [created_date], [product_price], [quantity], [total], [update_date], [invoice_id], [product_id], [price_sale]) VALUES (N'47', N'2021-04-17', N'12000000', N'1', N'12000000', N'2021-04-17', N'33', N'36', N'12000000')
GO

INSERT INTO [dbo].[invoice_detail] ([id], [created_date], [product_price], [quantity], [total], [update_date], [invoice_id], [product_id], [price_sale]) VALUES (N'48', N'2021-04-17', N'6100000', N'1', N'6100000', N'2021-04-17', N'33', N'81', N'0')
GO

INSERT INTO [dbo].[invoice_detail] ([id], [created_date], [product_price], [quantity], [total], [update_date], [invoice_id], [product_id], [price_sale]) VALUES (N'49', N'2021-04-17', N'4230000', N'6', N'25380000', N'2021-04-17', N'34', N'2', N'0')
GO

INSERT INTO [dbo].[invoice_detail] ([id], [created_date], [product_price], [quantity], [total], [update_date], [invoice_id], [product_id], [price_sale]) VALUES (N'50', N'2021-04-17', N'6500000', N'8', N'52000000', N'2021-04-17', N'35', N'92', N'0')
GO

INSERT INTO [dbo].[invoice_detail] ([id], [created_date], [product_price], [quantity], [total], [update_date], [invoice_id], [product_id], [price_sale]) VALUES (N'51', N'2021-04-17', N'13600000', N'6', N'81600000', N'2021-04-17', N'36', N'86', N'13600000')
GO

SET IDENTITY_INSERT [dbo].[invoice_detail] OFF
GO


-- ----------------------------
-- Table structure for product
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[product]') AND type IN ('U'))
	DROP TABLE [dbo].[product]
GO

CREATE TABLE [dbo].[product] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [code] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [created_by] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [created_date] date  NULL,
  [description] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [issale] bit  NULL,
  [name] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [price] float(53)  NULL,
  [price_sale] float(53)  NULL,
  [isdelete] bit  NULL,
  [gender] bit  NOT NULL,
  [creatd_by] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [supplier_id] int  NULL,
  [quantity] float(53)  NULL,
  [update_by] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [updated_date] date  NULL
)
GO

ALTER TABLE [dbo].[product] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of product
-- ----------------------------
SET IDENTITY_INSERT [dbo].[product] ON
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'1', N'EFR-527L-1AVUDF', N'admin@gmail.com', N'2021-03-04', N'Đồng hồ Casio EFR-527L-1AVUDF dành cho nam giới, thuộc bộ sưu tập Edifice của Casio với tính năng Chronograph giờ thể thao 6 kim chỉ cá tính, dây đeo bằng da đen nam tính và còn có 1 lịch ngày.', N'0', N'CASIO EFR-527L-1AVUDF', N'3196000', N'0', N'0', N'1', N'admin1@gmail.com', N'1', N'100', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'2', N'EFR-547D-2AVUDF', N'admin@gmail.com', N'2021-03-04', N'Đồng hồ Casio EFR-547D-2AVUDF với mặt số lớn phong cách thể thao mạnh mẽ, nền xanh sang trọng cùng kim chỉ và vạch số được phủ phản quang nổi bật, đèn LED có độ chiếu sáng cao giúp nhìn rõ trong đêm.', N'0', N'CASIO EFR-547D-2AVUDF', N'4230000', N'0', N'0', N'1', N'admin1@gmail.com', N'3', N'97', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'3', N'MTP-E130L-2A2VDF', N'admin@gmail.com', NULL, N'Đồng hồ Casio MTP-1302L-1AVDF có vỏ kim loại được mạ bạc tinh tế quanh nền đen mặt số, kim chỉ và vạch số được phủ phản quang nổi bật, dây đeo da vân đen lịch lãm, nam tính.', N'1', N'CASIO MTP-E130L-2A2VDF', N'1128000', N'1000000', N'0', N'1', NULL, N'4', N'99', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'4', N'EFB-302JD-1ADR', N'admin@gmail.com', NULL, N'Đồng hồ nam Casio EFB-302JD-1ADR có kiểu dáng với phong cách thể thao, vỏ máy cùng với dây đeo bằng thép không gỉ tạo vẻ chắc chắn, 3 ô phụ với 3 chức năng khác nhau tạo nên vẻ hiện đại.', N'0', N'CASIO EFB-302JD-1ADR', N'10264000', N'0', N'0', N'1', NULL, N'2', N'99', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'5', N'MTP-V006L-1B2UDF', N'admin@gmail.com', N'2021-03-04', N'Mẫu Casio MTP-V006L-1B2UDF phiên bản dây da trẻ trung cho phái mạnh với kiểu da trơn cùng với nền mặt số size 38mm hiện thị chức năng đơn giản 3 kim.', N'0', N'CASIO MTP-V006L-1B2UDF', N'776000', N'0', N'0', N'1', N'admin1@gmail.com', N'5', N'100', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'6', N'A168WG-9WDF', N'admin@gmail.com', N'2021-03-04', N'Đồng hồ Casio A168WG-9WDF với hình dáng truyền thống của hãng, phù hợp cho cả nam lẫn nữ, tông màu vàng chủ đạo từng chi tiết vỏ, mặt số và dây đeo tạo nên thời trang sang trọng, quý phái và thanh lịch.', N'0', N'CASIO A168WG-9WDF', N'1598000', N'0', N'0', N'1', N'admin1@gmail.com', N'1', N'97', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'7', N'MTP-1335D-2A2VDF', N'admin@gmail.com', N'2021-03-04', N'Mẫu Casio MTP-1335D-2A2VDF mặt số xanh size 41mm tone màu thời trang cùng với thiết kế đơn giản chức năng 3 kim.', N'0', N'CASIO MTP-1335D-2A2VDF', N'1363000', N'0', N'0', N'1', N'admin1@gmail.com', N'2', N'100', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'8', N'MTP-1170A-2ARDF', N'admin@gmail.com', N'2021-03-04', N'Trẻ trung nam tính với mẫu Casio MTP-1170A-2ARDF ẩn mình với vẻ ngoài giản dị của chiếc đồng hồ 3 kim thời trang với nền mặt số được phủ tông màu xanh nổi bật.', N'0', N'CASIO MTP-1170G-7ARDF', N'1246000', N'0', N'0', N'1', N'admin1@gmail.com', N'4', N'99', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'9', N'MTP-1170G-7ARDF', N'admin@gmail.com', N'2021-03-04', N'Trẻ trung nam tính với mẫu Casio MTP-1170A-2ARDF ẩn mình với vẻ ngoài giản dị của chiếc đồng hồ 3 kim thời trang với nền mặt số được phủ tông màu xanh nổi bật.', N'1', N'CASIO MTP-1170A-2ARDF', N'1034000', N'999000', N'0', N'1', N'admin1@gmail.com', N'3', N'100', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'10', N'MRW-200HD-1BVDF', N'admin@gmail.com', N'2021-03-04', N'Mẫu Casio MRW-200HD-1BVDF phiên bản thể thao với khả năng chống nước vượt trội 10ATM, nền cọc số học trò tạo hình dày dặn tone màu trắng nổi bật trên mặt số size 44mm.', N'0', N'CASIO MRW-200HD-1BVDF', N'1246000', N'0', N'0', N'1', N'admin1@gmail.com', N'4', N'100', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'11', N'MRW-200HD-7BVDF', N'admin@gmail.com', N'2021-03-04', N'Mẫu Casio MRW-200HD-7BVDF mặt số trắng size lớn 44mm nối bật với thiết kế viền Bezel cọc số dày dặn nam tính dễ quan sát cùng khả năng chịu nước lên đến 10atm.', N'0', N'CASIO MRW-200HD-7BVDF', N'1246000', N'0', N'0', N'1', N'admin1@gmail.com', N'1', N'100', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'12', N'AW-90H-9EVDF', N'admin@gmail.com', N'2021-03-04', N'Mẫu Casio AW-90H-9EVDF phiên bản dây vỏ nhựa chịu va đập phối tone đen năng động, mặt số đen size 38mm chức năng kim chỉ phối cùng ô số điện tử tính năng Dual time.', N'0', N'CASIO AW-90H-9EVDF', N'870000', N'0', N'0', N'1', N'admin1@gmail.com', N'2', N'100', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'13', N'LTP-V005D-4B2UDF', N'admin@gmail.com', N'2021-03-04', N'Mẫu Casio LTP-V005D-4B2UDF thiết kế đơn giản trẻ trung 3 kim trên nền mặt số size 28mm được phối tone màu hồng, cùng với chi tiết các cọc vạch số tạo nét thanh mảnh nữ tính.', N'1', N'CASIO LTP-V005D-4B2UDF', N'729000', N'620000', N'0', N'0', N'admin1@gmail.com', N'5', N'100', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'14', N'SHE-4055PGL-7BUDF', N'admin@gmail.com', N'2021-03-04', N'Mẫu Casio SHE-4055PGL-7BUDF phiên bản đính pha lê tương ứng với các múi giờ trên mặt số trắng size 30mm tạo nên vẻ đẹp sang trọng trẻ trung khi kết hợp cùng vỏ máy vàng hồng.', N'0', N'CASIO SHE-4055PGL-7BUDF', N'4113000', N'0', N'0', N'0', N'admin1@gmail.com', N'1', N'100', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'15', N'SHE-4533D-7AUDF', N'admin@gmail.com', N'2021-03-04', N'Mẫu Casio SHE-4533D-7AUDF thời trang sang trọng với thiết kế đính pha lê tại vị trí 9 giờ tạo nên điểm nhấn nổi bật trên mặt số size 30mm.', N'0', N'CASIO SHE-4533D-7AUDF', N'3220000', N'0', N'0', N'0', N'admin1@gmail.com', N'2', N'100', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'16', N'LTP-E157MR-9ADF', N'admin@gmail.com', N'2021-03-04', N'Mẫu Casio LTP-E157MR-9ADF dây đeo kim loại mạ vàng hồng phiên bản dây lưới thời trang kết hợp cùng lối thiết kế đơn giản chức năng 3 kim.', N'0', N'CASIO LTP-E157MR-9ADF', N'2867000', N'0', N'0', N'0', N'admin1@gmail.com', N'3', N'100', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'17', N'EFR-559SG-7AVUDF', NULL, N'2021-03-29', N'Mẫu Casio EFR-559SG-7AVUDF phiên bản thiết kế 3 núm vặn mạ bạc điều chỉnh tính năng đo thời gian Chrnograph hiện thị trên nền mặt số lớn size 49mm.', N'0', N'CASIO EFR-559SG-7AVUDF', N'1610000', N'0', N'0', N'1', NULL, N'1', N'10', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'18', N'EFR-559SG-7AVUDF', NULL, N'2021-03-29', N'Mẫu Casio LTP-E157MRB-1BDF dây đeo kim loại phiên bản dây lưới phối tone màu đen thời trang, vỏ máy pin mạ tone màu vàng hồng cùng với thiết kế mỏng chỉ 8mm.', N'1', N'CASIO EFR-559SG-7AVUDF', N'2867000', N'2800000', N'0', N'0', NULL, N'1', N'10', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'19', N'LA690WEMB-1BDF', NULL, N'2021-03-29', N'Mẫu Casio LA690WEMB-1BDF dây lưới tone màu đen phiên bản trẻ trung cá tính dành cho các bạn nữ với thiết kế mặt số điện tử hiện thị đa chức năng.', N'0', N'CASIO LA690WEMB-1BDF', N'2303000', N'0', N'0', N'0', NULL, N'1', N'10', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'20', N'MTD-1079D-1A3VDF', NULL, N'2021-03-29', N'Lịch lãm nam tính cùng mẫu Casio MTD-1079D-1A3VDF với vẻ ngoài giản dị của chiếc đồng hồ 3 kim ẩn chứa bên trong sự mạnh mẽ đầy cuốn hút với các chi tiết vạch số tạo nét dày dặn cùng khả năng chịu nước lên đến 10 ATM.', N'1', N'CASIO MTD-1079D-1A3VDF', N'3455000', N'3400000', N'0', N'1', NULL, N'5', N'12', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'21', N'SRPC57K1', NULL, N'2021-03-29', N'Đặc điểm nổi trội như phần vỏ viền ngoài tạo hình viền số chữ trắng nổi bật trên tông nền đen, vẻ ngoài dày dặn với khả năng chịu nước 10ATM phù hợp cho những hoạt động ngoài trời, tạo nên mẫu đồng hồ thể thao Seiko SRPC57K1.', N'0', N'SEIKO SRPC57K1', N'7340000', N'0', N'0', N'1', NULL, N'3', N'10', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'22', N'SNE485P1 ', NULL, N'2021-03-29', N'Mẫu Seiko SNE485P1 vẻ ngoài sang trọng trẻ trung với mẫu dây đeo mạ vàng demi, điểm nhấn nổi bật kiểu máy pin trang bị công nghệ Solar (Năng Lượng Ánh Sáng).', N'0', N'SEIKO SNE485P1 ', N'6470000', N'0', N'0', N'1', NULL, N'3', N'10', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'23', N'SSA812J1', NULL, N'2021-03-29', N'Mang đến cho phái đẹp với thiết kế độc đáo cùng ô chân kính trong suốt phô diễn ra 1 phần bên trong của bộ máy cơ chứa đựng cả một trải nghiệm thú vị dành cho mẫu Seiko SSA812J1.', N'1', N'SEIKO SSA812J1', N'16420000', N'16400000', N'0', N'0', NULL, N'3', N'11', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'24', N'SNE485P1', NULL, N'2021-03-29', N'Mẫu Seiko SNE485P1 vẻ ngoài sang trọng trẻ trung với mẫu dây đeo mạ vàng demi, điểm nhấn nổi bật kiểu máy pin trang bị công nghệ Solar (Năng Lượng Ánh Sáng).', N'0', N'SEIKO SNE485P1', N'6470000', N'0', N'1', N'1', NULL, N'3', N'11', N'admin@gmail.com', N'2021-04-15')
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'25', N'SRPD73K1', NULL, N'2021-03-29', N'Mẫu Seiko SRPD73K1 nổi bật với chi tiết cọc chấm tròn trắng dạ quang trên nền mặt đen size 42mm, thiết kế vỏ máy dày dặn nam tính thời trang với phiên bản dây lưới.', N'0', N'SEIKO SRPD73K1', N'8810000', N'0', N'0', N'1', NULL, N'3', N'10', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'26', N'SRPE15J1', NULL, N'2021-03-29', N'Mẫu Seiko SRPE15J1 phiên bản Presage với nền mặt số xanh size 40mm tone màu trẻ trung phối cùng họa tiết Guilloché tạo nên vẻ thời trang độc đáo.', N'0', N'SEIKO SRPE15J1', N'12020000', N'0', N'0', N'1', NULL, N'3', N'10', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'27', N'SNP141P1', NULL, N'2021-03-29', N'Mẫu Seiko SNP141P1 thiết kế độc đáo với phần năng lượng đồng hồ trang bị công nghệ Kinetic (Vừa Pin – Vừa Tự Động), kim chỉ cọc số mạ bạc sang trọng trước nền kính Sapphire.', N'1', N'SEIKO SNP141P1', N'22090000', N'22000000', N'0', N'1', NULL, N'5', N'7', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'28', N'SSB355P1', NULL, N'2021-03-29', N'Mẫu Seiko SSB355P1 nổi bật với tính năng đo thời gian Chronograph tạo nên kiểu dáng đồng hồ 6 kim, phiên bản kim chỉ đỏ tone màu nổi bật trên nền mặt số đen size 45mm.', N'0', N'SEIKO SSB355P1', N'6120000', N'0', N'0', N'1', NULL, N'2', N'10', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'29', N'SRPD71K1', NULL, N'2021-03-29', N'Mẫu Seiko SRPD71K1 phiên bản đồng hồ lặn với thiết kế máy cơ phần vỏ dày dặn 13mm mạ bạc sang sang trọng đầy trẻ trung khi phối cùng bộ dây lưới.', N'0', N'SEIKO SRPD71K1', N'8810000', N'0', N'0', N'1', NULL, N'2', N'10', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'30', N'SRPD42J1', NULL, N'2021-03-29', N'Mẫu Seiko SRPD42J1 sang trọng trẻ trung với tone màu vàng hồng bao phủ trên chi tiết vỏ máy, kim chỉ cùng vạch số tạo hình mỏng trên mặt số trắng size 41mm. ', N'0', N'SEIKO SRPD42J1', N'17120000', N'0', N'0', N'1', NULL, N'2', N'11', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'31', N'SRW791P1', NULL, N'2021-03-29', N'Mẫu Seiko SRW791P1 phiên bản thời trang cho phái đẹp mẫu dây da xanh bản nhỏ, nền cọc số la mã tạo hình mỏng cách điệu nữ tính trên mặt số 6 kim kèm chức năng Chronograph.', N'1', N'SEIKO SRW791P1', N'8170000', N'8000000', N'1', N'0', NULL, N'2', N'10', N'admin@gmail.com', N'2021-04-15')
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'32', N'SUP369P1', NULL, N'2021-03-29', N'Vẻ đẹp thanh lịch đến từ mẫu dây da đen có vân ẩn chứa với vẻ ngoài giản dị của chiếc đồng hồ Seiko SUP369P1 nhưng lại mang trên mình một vẻ đẹp hiện đại dành cho phái đẹp được trang bị công nghệ Solar (Năng Lượng Ánh Sáng).', N'0', N'SEIKO SUP369P1', N'4090000', N'0', N'0', N'0', NULL, N'5', N'10', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'33', N'SRZ520P1', NULL, N'2021-03-29', N'Phiên bản Seiko SRZ520P1 vẻ ngoài thời trang với thiết kế mỏng máy pin 7mm, sang trọng nổi bật dành cho phái đẹp với phần dây vỏ kim loại mạ vàng.', N'0', N'SEIKO SRZ520P1', N'6840000', N'0', N'0', N'0', NULL, N'2', N'10', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'34', N'SUR638P1', NULL, N'2021-03-29', N'Mẫu Seiko SUR638P1 phiên bản dây da nâu tạo hình vân thanh lịch không kém cạnh trẻ trung với thiết kế đơn giản chức năng 3 kim trên nền mặt số trắng size 29mm.', N'0', N'SEIKO SUR638P1', N'5140000', N'0', N'0', N'0', NULL, N'1', N'9', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'35', N'SRZ519P1', NULL, N'2021-03-29', N'Mẫu Seiko SRZ519P1 phiên bản nền cọc số la mã tạo nét cách điệu phối tone màu đen thời trang trên nền mặt trắng size nhỏ 29mm dành cho phái đẹp.', N'0', N'SEIKO SRZ519P1', N'5670000', N'0', N'0', N'0', NULL, N'5', N'10', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'36', N'SUT387J1', NULL, N'2021-03-29', N'Mẫu Seiko SUT387J1 phiên bản đặc biệt với bộ máy pin trang bị công nghệ Solar (Năng Lượng Ánh Sáng), kim chỉ đỏ tone màu thời trang nổi bật trên mặt số size 33mm.', N'1', N'SEIKO SUT387J1', N'12240000', N'12000000', N'0', N'0', NULL, N'5', N'8', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'37', N'SXDG76P1', NULL, N'2021-03-29', N'Mẫu đồng hồ Seiko SXDG76P1 ấn tượng với vỏ viền ngoài thiết kế gia công tinh xảo đính kèm các viên pha lê theo phong cách thời trang trẻ trung, tạo điểm nhấn cho vẻ đẹp đầy sang trọng với vỏ máy cùng dây đeo mạ vàng.', N'0', N'SEIKO SXDG76P1', N'6430000', N'0', N'0', N'0', NULL, N'1', N'15', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'38', N'SRW869P1', NULL, N'2021-03-29', N'Đồng hồ Seiko SRW869P1 có nền số màu hồng duyên dáng, kim chỉ và vạch số được thiết kế tinh tế nổi bật, dây đeo kim loại mạ bạc đem lại vẻ đẹp thanh lịch quý phái dành riêng cho phái nữ.', N'0', N'SEIKO SRW869P1', N'8020000', N'0', N'0', N'0', NULL, N'3', N'10', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'39', N' SRP857J1', NULL, N'2021-03-29', N'Mẫu Seiko SRP857J1 một vẻ đẹp quý phái ẩn mình với vẻ ngoài giản dị của chiếc đồng hồ 3 kim với phiên bản kim loại bạc sang trọng trẻ trung cùng nền cọc số la mã tạo nét mỏng cách tân.', N'0', N'SEIKO SRP857J1', N'9820000', N'0', N'0', N'0', NULL, N'1', N'10', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'40', N'SRW856P1', NULL, N'2021-03-29', N'Đồng hồ Seiko SRW856P1 thuộc bộ sưu tập Lukia dành riêng cho phái nữ, viền kim loại được phủ màu đồng quyến rũ bao quanh nền số màu hồng, kim chỉ phản quang kết hợp với vạch giờ được cách điệu độc đáo.', N'1', N'SEIKO ', N'10790000', N'10000000', N'0', N'0', NULL, N'5', N'10', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'41', N'AR1135-10E', NULL, N'2021-03-29', N'Mẫu Citizen AR1135-10E nổi bật với đồng hồ sử dụng công nghệ hiện đại Eco-Drive (Năng Lượng Ánh Sáng), ấn tượng với thiết kế đầy nam tính kết hợp giữa vỏ máy cùng dây đeo bằng da đen đầy lịch lãm.', N'0', N'CITIZEN AR1135-10E', N'6900000', N'0', N'0', N'1', NULL, N'1', N'10', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'42', N'NH8353-00H', NULL, N'2021-03-29', N'Đồng hồ nam Citizen NH8353-00H có vỏ kim loại tạo vẻ chắc chắn, kim chỉ và vạch số la mã nổi bật trên nền đen, kết hợp với dây đeo bằng chất liệu da màu nâu đem lại phong cách cổ điển lịch lãm, nam tính cho phái mạnh.', N'0', N'CITIZEN NH8353-00H', N'5500000', N'0', N'0', N'1', NULL, N'1', N'10', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'43', N'BI5006-81L', NULL, N'2021-03-29', N'Mẫu Citizen BI5006-81L phiên bản mặt số xanh size 39mm tone màu thời trang sang trọng với chi tiết cọc vạch số mạ vàng nổi bật.', N'0', N'CITIZEN BI5006-81L', N'3050000', N'0', N'0', N'1', NULL, N'1', N'20', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'44', N'NY0088-11E', NULL, N'2021-03-29', N'Mẫu Citizen NY0088-11E thiết kế dày dặn nam tính vỏ máy kim loại mạ bạc chứa đựng bên trong trải nghiệm đến từ bộ máy cơ với bề dày 12mm, khả năng chịu nước 20ATM là tính năng vượt trội.

', N'1', N'CITIZEN NY0088-11E', N'8050000', N'8000000', N'0', N'1', NULL, N'1', N'12', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'45', N'FC8008-88D', NULL, N'2021-03-29', N'Mẫu Citizen FC8008-88D điểm nhấn nổi bật mẫu dây đeo demi mạ vàng kết hợp với mặt số trắng xà cừ size 35mm mang lại vẻ ngoài thời trang dành cho phái đẹp.', N'0', N'CITIZEN FC8008-88D', N'11550000', N'0', N'0', N'0', NULL, N'1', N'10', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'46', N'NH8396-82E', NULL, N'2021-03-29', N'Mẫu Citizen C7 NH8396-82E phiên bản dây đeo dạng lưới tone màu đen trẻ trung nhưng không phần sang trọng với chi tiết cọc vạch số cùng kim chỉ mạ vàng hồng.', N'0', N'CITIZEN NH8396-82E', N'9177000', N'0', N'0', N'1', NULL, N'5', N'10', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'47', N'NH8363-14A', NULL, N'2021-03-29', N'Đồng hồ nam Citizen NH8363-14A phong cách hoài cổ từ bộ máy cơ cho đến chữ số với font chữ la mã cổ điển, lịch ngày thứ ở vị trí 3 giờ với kiểu dáng giản dị.', N'0', N'CITIZEN NH8363-14A', N'5500000', N'0', N'0', N'1', NULL, N'1', N'30', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'48', N'NH8360-80L', NULL, N'2021-03-29', N'Đồng hồ nam Citizen NH8360-80L thiết kế theo phong cách cổ điển với bô máy cơ, mặt đồng hồ kiểu tròn giản dị với chức năng lịch ngày thứ ở vị trí 3 giờ, nền đồng hồ màu xanh đem lại vẻ trẻ trung cho phái mạnh.', N'0', N'CITIZEN NH8360-80L', N'5520000', N'0', N'0', N'1', NULL, N'3', N'12', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'49', N'EM0763-07A', NULL, N'2021-03-29', N'Mẫu Citizen EM0763-07A dây da phiên bản da trơn phối tone màu xanh thời trang trẻ trung cùng với các chi tiết kim chỉ cùng cọc vạch số tạo nét thanh mảnh.', N'0', N'CITIZEN EM0763-07A', N'5970000', N'0', N'0', N'0', NULL, N'1', N'10', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'50', N'BI5000-10E', NULL, N'2021-03-29', N'Mẫu Citizen BI5000-10E trẻ trung đơn giản chức năng 3 kim 1 lịch trên nền mặt số size 39mm, thiết kế mỏng trên phần vỏ máy pin với độ dày chỉ 8mm mạ bạc sang trọng.', N'0', N'CITIZEN BI5000-10E', N'3000000', N'0', N'0', N'1', NULL, N'1', N'10', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'51', N'BM7375-18H', NULL, N'2021-03-29', N'Mẫu Citizen BM7375-18H theo lối thiết kế phong cách thời trang với sự kết hợp hài hòa giữa mặt số cùng mẫu dây da phối chung tông màu xám hướng đến vẻ nam tính trẻ trung.', N'1', N'CITIZEN BM7375-18H', N'7500000', N'7300000', N'0', N'1', NULL, N'1', N'20', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'52', N'CA0610-52A', NULL, N'2021-03-29', N'Đồng hồ Citizen CA0610-52A có mặt số tròn to, kim chỉ và vạch số sắc nét nổi bật trên nền số màu trắng trang nhã, dây đeo kim loại màu bạc đem lại phong cách lịch lãm, sang trọng cho phái mạnh.', N'0', N'CITIZEN CA0610-52A', N'7900000', N'0', N'0', N'1', NULL, N'1', N'10', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'53', N'NP1010-01A', NULL, N'2021-03-29', N'Mẫu Citizen NP1010-01A mang đến vẻ ngoài lịch lãm của phái mạnh với mẫu dây đeo da phối tông màu nâu, nổi bật lên vẻ độc đáo bên dưới mặt kính Sapphire thiết kế ô chân kính phô ra 1 phần trải nghiệm của bộ máy cơ đặc trưng nam tính.', N'1', N'CITIZEN NP1010-01A', N'12200000', N'1200000', N'0', N'1', NULL, N'1', N'20', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'54', N'NP1010-51E', NULL, N'2021-03-29', N'Mẫu Citizen NP1010-51E thiết kế tạo nên sự độc đáo dành cho phái mạnh với mặt đồng hồ bên dưới mặt kính Sapphire với 1 ô chân kính phô diễn ra 1 phần của bộ máy cơ đặc trưng nam tính kết hợp cùng các chi tiết vạch số dày dặn.', N'0', N'CITIZEN NP1010-51E', N'12700000', N'0', N'0', N'1', NULL, N'5', N'20', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'55', N' EZ7000-50A', NULL, N'2021-03-29', N'Mẫu Citizen EZ7000-50A phiên bản máy pin với thiết kế kiểu dáng mỏng chỉ 6mm phong cách thời trang phối cùng mẫu dây đeo kim loại dạng lưới.', N'0', N'CITIZEN EZ7000-50A', N'3990000', N'0', N'0', N'0', NULL, N'1', N'10', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'56', N'EQ9060-53A', NULL, N'2021-03-29', N'Mẫu Citizen EQ9060-53A chức năng kim giây thiết kế độc đáo không đồng trục trên nền mặt số trắng size 34mm, vỏ máy pin mạ bạc phiên bản kiểu dáng mỏng chỉ 7mm.', N'0', N'CITIZEN EQ9060-53A', N'3600000', N'0', N'0', N'0', NULL, N'1', N'10', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'57', N'EW3252-07A', NULL, N'2021-03-29', N'Mẫu đồng hồ nữ Citizen EW3252-07A thiết kế theo lối giản dị đầy ấn tượng mạnh với đồng hồ được sử dụng công nghệ hiện đại Eco-Drive (Năng Lượng Ánh Sáng), kết hợp cùng bộ dây đeo bằng da với tông màu nâu thanh lịch cho phái đẹp.', N'0', N'CITIZEN EW3252-07A', N'6600000', N'0', N'0', N'0', NULL, N'1', N'10', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'58', N'EU6092-08A', NULL, N'2021-03-29', N'Mẫu Citizen EU6092-08A dây da nâu tạo hình vân phiên bản thanh lịch trẻ trung cho phái đẹp khi kết hợp cùng lối thiết kế đơn giản chức năng 3 kim.', N'0', N'CITIZEN EU6092-08A', N'3630000', N'350000', N'0', N'0', NULL, N'1', N'20', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'59', N'EU6012-58E', NULL, N'2021-03-29', N'Đồng hồ nữ Citizen EU6012-58E có vỏ máy kim loại bằng thép không gỉ được mạ vàng sang trọng, kim chỉ và vạch số được làm thanh mảnh nhẹ nhàng, dây đeo kim loại cùng tông màu mạ vàng sang trọng.

', N'0', N'CITIZEN EU6012-58E', N'2650000', N'0', N'0', N'0', NULL, N'1', N'50', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'60', N'EM0600-87A', NULL, N'2021-03-29', N'Mẫu Citizen EM0600-87A vẻ ngoài trang nhã thanh mảnh tựa như hình của một cô gái với chi tiết kim chỉ gia công với dáng vẻ mỏng kết hợp mặt số tông nền trắng mang lại sự tinh tế trên nền mặt kính Sapphire.', N'0', N'CITIZEN EM0600-87A', N'11600000', N'0', N'0', N'0', NULL, N'1', N'40', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'61', N'FAC00003W0', NULL, N'2021-03-29', N'Đồng hồ nam Orient FAC00003W0 có vỏ kim loại màu vàng sáng bóng, kim chỉ và vạch số thiết kế to rõ nổi bật trên nền trắng trang trọng, kết hợp với dây đeo bằng chất liệu da nâu đem lại phong cách lịch lãm nam tính.', N'0', N'ORIENT FAC00003W0', N'6170000', N'0', N'0', N'1', NULL, N'1', N'40', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'62', N'RA-AA0B01G19B', NULL, N'2021-03-29', N'Mẫu Orient RA-AA0B01G19B phiên bản mạ vàng trên mẫu kim chỉ trên mặt số size 41.7mm đi kèm thiết kế 2 núm vặn điều chỉnh, vỏ máy kim loại mạ bạc kiểu dáng dày dặn của bô máy cơ.', N'0', N'ORIENT RA-AA0B01G19B', N'6800000', N'0', N'0', N'1', NULL, N'1', N'30', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'63', N'RA-AA0B02R19B', NULL, N'2021-03-29', N'Mẫu Orient RA-AA0B02R19B phiên bản mạ vàng với mẫu kim chỉ nổi bật trên mặt số size 41.7mm đi kèm thiết kế 2 núm vặn điều chỉnh, vỏ máy kim loại mạ bạc kiểu dáng dày dặn của bô máy cơ.', N'1', N'ORIENT RA-AA0B02R19B', N'6800000', N'6600000', N'0', N'1', NULL, N'1', N'30', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'64', N'FUNG8003D0', NULL, N'2021-03-29', N'Đồng hồ nam Orient FUNG8003D0 với thiết kế theo phong cách nam tính, kim chỉ và vạch số kiẻu dáng đơn giản nổi bật trên nền xanh thời trang, kết hợp với dây đeo kim loại tạo vẻ trẻ trung.', N'0', N'ORIENT FUNG8003D0', N'4180000', N'0', N'0', N'1', NULL, N'1', N'40', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'65', N'RA-AS0102S10B', NULL, N'2021-03-29', N'Mẫu Orient RA-AS0102S10B phiên bản máy cơ lộ tim thiết kế độc đáo trên nền mặt số trắng size 41mm phối cùng mẫu dây da tạo hình vân lịch lãm.', N'1', N'ORIENT RA-AS0102S10B', N'9900000', N'9750000', N'0', N'1', NULL, N'1', N'30', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'66', N'FUNG2003B0', NULL, N'2021-03-29', N'Mẫu Orient FUNG2003B0 kiểu dáng đơn giản 3 kim trẻ trung trên mặt số trắng size 42mm, thiết kế vỏ máy dày dặn thời trang nam tính với phiên bản dây vải.', N'0', N'ORIENT FUNG2003B0', N'2700000', N'0', N'0', N'1', NULL, N'1', N'20', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'67', N'RE-DK0001L00B', NULL, N'2021-03-29', N'Mẫu Orient RE-DK0001L00B số lượng giới hạn, với thiết kế máy cơ lộ tim phiên bản độc đáo trên nền mặt số size 41mm phối tone màu xanh thời trang nối bật.', N'0', N'ORIENT RE-DK0001L00B', N'18150000', N'0', N'0', N'1', NULL, N'1', N'10', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'68', N'RA-AA0001B19B', NULL, N'2021-03-29', N'Mẫu Orient RA-AA0001B19B kiểu dáng đồng hồ lặn mức chống nước 20atm vượt trội, vỏ máy cơ thiết kế dày dặn 13mm đi cùng với phần viền số bezel chữ số to rõ dễ nhìn kiểu dáng thể thao đầy nam tính.', N'0', N'ORIENT RA-AA0001B19B', N'9260000', N'0', N'0', N'1', NULL, N'1', N'30', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'69', N'RA-AB0E08L19B', NULL, N'2021-03-29', N'Mẫu Orient RA-AB0E08L19B phiên bản mặt số xanh tone màu thời trang nổi bật với các chi tiết kim chỉ cùng cọc vạch số mạ vàng sang trọng.', N'0', N'ORIENT RA-AB0E08L19B', N'3630000', N'0', N'0', N'1', NULL, N'1', N'20', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'70', N'RA-AR0005Y10B', NULL, N'2021-03-29', N'Mẫu Orient RA-AR0005Y10B phiên bản thiết kế máy cơ lộ độc đáo trên nền mặt số size 40mm tone màu nâu trẻ trung lịch lãm phối cùng bộ dây da tạo hình vân.', N'1', N'ORIENT RA-AR0005Y10B', N'7810000', N'770000', N'0', N'1', NULL, N'3', N'20', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'71', N'SSZ3W001W0', NULL, N'2021-03-29', N'Đồng hồ Orient SSZ3W001W0 có mặt số tròn nhỏ nhắn, kim chỉ và vạch số thanh mãnh phủ màu vàng nổi bật trên nền số màu trắng trang nhã, ô lịch ngày vị trí 3h tinh tế, dây đeo kim loại demi quyến rũ cho phái nữ.', N'0', N'ORIENT SSZ3W001W0', N'2810000', N'0', N'0', N'0', NULL, N'1', N'20', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'72', N'FQC0M002W0', NULL, N'2021-03-29', N'Đồng hồ nữ thời trang sang trọng Orient FQC0M002W0 với kiểu dáng được thiết kế theo phong cách hiện đại, mặt nền trắng xà cừ, ở mặt đồng hồ có viền đính hạt pha lê tinh tế và có 3 kim chỉ nhỏ.', N'1', N'ORIENT FQC0M002W0', N'4630000', N'4500000', N'0', N'0', NULL, N'5', N'10', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'73', N'FUNG7003W0', NULL, N'2021-03-29', N'Đồng hồ Orient FUNG7003W0 với kiểu dáng dành cho người yêu thích sự giản dị, chức năng lịch ngày được sắp ở vị trí tinh tế múi 3 giở, các vạch số với thiết kế thanh mảnh nữ tính trên nền mặt kính Sapphire.', N'0', N'ORIENT FUNG7003W0', N'3720000', N'0', N'0', N'0', NULL, N'1', N'20', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'74', N'FUNG7002W0', NULL, N'2021-03-29', N'Đồng hồ nữ Orient FUNG7002W0 có vỏ kim loại được phủ bạc sáng bóng, kim chỉ và vạch số thiết kế đơn giản nền trắng trang trọng, kết hợp dây đeo demi kim loại màu vàng.', N'1', N'ORIENT FUNG7002W0', N'4360000', N'4200000', N'0', N'0', NULL, N'5', N'20', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'75', N'FQC10002W0', NULL, N'2021-03-29', N'Đồng hồ thời trang nữ Orient FQC10002W0 được thiết kế rất sang trọng với mặt đồng hồ nền trắng xà cừ và viền đính hạt pha lê tinh tế, dây đeo demi thời trang.', N'0', N'ORIENT FQC10002W', N'5390000', N'0', N'0', N'0', NULL, N'4', N'20', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'76', N'SSZ3W003B0', NULL, N'2021-03-29', N'Mẫu Orient SSZ3W003B0 phiên bản Swimmer khả năng chịu nước lên đến 10atm, thiết kế đơn giản trẻ trung với chức năng 3 kim trên nền mặt số đen size 27mm.', N'0', N'ORIENT SSZ3W003B0', N'2630000', N'0', N'0', N'0', NULL, N'1', N'30', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'77', N'RF-QD0001S10B', NULL, N'2021-03-29', N'Mẫu Orient RF-QD0001S10B thiết kế mỏng trẻ trung với phần vỏ máy pin chỉ 7mm mạ vàng hồng thời trang sang trọng cho phái mạnh.', N'1', N'ORIENT RF-QD0001S10B', N'3180000', N'3000000', N'0', N'1', NULL, N'5', N'20', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'78', N'RA-AC0E04L10B', NULL, N'2021-03-29', N'Mẫu Orient RA-AC0E04L10B mặt số xanh size 40mm tone màu thời trang cùng với thiết kế đơn giản 3 kim, phối cùng với bộ dây da tạo hình vân lịch lãm.', N'0', N'ORIENT RA-AC0E04L10B', N'5170000', N'0', N'0', N'1', NULL, N'2', N'30', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'79', N'FER2A005Y0', NULL, N'2021-03-29', N'Đồng hồ Orient FER2A005Y0 mang thiết kế thể thao năng động, với mặt số tròn, kim chỉ có phản quang và vạch số với chữ số to rõ được phu màu đen nổi bật trền nền vàng trắng tinh xảo.', N'0', N'ORIENT FER2A005Y0', N'4950000', N'0', N'0', N'1', NULL, N'1', N'20', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'80', N'FEV0V004SH', NULL, N'2021-03-29', N'Đồng hồ Orient FEV0V004SH có vỏ kim loại bao quanh nền số màu trắng giản đơn, kim chỉ được phủ màu xanh, và vạch số được phản quang nổi bật trên nền số, lịch ngày và lịch thứ được sắp xếp tinh tế.', N'0', N'ORIENT FEV0V004SH', N'6540000', N'0', N'0', N'1', NULL, N'1', N'30', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'81', N'KLEIN K8S211C1', NULL, N'2021-03-30', N'Mẫu K8S211C1 mang đến một vẻ ngoài giản dị với đồng hồ 3 kim cùng với thiết kế kiểu dáng mỏng mang lại một phong cách thời trang dành cho phái nam đến từ thương hiệu Calvin Klein, kết hợp cùng mẫu dây đeo da trơn.', N'0', N'CALVIN KLEIN K8S211C1', N'6100000', N'0', N'0', N'1', NULL, N'1', N'19', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'82', N'KLEIN K3M21BZ6', NULL, N'2021-03-30', N'Mẫu Calvin Klein K3M21BZ6 đơn giản 2 kim phong cách trẻ trung cùng với logo chữ CK được in nổi bật tone vàng hồng trên nền mặt số size 40mm.', N'1', N'CALVIN KLEIN K3M21BZ6', N'5420000', N'5340000', N'0', N'1', NULL, N'1', N'19', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'83', N'KLEIN K3M22T26', NULL, N'2021-03-30', N'Mẫu đồng hồ K3M22T26 phiên bản dây lưới kim loại mạ bạc thời trang cho phái đẹp, kiểu dáng 2 kim mạ bạc trên mặt số phong cách đơn giản đặc trưng từ thương hiệu Calvin Klein.', N'0', N'CALVIN KLEIN K3M22T26', N'5990000', N'0', N'0', N'0', NULL, N'1', N'29', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'84', N'K9N115GH', NULL, N'2021-03-30', N'Mẫu Calvin Klein K9N115GH sang trọng và lịch lãm với sự kết hợp giữa bộ dây nâu cùng vỏ máy kim loại mạ vàng với tone màu vàng nhạt đem đến vẻ trẻ trung cho phái mạnh.', N'0', N'CALVIN KLEIN K9N115GH', N'6530000', N'0', N'0', N'1', NULL, N'3', N'30', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'85', N'K9N115GH', NULL, N'2021-03-30', N'Mẫu Calvin Klein K9N115GH sang trọng và lịch lãm với sự kết hợp giữa bộ dây nâu cùng vỏ máy kim loại mạ vàng với tone màu vàng nhạt đem đến vẻ trẻ trung cho phái mạnh.', N'0', N'CALVIN KLEIN K9N115GH', N'6530000', N'0', N'0', N'1', NULL, N'3', N'30', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'86', N'K8N2364W', NULL, N'2021-03-30', N'Mẫu Calvin Klein K8N2364W phiên bản tone màu vàng hồng thời trang cho các chi tiết dây vỏ lẫn núm vặn, mẫu dây lắc tăng thêm vẻ trẻ trung cho phái đẹp.', N'1', N'CALVIN KLEIN K8N2364W', N'13790000', N'13600000', N'0', N'0', NULL, N'1', N'29', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'87', N'KLEIN K5S3414Y', NULL, N'2021-03-30', N'Mẫu Calvin Klein K5S3414Y phiên bản mặt kính chất liệu Sapphire với kiểu dáng đơn giản 3 kim 1 lịch trên mặt số size 42mm, kiểu máy cơ với thiết kế mỏng thời trang với độ dày chỉ 9mm.', N'0', N'CALVIN KLEIN K5S3414Y', N'14870000', N'0', N'0', N'1', NULL, N'5', N'27', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'88', N'K3M22B26', NULL, N'2021-03-30', N'Mẫu Calvin Klein K3M22B26 phiên bản vàng hồng tone màu thời trang trên chi tiết kim chỉ, mặt số đơn giản trẻ trung cùng với thiết kế mỏng trên phần vỏ máy pin chỉ 6mm.', N'0', N'CALVIN KLEIN K3M22B26', N'6500000', N'0', N'0', N'0', NULL, N'1', N'30', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'89', N'K3M23U26', NULL, N'2021-03-30', N'Mẫu Calvin Klein K3M23U26 phiên bản vàng hồng phối cùng mẫu dây lưới phong cách thời trang dành cho phái đẹp, mặt số đặc trưng đơn giản 2 kim với kích thước mặt 24mm.', N'0', N'CALVIN KLEIN K3M23U26', N'7540000', N'0', N'0', N'0', NULL, N'1', N'30', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'90', N'KLEIN K3M23V26', NULL, N'2021-03-30', N'Mẫu Calvin Klein K3M23V26 phiên bản mạ vàng sang trọng cùng với thiết kế mỏng phần vỏ máy pin chỉ 6mm, mẫu dây đeo thiết kế dạng lưới đem đến vẻ ngoài thời trang cho phái đẹp.', N'1', N'CALVIN KLEIN K3M23V26', N'8030000', N'7999000', N'0', N'0', NULL, N'3', N'30', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'91', N'K8M21421', NULL, N'2021-03-30', N'Mẫu Calvin Klein K8M21421 phiên bản chi tiết kim chỉ vạch số vàng hồng thời trang nổi bật trên mặt số tone nền đen cá tính với kích thước mặt 40mm.', N'1', N'CALVIN KLEIN K8M21421', N'7830000', N'7700000', N'0', N'1', NULL, N'5', N'18', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'92', N'K7W2S116', NULL, N'2021-03-30', N'Mẫu đồng hồ nữ K7W2S116 một phong cách thời trang với mẫu dây đeo kim loại thiết kế kiểu cách tông màu bạc cùng với mặt số nhỏ nhắn đầy nữ tính trẻ trung đến từ thương hiệu Calvin Klein.', N'0', N'CALVIN KLEIN K7W2S116', N'6500000', N'0', N'0', N'0', NULL, N'4', N'19', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'93', N'KLEIN K9E211K6', NULL, N'2021-03-30', N'Mẫu Calvin Klein K9E211K6 thiết kế đơn giản trẻ trung chức năng 3 kim hiện thị trên mặt số size 40mm, các chi tiết vạch số được tạo hình mỏng cách tân.', N'0', N'CALVIN KLEIN K9E211K6', N'7040000', N'0', N'0', N'1', NULL, N'5', N'30', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'94', N'K2Y236K6', NULL, N'2021-03-30', N'Mẫu Calvin Klein K2Y236K6 phiên bản dây da trắng màu thời trang phối cùng vỏ máy pin kiểu dáng mỏng phối tone vàng hồng.', N'0', N'CALVIN KLEIN K2Y236K6', N'9880000', N'0', N'0', N'0', NULL, N'2', N'19', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'95', N'K7N236K2', NULL, N'2021-03-30', N'Mẫu K7N236K2 phong cách đầy giản dị cùng với logo thương hiệu Calvin Klein nổi bật trên nền mặt số trắng trang nhã, tạo nên sự ấn tượng với phần vỏ máy màu vàng hồng mang lại vẻ thời trang trẻ trung đầy thanh lịch cho phái nữ.', N'0', N'CALVIN KLEIN K7N236K2', N'7470000', N'0', N'0', N'0', NULL, N'1', N'20', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'96', N'K8M211CN', NULL, N'2021-03-30', N'Mẫu Calvin Klein K8M211CN mặt số xanh tone màu thời trang cùng các chi tiết đồng hồ thiết mỏng với phần vỏ máy kim loại mạ bạc độ mỏng 7mm.', N'0', N'CALVIN KLEIN K8M211CN', N'5740000', N'0', N'0', N'1', NULL, N'4', N'28', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'97', N'KLEIN K7A23141', NULL, N'2021-03-30', N'Mẫu Calvin Klein K7A23141 kích thước mặt số to 38mm phần vỏ máy mạ bạc sang trọng kết hợp cùng mẫu dây đeo bản nhỏ tạo nên mẫu đồng hồ thời trang trẻ trung cho phái đẹp.', N'0', N'CALVIN KLEIN K7A23141', N'6260000', N'0', N'0', N'0', NULL, N'5', N'20', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'98', N'K5N2M526', NULL, N'2021-03-30', N'Mẫu Calvin Klein K5N2M526 phiên bản dây đeo kiểu dây lắc tạo nên vẻ thời trang cho phái đẹp cùng với lối thiết kế đơn giản chức năng 2 kim trên nền mặt số trắng size 27mm.', N'0', N'CALVIN KLEIN K5N2M526', N'9630000', N'0', N'0', N'0', NULL, N'5', N'30', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'99', N'K8M27121', NULL, N'2021-03-30', N'Mẫu Calvin Klein K8M27121 thiết kế Chronograph với đặc trưng 3 núm vặn điều chỉnh các chức năng đo thời gian, vỏ máy kim loại mạ bạc với kích thước mặt số 43mm.', N'1', N'CALVIN KLEIN K8M27121', N'9410000', N'9200000', N'0', N'1', NULL, N'3', N'30', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'100', N'K8Y236Z6', NULL, N'2021-03-30', N'Mẫu Calvin Klein K8Y236Z6 phiên bản mặt số lớn size 42mm phối cùng mẫu dây da bản nhỏ tone vàng hồng nổi bật lên vẻ thời trang thanh lịch dành cho phái đẹp.', N'0', N'CALVIN KLEIN K8Y236Z6', N'6750000', N'0', N'0', N'0', NULL, N'5', N'30', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'101', N'DW-E10710-2AV707', N'admin@gmail.com', N'2021-04-14', N'Đồng hồ thương hiệu SEIKO, chất liệu bền bỉ. Được trải qua một quá trình thiết kế theo quy chuẩn để tạo ra một sản phẩm mang đến đẳng cấp cho phái mạnh', N'1', N'MOVADO GOLD NOBLE', N'7000000', N'6700000', N'0', N'1', NULL, N'2', N'20', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'102', N'M027.426.16.018.00', N'admin@gmail.com', N'2021-04-15', N'Mẫu Mido M027.426.16.018.00 phiên bản kim giây tone xanh nổi bật lên vẻ thời trang cho phái mạnh trên nền mặt trắng size 40mm, vẻ ngoài lịch lãm cùng mẫu dây da tạo hình vân.', N'0', N'MIDO M027.426.16.018.00', N'22790000', N'22500000', N'0', N'1', NULL, N'4', N'20', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'103', N'M005.430.11.031.80', N'admin@gmail.com', N'2021-04-15', N'Mẫu Mido M005.430.11.031.80 thiết kế nam tính sang trọng với phần dây đeo kim loại mạ bạc, nắp lưng trong suốt lộ ra thiết kế hoạt động từ bộ máy cơ tạo nên vẻ độc đáo.', N'0', N'MIDO M005.430.11.031.80', N'21380000', N'0', N'0', N'1', NULL, N'5', N'20', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'104', N'M8600.4.18.1', N'admin@gmail.com', N'2021-04-15', N'Mẫu Mido M8600.4.18.1 mặt đen size 38mm tone màu nam tính đi cùng thiết kế đơn giản 3 kim cùng các vạch số được tạo nét mỏng mạ bạc mang lại vẻ trẻ trung.', N'1', N'MIDO M8600.4.18.1', N'20250000', N'20000000', N'0', N'1', NULL, N'2', N'20', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'105', N'M8600.9.76.1', N'admin@gmail.com', N'2021-04-16', N'Mẫu Mido M8600.9.76.1 phiên bản trẻ trung với mẫu dây đeo vàng demi, kết hợp cùng các chi tiết vạch số tạo nét mỏng tinh tế sang trọng cho phái mạnh.', N'0', N'MIDO M8600.9.76.1', N'23630000', N'0', N'0', N'1', NULL, N'3', N'19', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'106', N'M7600.4.21.1', N'admin@gmail.com', N'2021-04-16', N'Mẫu Mido M7600.4.21.1 phiên bản cọc số chữ la mã kiểu dáng mỏng được phối tone xanh thời trang cho phái đẹp trên nền mặt trắng size 29mm.', N'1', N'MIDO M7600.4.21.1', N'20250000', N'20000000', N'0', N'0', NULL, N'1', N'20', NULL, NULL)
GO

INSERT INTO [dbo].[product] ([id], [code], [created_by], [created_date], [description], [issale], [name], [price], [price_sale], [isdelete], [gender], [creatd_by], [supplier_id], [quantity], [update_by], [updated_date]) VALUES (N'107', N'M024.207.11.031.00', N'admin@gmail.com', N'2021-04-16', N'Mẫu Mido M024.207.11.031.00 thiết kế mỏng thời trang cho phái đẹp với các chi tiết vạch số lẫn kim chỉ được tạo nét thanh mảnh mạ bạc góp phần tạo nên vẻ sang trọng.', N'0', N'MIDO M024.207.11.031.00', N'21380000', N'0', N'0', N'0', NULL, N'1', N'20', NULL, NULL)
GO

SET IDENTITY_INSERT [dbo].[product] OFF
GO


-- ----------------------------
-- Table structure for product_image
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[product_image]') AND type IN ('U'))
	DROP TABLE [dbo].[product_image]
GO

CREATE TABLE [dbo].[product_image] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [create_by] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [created_date] date  NULL,
  [image] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [proiority] int  NULL,
  [update_by] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [updated_date] date  NULL,
  [isdelete] bit  NULL,
  [product_id] int  NULL
)
GO

ALTER TABLE [dbo].[product_image] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of product_image
-- ----------------------------
SET IDENTITY_INSERT [dbo].[product_image] ON
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'1', N'admin@gmail.com', N'2021-03-04', N'1_anh1.jpg', N'1', N'admin@gmail.com', N'2021-03-04', N'0', N'1')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'2', N'admin@gmail.com', N'2021-03-04', N'1_anh2.jpg', N'0', N'admin@gmail.com', N'2021-03-04', N'0', N'1')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'3', N'admin@gmail.com', N'2021-03-04', N'1_anh3.jpg', N'0', N'admin@gmail.com', N'2021-03-04', N'0', N'1')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'4', N'admin@gmail.com', N'2021-03-04', N'1_anh4.jpg', N'0', N'admin@gmail.com', N'2021-03-04', N'0', N'1')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'5', N'admin@gmail.com', N'2021-03-04', N'1_anh5.jpg', N'0', N'admin@gmail.com', N'2021-03-04', N'0', N'1')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'6', N'admin@gmail.com', N'2021-03-04', N'2_anh1.jpg', N'1', N'admin@gmail.com', N'2021-03-04', N'0', N'2')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'7', N'admin@gmail.com', N'2021-03-04', N'2_anh2.jpg', N'0', N'admin@gmail.com', N'2021-03-04', N'0', N'2')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'8', N'admin@gmail.com', N'2021-03-04', N'2_anh3.jpg', N'0', N'admin@gmail.com', N'2021-03-04', N'0', N'2')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'9', N'admin@gmail.com', N'2021-03-04', N'2_anh4.jpg', N'0', N'admin@gmail.com', N'2021-03-04', N'0', N'2')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'10', N'admin@gmail.com', N'2021-03-04', N'2_anh5.jpg', N'0', N'admin@gmail.com', N'2021-03-04', N'0', N'2')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'11', N'admin@gmail.com', N'2021-03-04', N'3_anh1.jpg', N'1', N'admin@gmail.com', N'2021-03-04', N'0', N'3')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'12', N'admin@gmail.com', N'2021-03-04', N'3_anh2.jpg', N'0', N'admin@gmail.com', N'2021-03-04', N'0', N'3')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'13', N'admin@gmail.com', N'2021-03-04', N'3_anh3.jpg', N'0', N'admin@gmail.com', N'2021-03-04', N'0', N'3')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'14', N'admin@gmail.com', N'2021-03-04', N'3_anh4.jpg', N'0', N'admin@gmail.com', N'2021-03-04', N'0', N'3')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'15', N'admin@gmail.com', N'2021-03-04', N'3_anh5.jpg', N'0', N'admin@gmail.com', N'2021-03-04', N'0', N'3')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'16', N'admin@gmail.com', N'2021-03-04', N'4_anh1.jpg', N'1', N'admin@gmail.com', N'2021-03-04', N'0', N'4')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'17', N'admin@gmail.com', N'2021-03-04', N'4_anh2.jpg', N'0', N'admin@gmail.com', N'2021-03-04', N'0', N'4')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'18', N'admin@gmail.com', N'2021-03-04', N'4_anh3.jpg', N'0', N'admin@gmail.com', N'2021-03-04', N'0', N'4')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'19', N'admin@gmail.com', N'2021-03-04', N'4_anh4.jpg', N'0', N'admin@gmail.com', N'2021-03-04', N'0', N'4')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'20', N'admin@gmail.com', N'2021-03-04', N'4_anh5.jpg', N'0', N'admin@gmail.com', N'2021-03-04', N'0', N'4')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'21', N'admin@gmail.com', N'2021-03-04', N'5_anh1.jpg', N'1', N'admin@gmail.com', N'2021-03-04', N'0', N'5')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'22', N'admin@gmail.com', N'2021-03-04', N'5_anh2.jpg', N'0', N'admin@gmail.com', N'2021-03-04', N'0', N'5')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'23', N'admin@gmail.com', N'2021-03-04', N'5_anh3.jpg', N'0', N'admin@gmail.com', N'2021-03-04', N'0', N'5')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'24', N'admin@gmail.com', N'2021-03-04', N'5_anh4.jpg', N'0', N'admin@gmail.com', N'2021-03-04', N'0', N'5')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'25', N'admin@gmail.com', N'2021-03-04', N'5_anh5.jpg', N'0', N'admin@gmail.com', N'2021-03-04', N'0', N'5')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'26', N'admin@gmail.com', N'2021-03-04', N'6_anh1.jpg', N'1', N'admin@gmail.com', N'2021-03-04', N'0', N'6')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'27', N'admin@gmail.com', N'2021-03-04', N'6_anh2.jpg', N'0', N'admin@gmail.com', N'2021-03-04', N'0', N'6')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'28', N'admin@gmail.com', N'2021-03-04', N'6_anh3.jpg', N'0', N'admin@gmail.com', N'2021-03-04', N'0', N'6')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'29', N'admin@gmail.com', N'2021-03-04', N'6_anh4.jpg', N'0', N'admin@gmail.com', N'2021-03-04', N'0', N'6')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'30', N'admin@gmail.com', N'2021-03-04', N'6_anh5.jpg', N'0', N'admin@gmail.com', N'2021-03-04', N'0', N'6')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'31', N'admin@gmail.com', N'2021-03-04', N'7_anh1.jpg', N'1', N'admin@gmail.com', N'2021-03-04', N'0', N'7')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'32', N'admin@gmail.com', N'2021-03-04', N'7_anh2.jpg', N'0', N'admin@gmail.com', N'2021-03-04', N'0', N'7')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'33', N'admin@gmail.com', N'2021-03-04', N'7_anh3.jpg', N'0', N'admin@gmail.com', N'2021-03-04', N'0', N'7')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'34', N'admin@gmail.com', N'2021-03-04', N'7_anh4.jpg', N'0', N'admin@gmail.com', N'2021-03-04', N'0', N'7')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'35', N'admin@gmail.com', N'2021-03-04', N'7_anh5.jpg', N'0', N'admin@gmail.com', N'2021-03-04', N'0', N'7')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'36', N'admin@gmail.com', N'2021-03-04', N'8_anh1.jpg', N'1', N'admin@gmail.com', N'2021-03-04', N'0', N'8')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'37', N'admin@gmail.com', N'2021-03-04', N'8_anh2.jpg', N'0', N'admin@gmail.com', N'2021-03-04', N'0', N'8')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'38', N'admin@gmail.com', N'2021-03-04', N'8_anh3.jpg', N'0', N'admin@gmail.com', N'2021-03-04', N'0', N'8')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'39', N'admin@gmail.com', N'2021-03-04', N'8_anh4.jpg', N'0', N'admin@gmail.com', N'2021-03-04', N'0', N'8')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'40', N'admin@gmail.com', N'2021-03-04', N'8_anh5.jpg', N'0', N'admin@gmail.com', N'2021-03-04', N'0', N'8')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'41', N'admin@gmail.com', N'2021-03-04', N'9_anh1.jpg', N'1', N'admin@gmail.com', N'2021-03-04', N'0', N'9')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'42', N'admin@gmail.com', N'2021-03-04', N'9_anh2.jpg', N'0', N'admin@gmail.com', N'2021-03-04', N'0', N'9')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'43', N'admin@gmail.com', N'2021-03-04', N'9_anh3.jpg', N'0', N'admin@gmail.com', N'2021-03-04', N'0', N'9')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'44', N'admin@gmail.com', N'2021-03-04', N'9_anh4.jpg', N'0', N'admin@gmail.com', N'2021-03-04', N'0', N'9')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'45', N'admin@gmail.com', N'2021-03-04', N'9_anh5.jpg', N'0', N'admin@gmail.com', N'2021-03-04', N'0', N'9')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'46', N'admin@gmail.com', N'2021-03-04', N'10_anh1.jpg', N'1', N'admin@gmail.com', N'2021-03-04', N'0', N'10')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'47', N'admin@gmail.com', N'2021-03-04', N'10_anh2.jpg', N'0', N'admin@gmail.com', N'2021-03-04', N'0', N'10')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'48', N'admin@gmail.com', N'2021-03-04', N'10_anh3.jpg', N'0', N'admin@gmail.com', N'2021-03-04', N'0', N'10')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'49', N'admin@gmail.com', N'2021-03-04', N'10_anh4.jpg', N'0', N'admin@gmail.com', N'2021-03-04', N'0', N'10')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'50', N'admin@gmail.com', N'2021-03-04', N'10_anh5.jpg', N'0', N'admin@gmail.com', N'2021-03-04', N'0', N'10')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'51', N'admin@gmail.com', N'2021-03-04', N'11_anh1.jpg', N'1', N'admin@gmail.com', N'2021-03-04', N'0', N'11')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'52', N'admin@gmail.com', N'2021-03-04', N'11_anh2.jpg', N'0', N'admin@gmail.com', N'2021-03-04', N'0', N'11')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'53', N'admin@gmail.com', N'2021-03-04', N'11_anh3.jpg', N'0', N'admin@gmail.com', N'2021-03-04', N'0', N'11')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'54', N'admin@gmail.com', N'2021-03-04', N'11_anh4.jpg', N'0', N'admin@gmail.com', N'2021-03-04', N'0', N'11')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'55', N'admin@gmail.com', N'2021-03-04', N'11_anh5.jpg', N'0', N'admin@gmail.com', N'2021-03-04', N'0', N'11')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'56', NULL, N'2021-03-04', N'12_anh_1616996679124anh1.jpg', N'1', NULL, N'2021-03-29', N'0', N'12')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'57', NULL, N'2021-03-04', N'12_anh_1616996687162anh2.jpg', N'0', NULL, N'2021-03-29', N'0', N'12')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'58', NULL, N'2021-03-04', N'12_anh_1616996694547anh3.jpg', N'0', NULL, N'2021-03-29', N'0', N'12')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'59', NULL, N'2021-03-04', N'12_anh_1616996701909anh4.jpg', N'0', NULL, N'2021-03-29', N'0', N'12')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'60', NULL, N'2021-03-04', N'12_anh_1616996710894anh5.jpg', N'0', NULL, N'2021-03-29', N'0', N'12')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'61', NULL, N'2021-03-04', N'13_anh_1616996828711anh1.jpg', N'1', NULL, N'2021-03-29', N'0', N'13')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'62', NULL, N'2021-03-04', N'13_anh_1616996834698anh2.jpg', N'0', NULL, N'2021-03-29', N'0', N'13')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'63', NULL, N'2021-03-04', N'13_anh_1616996840891anh3.jpg', N'0', NULL, N'2021-03-29', N'0', N'13')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'64', NULL, N'2021-03-04', N'13_anh_1616996847035anh4.jpg', N'0', NULL, N'2021-03-29', N'0', N'13')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'65', NULL, N'2021-03-04', N'13_anh_1616996852588anh5.jpg', N'0', NULL, N'2021-03-29', N'0', N'13')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'66', NULL, N'2021-03-04', N'14_anh_1616996951715anh1.jpg', N'1', NULL, N'2021-03-29', N'0', N'14')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'67', NULL, N'2021-03-04', N'14_anh_1616996957629anh2.jpg', N'0', NULL, N'2021-03-29', N'0', N'14')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'68', NULL, N'2021-03-04', N'14_anh_1616996963752anh3.jpg', N'0', NULL, N'2021-03-29', N'0', N'14')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'69', NULL, N'2021-03-04', N'14_anh_1616996974156anh4.jpg', N'0', NULL, N'2021-03-29', N'0', N'14')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'70', NULL, N'2021-03-04', N'14_anh_1616996980332anh5.jpg', N'0', NULL, N'2021-03-29', N'0', N'14')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'71', NULL, N'2021-03-04', N'15_anh_1616997055719anh1.jpg', N'1', NULL, N'2021-03-29', N'0', N'15')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'72', NULL, N'2021-03-04', N'15_anh_1616997069965anh2.jpg', N'0', NULL, N'2021-03-29', N'0', N'15')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'73', NULL, N'2021-03-04', N'15_anh_1616997079302anh3.jpg', N'0', NULL, N'2021-03-29', N'0', N'15')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'74', NULL, N'2021-03-04', N'15_anh_1616997086047anh4.jpg', N'0', NULL, N'2021-03-29', N'0', N'15')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'75', NULL, N'2021-03-04', N'15_anh_1616997091794anh5.jpg', N'0', NULL, N'2021-03-29', N'0', N'15')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'76', NULL, N'2021-03-04', N'16_anh_1616997210049anh1.jpg', N'1', NULL, N'2021-03-29', N'0', N'16')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'77', NULL, N'2021-03-04', N'16_anh_1616997217124anh2.jpg', N'0', NULL, N'2021-03-29', N'0', N'16')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'78', NULL, N'2021-03-04', N'16_anh_1616997224731anh3.jpg', N'0', NULL, N'2021-03-29', N'0', N'16')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'79', NULL, N'2021-03-04', N'16_anh_1616997232265anh4.jpg', N'0', NULL, N'2021-03-29', N'0', N'16')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'80', NULL, N'2021-03-04', N'16_anh_1616997237908anh5.jpg', N'0', NULL, N'2021-03-29', N'0', N'16')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'81', NULL, N'2021-03-29', N'17_anh_1616998838882anh1.jpg', N'1', NULL, NULL, N'0', N'17')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'82', NULL, N'2021-03-29', N'17_anh_1616998845164anh2.jpg', N'0', NULL, NULL, N'0', N'17')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'83', NULL, N'2021-03-29', N'17_anh_1616998854653anh3.jpg', N'0', NULL, NULL, N'0', N'17')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'84', NULL, N'2021-03-29', N'17_anh_1616998861093anh4.jpg', N'0', NULL, NULL, N'0', N'17')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'85', NULL, N'2021-03-29', N'17_anh_1616998867930anh5.jpg', N'0', NULL, NULL, N'0', N'17')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'86', NULL, N'2021-03-29', N'18_anh_1616999283838anh1.jpg', N'1', NULL, NULL, N'0', N'18')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'87', NULL, N'2021-03-29', N'18_anh_1616999289093anh2.jpg', N'0', NULL, NULL, N'0', N'18')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'88', NULL, N'2021-03-29', N'18_anh_1616999295237anh3.jpg', N'0', NULL, NULL, N'0', N'18')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'89', NULL, N'2021-03-29', N'18_anh_1616999300579anh4.jpg', N'0', NULL, NULL, N'0', N'18')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'90', NULL, N'2021-03-29', N'18_anh_1616999306355anh5.jpg', N'0', NULL, NULL, N'0', N'18')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'91', NULL, N'2021-03-29', N'19_anh_1616999604468anh1.jpg', N'1', NULL, NULL, N'0', N'19')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'92', NULL, N'2021-03-29', N'19_anh_1616999609581anh2.jpg', N'0', NULL, NULL, N'0', N'19')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'93', NULL, N'2021-03-29', N'19_anh_1616999614852anh3.jpg', N'0', NULL, NULL, N'0', N'19')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'94', NULL, N'2021-03-29', N'19_anh_1616999620017anh4.jpg', N'0', NULL, NULL, N'0', N'19')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'95', NULL, N'2021-03-29', N'19_anh_1616999624612anh5.jpg', N'0', NULL, NULL, N'0', N'19')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'96', NULL, N'2021-03-29', N'20_anh_1616999973635anh1.jpg', N'1', NULL, NULL, N'0', N'20')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'97', NULL, N'2021-03-29', N'20_anh_1616999978676anh2.jpg', N'0', NULL, NULL, N'0', N'20')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'98', NULL, N'2021-03-29', N'20_anh_1616999984427anh3.jpg', N'0', NULL, NULL, N'0', N'20')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'99', NULL, N'2021-03-29', N'20_anh_1616999990140anh4.jpg', N'0', NULL, NULL, N'0', N'20')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'100', NULL, N'2021-03-29', N'20_anh_1616999995503anh5.jpg', N'0', NULL, NULL, N'0', N'20')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'101', NULL, N'2021-03-29', N'21_anh_1617000567075anh1.jpg', N'1', NULL, NULL, N'0', N'21')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'102', NULL, N'2021-03-29', N'21_anh_1617000571666anh2.jpg', N'0', NULL, NULL, N'0', N'21')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'103', NULL, N'2021-03-29', N'21_anh_1617000576355anh3.jpg', N'0', NULL, NULL, N'0', N'21')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'104', NULL, N'2021-03-29', N'21_anh_1617000580901anh4.jpg', N'0', NULL, NULL, N'0', N'21')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'105', NULL, N'2021-03-29', N'21_anh_1617000585153anh5.jpg', N'0', NULL, NULL, N'0', N'21')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'106', NULL, N'2021-03-29', N'22_anh_1617000875839anh1.jpg', N'1', NULL, NULL, N'0', N'22')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'107', NULL, N'2021-03-29', N'22_anh_1617000881040anh2.jpg', N'0', NULL, NULL, N'0', N'22')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'108', NULL, N'2021-03-29', N'22_anh_1617000885899anh3.jpg', N'0', NULL, NULL, N'0', N'22')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'109', NULL, N'2021-03-29', N'22_anh_1617000891626anh4.jpg', N'0', NULL, NULL, N'0', N'22')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'110', NULL, N'2021-03-29', N'22_anh_1617000897825anh5.jpg', N'0', NULL, NULL, N'0', N'22')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'111', NULL, N'2021-03-29', N'23_anh_1617001178379anh1.jpg', N'1', NULL, NULL, N'0', N'23')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'112', NULL, N'2021-03-29', N'23_anh_1617001183027anh2.jpg', N'0', NULL, NULL, N'0', N'23')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'113', NULL, N'2021-03-29', N'23_anh_1617001187920anh3.jpg', N'0', NULL, NULL, N'0', N'23')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'114', NULL, N'2021-03-29', N'23_anh_1617001193491anh4.jpg', N'0', NULL, NULL, N'0', N'23')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'115', NULL, N'2021-03-29', N'23_anh_1617001198998anh5.jpg', N'0', NULL, NULL, N'0', N'23')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'116', NULL, N'2021-03-29', N'24_anh_1617001477170anh1.jpg', N'1', NULL, NULL, N'0', N'24')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'117', NULL, N'2021-03-29', N'24_anh_1617001481735anh2.jpg', N'0', NULL, NULL, N'0', N'24')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'118', NULL, N'2021-03-29', N'24_anh_1617001486934anh3.jpg', N'0', NULL, NULL, N'0', N'24')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'119', NULL, N'2021-03-29', N'24_anh_1617001492120anh4.jpg', N'0', NULL, NULL, N'0', N'24')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'120', NULL, N'2021-03-29', N'24_anh_1617001497635anh5.jpg', N'0', NULL, NULL, N'0', N'24')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'121', NULL, N'2021-03-29', N'25_anh_1617002130589anh1.jpg', N'1', NULL, NULL, N'0', N'25')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'122', NULL, N'2021-03-29', N'25_anh_1617002135732anh2.jpg', N'0', NULL, NULL, N'0', N'25')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'123', NULL, N'2021-03-29', N'25_anh_1617002140887anh3.jpg', N'0', NULL, NULL, N'0', N'25')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'124', NULL, N'2021-03-29', N'25_anh_1617002156757anh4.jpg', N'0', NULL, NULL, N'0', N'25')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'125', NULL, N'2021-03-29', N'25_anh_1617002163715anh5.jpg', N'0', NULL, NULL, N'0', N'25')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'126', NULL, N'2021-03-29', N'26_anh_1617002936832anh1.jpg', N'1', NULL, NULL, N'0', N'26')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'127', NULL, N'2021-03-29', N'26_anh_1617002940983anh2.jpg', N'0', NULL, NULL, N'0', N'26')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'128', NULL, N'2021-03-29', N'26_anh_1617002945520anh3.jpg', N'0', NULL, NULL, N'0', N'26')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'129', NULL, N'2021-03-29', N'26_anh_1617002950133anh4.jpg', N'0', NULL, NULL, N'0', N'26')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'130', NULL, N'2021-03-29', N'26_anh_1617002954982anh5.jpg', N'0', NULL, NULL, N'0', N'26')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'131', NULL, N'2021-03-29', N'27_anh_1617003216052anh1.jpg', N'1', NULL, NULL, N'0', N'27')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'132', NULL, N'2021-03-29', N'27_anh_1617003220227anh2.jpg', N'0', NULL, NULL, N'0', N'27')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'133', NULL, N'2021-03-29', N'27_anh_1617003224622anh3.jpg', N'0', NULL, NULL, N'0', N'27')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'134', NULL, N'2021-03-29', N'27_anh_1617003229034anh4.jpg', N'0', NULL, NULL, N'0', N'27')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'135', NULL, N'2021-03-29', N'27_anh_1617003233670anh5.jpg', N'0', NULL, NULL, N'0', N'27')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'136', NULL, N'2021-03-29', N'28_anh_1617003465170anh1.jpg', N'1', NULL, NULL, N'0', N'28')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'137', NULL, N'2021-03-29', N'28_anh_1617003470214anh2.jpg', N'0', NULL, NULL, N'0', N'28')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'138', NULL, N'2021-03-29', N'28_anh_1617003474699anh3.jpg', N'0', NULL, NULL, N'0', N'28')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'139', NULL, N'2021-03-29', N'28_anh_1617003480000anh4.jpg', N'0', NULL, NULL, N'0', N'28')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'140', NULL, N'2021-03-29', N'28_anh_1617003484857anh5.jpg', N'0', NULL, NULL, N'0', N'28')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'141', NULL, N'2021-03-29', N'29_anh_1617003743982anh1.jpg', N'1', NULL, NULL, N'0', N'29')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'142', NULL, N'2021-03-29', N'29_anh_1617003749375anh2.jpg', N'0', NULL, NULL, N'0', N'29')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'143', NULL, N'2021-03-29', N'29_anh_1617003753925anh3.jpg', N'0', NULL, NULL, N'0', N'29')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'144', NULL, N'2021-03-29', N'29_anh_1617003758804anh4.jpg', N'0', NULL, NULL, N'0', N'29')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'145', NULL, N'2021-03-29', N'29_anh_1617003763510anh5.jpg', N'0', NULL, NULL, N'0', N'29')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'146', NULL, N'2021-03-29', N'30_anh_1617004026750anh1.jpg', N'1', NULL, NULL, N'0', N'30')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'147', NULL, N'2021-03-29', N'30_anh_1617004032092anh2.jpg', N'0', NULL, NULL, N'0', N'30')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'148', NULL, N'2021-03-29', N'30_anh_1617004040972anh3.jpg', N'0', NULL, NULL, N'0', N'30')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'149', NULL, N'2021-03-29', N'30_anh_1617004046299anh4.jpg', N'0', NULL, NULL, N'0', N'30')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'150', NULL, N'2021-03-29', N'30_anh_1617004050960anh5.jpg', N'0', NULL, NULL, N'0', N'30')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'151', NULL, N'2021-03-29', N'31_anh_1617005313870anh1.jpg', N'1', NULL, NULL, N'0', N'31')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'152', NULL, N'2021-03-29', N'31_anh_1617005318949anh2.jpg', N'0', NULL, NULL, N'0', N'31')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'153', NULL, N'2021-03-29', N'31_anh_1617005325778anh3.jpg', N'0', NULL, NULL, N'0', N'31')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'154', NULL, N'2021-03-29', N'31_anh_1617005332755anh4.jpg', N'0', NULL, NULL, N'0', N'31')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'155', NULL, N'2021-03-29', N'31_anh_1617005338559anh5.jpg', N'0', NULL, NULL, N'0', N'31')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'156', NULL, N'2021-03-29', N'32_anh_1617005927600anh1.jpg', N'1', NULL, NULL, N'0', N'32')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'157', NULL, N'2021-03-29', N'32_anh_1617005932097anh2.jpg', N'0', NULL, NULL, N'0', N'32')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'158', NULL, N'2021-03-29', N'32_anh_1617005936335anh3.jpg', N'0', NULL, NULL, N'0', N'32')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'159', NULL, N'2021-03-29', N'32_anh_1617005941113anh4.jpg', N'0', NULL, NULL, N'0', N'32')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'160', NULL, N'2021-03-29', N'32_anh_1617005945750anh5.jpg', N'0', NULL, NULL, N'0', N'32')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'161', NULL, N'2021-03-29', N'33_anh_1617006247561anh1.jpg', N'1', NULL, NULL, N'0', N'33')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'162', NULL, N'2021-03-29', N'33_anh_1617006252251anh2.jpg', N'0', NULL, NULL, N'0', N'33')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'163', NULL, N'2021-03-29', N'33_anh_1617006258011anh3.jpg', N'0', NULL, NULL, N'0', N'33')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'164', NULL, N'2021-03-29', N'33_anh_1617006263323anh4.jpg', N'0', NULL, NULL, N'0', N'33')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'165', NULL, N'2021-03-29', N'33_anh_1617006268785anh5.jpg', N'0', NULL, NULL, N'0', N'33')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'166', NULL, N'2021-03-29', N'34_anh_1617006525214anh1.jpg', N'1', NULL, NULL, N'0', N'34')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'168', NULL, N'2021-03-29', N'34_anh_1617006575921anh2.jpg', N'0', NULL, NULL, N'0', N'34')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'169', NULL, N'2021-03-29', N'34_anh_1617006581313anh3.jpg', N'0', NULL, NULL, N'0', N'34')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'170', NULL, N'2021-03-29', N'34_anh_1617006586947anh4.jpg', N'0', NULL, NULL, N'0', N'34')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'171', NULL, N'2021-03-29', N'34_anh_1617006591705anh5.jpg', N'0', NULL, NULL, N'0', N'34')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'172', NULL, N'2021-03-29', N'35_anh_1617006823396anh1.jpg', N'1', NULL, NULL, N'0', N'35')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'173', NULL, N'2021-03-29', N'35_anh_1617006829106anh2.jpg', N'0', NULL, NULL, N'0', N'35')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'174', NULL, N'2021-03-29', N'35_anh_1617006833439anh3.jpg', N'0', NULL, NULL, N'0', N'35')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'175', NULL, N'2021-03-29', N'35_anh_1617006845343anh4.jpg', N'0', NULL, NULL, N'0', N'35')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'176', NULL, N'2021-03-29', N'35_anh_1617006851891anh5.jpg', N'0', NULL, NULL, N'0', N'35')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'177', NULL, N'2021-03-29', N'36_anh_1617007138327anh1.jpg', N'1', NULL, NULL, N'0', N'36')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'178', NULL, N'2021-03-29', N'36_anh_1617007143039anh2.jpg', N'0', NULL, NULL, N'0', N'36')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'179', NULL, N'2021-03-29', N'36_anh_1617007147503anh3.jpg', N'0', NULL, NULL, N'0', N'36')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'180', NULL, N'2021-03-29', N'36_anh_1617007152441anh4.jpg', N'0', NULL, NULL, N'0', N'36')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'181', NULL, N'2021-03-29', N'36_anh_1617007157926anh5.jpg', N'0', NULL, NULL, N'0', N'36')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'182', NULL, N'2021-03-29', N'37_anh_1617007374372anh1.jpg', N'1', NULL, NULL, N'0', N'37')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'183', NULL, N'2021-03-29', N'37_anh_1617007378456anh2.jpg', N'0', NULL, NULL, N'0', N'37')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'184', NULL, N'2021-03-29', N'37_anh_1617007386265anh3.jpg', N'0', NULL, NULL, N'0', N'37')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'185', NULL, N'2021-03-29', N'37_anh_1617007474529anh4.jpg', N'0', NULL, N'2021-03-29', N'0', N'37')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'186', NULL, N'2021-03-29', N'37_anh_1617007486762anh5.jpg', N'0', NULL, NULL, N'0', N'37')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'188', NULL, N'2021-03-29', N'38_anh_1617008028874anh1.jpg', N'1', NULL, N'2021-03-29', N'0', N'38')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'189', NULL, N'2021-03-29', N'38_anh_1617008037859anh2.jpg', N'0', NULL, NULL, N'0', N'38')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'190', NULL, N'2021-03-29', N'38_anh_1617008043559anh3.jpg', N'0', NULL, NULL, N'0', N'38')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'191', NULL, N'2021-03-29', N'38_anh_1617008047955anh4.jpg', N'0', NULL, NULL, N'0', N'38')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'192', NULL, N'2021-03-29', N'38_anh_1617008054013anh5.jpg', N'0', NULL, NULL, N'0', N'38')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'193', NULL, N'2021-03-29', N'39_anh_1617008270724anh1.jpg', N'1', NULL, NULL, N'0', N'39')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'194', NULL, N'2021-03-29', N'39_anh_1617008275268anh2.jpg', N'0', NULL, NULL, N'0', N'39')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'195', NULL, N'2021-03-29', N'39_anh_1617008280291anh3.jpg', N'0', NULL, NULL, N'0', N'39')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'196', NULL, N'2021-03-29', N'39_anh_1617008284656anh4.jpg', N'0', NULL, NULL, N'0', N'39')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'197', NULL, N'2021-03-29', N'39_anh_1617008288887anh5.jpg', N'0', NULL, NULL, N'0', N'39')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'198', NULL, N'2021-03-29', N'40_anh_1617008845139anh1.jpg', N'1', NULL, NULL, N'0', N'40')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'199', NULL, N'2021-03-29', N'40_anh_1617008850011anh2.jpg', N'0', NULL, NULL, N'0', N'40')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'200', NULL, N'2021-03-29', N'40_anh_1617008855021anh3.jpg', N'0', NULL, NULL, N'0', N'40')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'201', NULL, N'2021-03-29', N'40_anh_1617008859403anh4.jpg', N'0', NULL, NULL, N'0', N'40')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'202', NULL, N'2021-03-29', N'40_anh_1617008863976anh5.jpg', N'0', NULL, NULL, N'0', N'40')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'203', NULL, N'2021-03-29', N'41_anh_1617009257307anh1.jpg', N'1', NULL, NULL, N'0', N'41')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'204', NULL, N'2021-03-29', N'41_anh_1617009265184anh2.jpg', N'0', NULL, NULL, N'0', N'41')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'205', NULL, N'2021-03-29', N'41_anh_1617009270384anh3.jpg', N'0', NULL, NULL, N'0', N'41')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'206', NULL, N'2021-03-29', N'41_anh_1617009275071anh4.jpg', N'0', NULL, NULL, N'0', N'41')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'207', NULL, N'2021-03-29', N'41_anh_1617009280292anh5.jpg', N'0', NULL, NULL, N'0', N'41')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'208', NULL, N'2021-03-29', N'42_anh_1617009534416anh1.jpg', N'1', NULL, NULL, N'0', N'42')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'209', NULL, N'2021-03-29', N'42_anh_1617009539022anh2.jpg', N'0', NULL, NULL, N'0', N'42')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'210', NULL, N'2021-03-29', N'42_anh_1617009543437anh3.jpg', N'0', NULL, NULL, N'0', N'42')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'211', NULL, N'2021-03-29', N'42_anh_1617009547801anh4.jpg', N'0', NULL, NULL, N'0', N'42')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'212', NULL, N'2021-03-29', N'42_anh_1617009552542anh5.jpg', N'0', NULL, NULL, N'0', N'42')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'213', NULL, N'2021-03-29', N'43_anh_1617009920471anh1.jpg', N'1', NULL, NULL, N'0', N'43')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'214', NULL, N'2021-03-29', N'43_anh_1617009925090anh2.jpg', N'0', NULL, NULL, N'0', N'43')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'215', NULL, N'2021-03-29', N'43_anh_1617009935734anh3.jpg', N'0', NULL, NULL, N'0', N'43')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'216', NULL, N'2021-03-29', N'43_anh_1617009941279anh4.jpg', N'0', NULL, NULL, N'0', N'43')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'217', NULL, N'2021-03-29', N'43_anh_1617009946031anh5.jpg', N'0', NULL, NULL, N'0', N'43')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'218', NULL, N'2021-03-29', N'44_anh_1617010198202anh1.jpg', N'1', NULL, NULL, N'0', N'44')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'219', NULL, N'2021-03-29', N'44_anh_1617010202931anh2.jpg', N'0', NULL, NULL, N'0', N'44')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'220', NULL, N'2021-03-29', N'44_anh_1617010207599anh3.jpg', N'0', NULL, NULL, N'0', N'44')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'221', NULL, N'2021-03-29', N'44_anh_1617010211919anh4.jpg', N'0', NULL, NULL, N'0', N'44')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'222', NULL, N'2021-03-29', N'44_anh_1617010216385anh5.jpg', N'0', NULL, NULL, N'0', N'44')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'223', NULL, N'2021-03-29', N'45_anh_1617010524132anh1.jpg', N'1', NULL, NULL, N'0', N'45')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'224', NULL, N'2021-03-29', N'45_anh_1617010530074anh2.jpg', N'0', NULL, NULL, N'0', N'45')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'225', NULL, N'2021-03-29', N'45_anh_1617010534995anh3.jpg', N'0', NULL, NULL, N'0', N'45')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'226', NULL, N'2021-03-29', N'45_anh_1617010539493anh4.jpg', N'0', NULL, NULL, N'0', N'45')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'227', NULL, N'2021-03-29', N'45_anh_1617010545774anh5.jpg', N'0', NULL, NULL, N'0', N'45')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'228', NULL, N'2021-03-29', N'46_anh_1617011005339anh1.jpg', N'1', NULL, NULL, N'0', N'46')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'229', NULL, N'2021-03-29', N'46_anh_1617011010140anh2.jpg', N'0', NULL, NULL, N'0', N'46')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'230', NULL, N'2021-03-29', N'46_anh_1617011015019anh3.jpg', N'0', NULL, NULL, N'0', N'46')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'231', NULL, N'2021-03-29', N'46_anh_1617011019845anh4.jpg', N'0', NULL, NULL, N'0', N'46')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'232', NULL, N'2021-03-29', N'46_anh_1617011025259anh5.jpg', N'0', NULL, NULL, N'0', N'46')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'233', NULL, N'2021-03-29', N'47_anh_1617011301657anh1.jpg', N'1', NULL, NULL, N'0', N'47')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'234', NULL, N'2021-03-29', N'47_anh_1617011306054anh2.jpg', N'0', NULL, NULL, N'0', N'47')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'235', NULL, N'2021-03-29', N'47_anh_1617011310293anh3.jpg', N'0', NULL, NULL, N'0', N'47')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'236', NULL, N'2021-03-29', N'47_anh_1617011315262anh4.jpg', N'0', NULL, NULL, N'0', N'47')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'237', NULL, N'2021-03-29', N'47_anh_1617011321800anh5.jpg', N'0', NULL, NULL, N'0', N'47')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'238', NULL, N'2021-03-29', N'48_anh_1617011574185anh1.jpg', N'1', NULL, NULL, N'0', N'48')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'239', NULL, N'2021-03-29', N'48_anh_1617011579519anh2.jpg', N'0', NULL, NULL, N'0', N'48')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'240', NULL, N'2021-03-29', N'48_anh_1617011584049anh3.jpg', N'0', NULL, NULL, N'0', N'48')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'241', NULL, N'2021-03-29', N'48_anh_1617011588308anh4.jpg', N'0', NULL, NULL, N'0', N'48')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'242', NULL, N'2021-03-29', N'48_anh_1617011592577anh5.jpg', N'0', NULL, NULL, N'0', N'48')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'243', NULL, N'2021-03-29', N'49_anh_1617011811574anh1.jpg', N'1', NULL, NULL, N'0', N'49')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'244', NULL, N'2021-03-29', N'49_anh_1617011816147anh2.jpg', N'0', NULL, NULL, N'0', N'49')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'245', NULL, N'2021-03-29', N'49_anh_1617011820419anh3.jpg', N'0', NULL, NULL, N'0', N'49')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'246', NULL, N'2021-03-29', N'49_anh_1617011826220anh4.jpg', N'0', NULL, NULL, N'0', N'49')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'247', NULL, N'2021-03-29', N'49_anh_1617011831123anh5.jpg', N'0', NULL, NULL, N'0', N'49')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'248', NULL, N'2021-03-29', N'50_anh_1617012239196anh1.jpg', N'1', NULL, NULL, N'0', N'50')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'249', NULL, N'2021-03-29', N'50_anh_1617012249053anh2.jpg', N'0', NULL, NULL, N'0', N'50')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'250', NULL, N'2021-03-29', N'50_anh_1617012253830anh3.jpg', N'0', NULL, NULL, N'0', N'50')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'251', NULL, N'2021-03-29', N'50_anh_1617012259069anh4.jpg', N'0', NULL, NULL, N'0', N'50')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'252', NULL, N'2021-03-29', N'50_anh_1617012263858anh5.jpg', N'0', NULL, NULL, N'0', N'50')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'253', NULL, N'2021-03-29', N'51_anh_1617012484413anh1.jpg', N'1', NULL, NULL, N'0', N'51')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'254', NULL, N'2021-03-29', N'51_anh_1617012488531anh2.jpg', N'0', NULL, NULL, N'0', N'51')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'255', NULL, N'2021-03-29', N'51_anh_1617012493368anh3.jpg', N'0', NULL, NULL, N'0', N'51')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'256', NULL, N'2021-03-29', N'51_anh_1617012498188anh4.jpg', N'0', NULL, NULL, N'0', N'51')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'257', NULL, N'2021-03-29', N'51_anh_1617012503122anh5.jpg', N'0', NULL, NULL, N'0', N'51')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'258', NULL, N'2021-03-29', N'52_anh_1617012922425anh1.jpg', N'1', NULL, NULL, N'0', N'52')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'259', NULL, N'2021-03-29', N'52_anh_1617012927619anh2.jpg', N'0', NULL, NULL, N'0', N'52')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'260', NULL, N'2021-03-29', N'52_anh_1617012932544anh3.jpg', N'0', NULL, NULL, N'0', N'52')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'261', NULL, N'2021-03-29', N'52_anh_1617012937414anh4.jpg', N'0', NULL, NULL, N'0', N'52')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'262', NULL, N'2021-03-29', N'52_anh_1617012942313anh5.jpg', N'0', NULL, NULL, N'0', N'52')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'263', NULL, N'2021-03-29', N'53_anh_1617013954530anh1.jpg', N'1', NULL, NULL, N'0', N'53')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'264', NULL, N'2021-03-29', N'53_anh_1617013959933anh2.jpg', N'0', NULL, NULL, N'0', N'53')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'265', NULL, N'2021-03-29', N'53_anh_1617013964681anh3.jpg', N'0', NULL, NULL, N'0', N'53')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'266', NULL, N'2021-03-29', N'53_anh_1617013969421anh4.jpg', N'0', NULL, NULL, N'0', N'53')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'267', NULL, N'2021-03-29', N'53_anh_1617013974026anh5.jpg', N'0', NULL, NULL, N'0', N'53')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'268', NULL, N'2021-03-29', N'54_anh_1617014194277anh1.jpg', N'1', NULL, NULL, N'0', N'54')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'269', NULL, N'2021-03-29', N'54_anh_1617014199170anh2.jpg', N'0', NULL, NULL, N'0', N'54')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'270', NULL, N'2021-03-29', N'54_anh_1617014203376anh3.jpg', N'0', NULL, NULL, N'0', N'54')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'271', NULL, N'2021-03-29', N'54_anh_1617014208095anh4.jpg', N'0', NULL, NULL, N'0', N'54')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'272', NULL, N'2021-03-29', N'54_anh_1617014213712anh5.jpg', N'0', NULL, NULL, N'0', N'54')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'273', NULL, N'2021-03-29', N'55_anh_1617014558922anh1.jpg', N'1', NULL, NULL, N'0', N'55')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'274', NULL, N'2021-03-29', N'55_anh_1617014563115anh2.jpg', N'0', NULL, NULL, N'0', N'55')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'275', NULL, N'2021-03-29', N'55_anh_1617014567608anh3.jpg', N'0', NULL, NULL, N'0', N'55')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'276', NULL, N'2021-03-29', N'55_anh_1617014571784anh4.jpg', N'0', NULL, NULL, N'0', N'55')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'277', NULL, N'2021-03-29', N'55_anh_1617014576660anh5.jpg', N'0', NULL, NULL, N'0', N'55')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'278', NULL, N'2021-03-29', N'56_anh_1617014785855anh1.jpg', N'1', NULL, NULL, N'0', N'56')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'279', NULL, N'2021-03-29', N'56_anh_1617014791343anh2.jpg', N'0', NULL, NULL, N'0', N'56')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'280', NULL, N'2021-03-29', N'56_anh_1617014796213anh3.jpg', N'0', NULL, NULL, N'0', N'56')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'281', NULL, N'2021-03-29', N'56_anh_1617014800702anh4.jpg', N'0', NULL, NULL, N'0', N'56')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'282', NULL, N'2021-03-29', N'56_anh_1617014804932anh5.jpg', N'0', NULL, NULL, N'0', N'56')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'283', NULL, N'2021-03-29', N'57_anh_1617025313154anh1.jpg', N'1', NULL, NULL, N'0', N'57')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'284', NULL, N'2021-03-29', N'57_anh_1617025319825anh2.jpg', N'0', NULL, NULL, N'0', N'57')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'285', NULL, N'2021-03-29', N'57_anh_1617025325011anh3.jpg', N'0', NULL, NULL, N'0', N'57')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'286', NULL, N'2021-03-29', N'57_anh_1617025330557anh4.jpg', N'0', NULL, NULL, N'0', N'57')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'287', NULL, N'2021-03-29', N'57_anh_1617025335864anh5.jpg', N'0', NULL, NULL, N'0', N'57')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'288', NULL, N'2021-03-29', N'58_anh_1617025623703anh1.jpg', N'1', NULL, NULL, N'0', N'58')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'289', NULL, N'2021-03-29', N'58_anh_1617025629813anh2.jpg', N'0', NULL, NULL, N'0', N'58')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'290', NULL, N'2021-03-29', N'58_anh_1617025634449anh3.jpg', N'0', NULL, NULL, N'0', N'58')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'291', NULL, N'2021-03-29', N'58_anh_1617025638862anh4.jpg', N'0', NULL, NULL, N'0', N'58')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'292', NULL, N'2021-03-29', N'58_anh_1617025643404anh5.jpg', N'0', NULL, NULL, N'0', N'58')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'293', NULL, N'2021-03-29', N'59_anh_1617025875167anh1.jpg', N'1', NULL, NULL, N'0', N'59')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'294', NULL, N'2021-03-29', N'59_anh_1617025879821anh2.jpg', N'0', NULL, NULL, N'0', N'59')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'295', NULL, N'2021-03-29', N'59_anh_1617025885883anh3.jpg', N'0', NULL, NULL, N'0', N'59')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'296', NULL, N'2021-03-29', N'59_anh_1617025890385anh4.jpg', N'0', NULL, NULL, N'0', N'59')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'297', NULL, N'2021-03-29', N'59_anh_1617025894819anh5.jpg', N'0', NULL, NULL, N'0', N'59')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'298', NULL, N'2021-03-29', N'60_anh_1617026122357anh1.jpg', N'1', NULL, NULL, N'0', N'60')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'299', NULL, N'2021-03-29', N'60_anh_1617026128653anh2.jpg', N'0', NULL, NULL, N'0', N'60')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'300', NULL, N'2021-03-29', N'60_anh_1617026135163anh3.jpg', N'0', NULL, NULL, N'0', N'60')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'301', NULL, N'2021-03-29', N'60_anh_1617026140804anh4.jpg', N'0', NULL, NULL, N'0', N'60')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'302', NULL, N'2021-03-29', N'60_anh_1617026145723anh5.jpg', N'0', NULL, NULL, N'0', N'60')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'303', NULL, N'2021-03-29', N'61_anh_1617026467953anh1.jpg', N'1', NULL, NULL, N'0', N'61')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'304', NULL, N'2021-03-29', N'61_anh_1617026473163anh2.jpg', N'0', NULL, NULL, N'0', N'61')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'305', NULL, N'2021-03-29', N'61_anh_1617026478133anh3.jpg', N'0', NULL, NULL, N'0', N'61')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'306', NULL, N'2021-03-29', N'61_anh_1617026483183anh4.jpg', N'0', NULL, NULL, N'0', N'61')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'307', NULL, N'2021-03-29', N'61_anh_1617026488485anh5.jpg', N'0', NULL, NULL, N'0', N'61')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'308', NULL, N'2021-03-29', N'62_anh_1617026884552anh1.jpg', N'1', NULL, NULL, N'0', N'62')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'309', NULL, N'2021-03-29', N'62_anh_1617026890322anh2.jpg', N'0', NULL, NULL, N'0', N'62')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'310', NULL, N'2021-03-29', N'62_anh_1617026895045anh3.jpg', N'0', NULL, NULL, N'0', N'62')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'311', NULL, N'2021-03-29', N'62_anh_1617026899632anh4.jpg', N'0', NULL, NULL, N'0', N'62')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'312', NULL, N'2021-03-29', N'62_anh_1617026903927anh5.jpg', N'0', NULL, NULL, N'0', N'62')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'313', NULL, N'2021-03-29', N'63_anh_1617027176511anh1.jpg', N'1', NULL, NULL, N'0', N'63')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'314', NULL, N'2021-03-29', N'63_anh_1617027182251anh2.jpg', N'0', NULL, NULL, N'0', N'63')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'315', NULL, N'2021-03-29', N'63_anh_1617027186471anh3.jpg', N'0', NULL, NULL, N'0', N'63')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'316', NULL, N'2021-03-29', N'63_anh_1617027190819anh4.jpg', N'0', NULL, NULL, N'0', N'63')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'317', NULL, N'2021-03-29', N'63_anh_1617027195941anh5.jpg', N'0', NULL, NULL, N'0', N'63')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'318', NULL, N'2021-03-29', N'64_anh_1617027426471anh1.jpg', N'1', NULL, NULL, N'0', N'64')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'319', NULL, N'2021-03-29', N'64_anh_1617027432351anh2.jpg', N'0', NULL, NULL, N'0', N'64')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'320', NULL, N'2021-03-29', N'64_anh_1617027437396anh3.jpg', N'0', NULL, NULL, N'0', N'64')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'321', NULL, N'2021-03-29', N'64_anh_1617027442611anh4.jpg', N'0', NULL, NULL, N'0', N'64')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'322', NULL, N'2021-03-29', N'64_anh_1617027448241anh5.jpg', N'0', NULL, NULL, N'0', N'64')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'323', NULL, N'2021-03-29', N'65_anh_1617027684690anh1.jpg', N'1', NULL, NULL, N'0', N'65')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'324', NULL, N'2021-03-29', N'65_anh_1617027689461anh2.jpg', N'0', NULL, NULL, N'0', N'65')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'325', NULL, N'2021-03-29', N'65_anh_1617027693900anh3.jpg', N'0', NULL, NULL, N'0', N'65')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'326', NULL, N'2021-03-29', N'65_anh_1617027699085anh4.jpg', N'0', NULL, NULL, N'0', N'65')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'327', NULL, N'2021-03-29', N'65_anh_1617027703661anh5.jpg', N'0', NULL, NULL, N'0', N'65')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'328', NULL, N'2021-03-29', N'66_anh_1617027908590anh1.jpg', N'1', NULL, NULL, N'0', N'66')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'329', NULL, N'2021-03-29', N'66_anh_1617027912900anh2.jpg', N'0', NULL, NULL, N'0', N'66')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'330', NULL, N'2021-03-29', N'66_anh_1617027917368anh3.jpg', N'0', NULL, NULL, N'0', N'66')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'331', NULL, N'2021-03-29', N'66_anh_1617027921620anh4.jpg', N'0', NULL, NULL, N'0', N'66')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'332', NULL, N'2021-03-29', N'66_anh_1617027925760anh5.jpg', N'0', NULL, NULL, N'0', N'66')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'333', NULL, N'2021-03-29', N'67_anh_1617028167069anh1.jpg', N'1', NULL, NULL, N'0', N'67')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'334', NULL, N'2021-03-29', N'67_anh_1617028173409anh2.jpg', N'0', NULL, NULL, N'0', N'67')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'335', NULL, N'2021-03-29', N'67_anh_1617028228540anh3.jpg', N'0', NULL, NULL, N'0', N'67')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'336', NULL, N'2021-03-29', N'67_anh_1617028233310anh4.jpg', N'0', NULL, NULL, N'0', N'67')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'337', NULL, N'2021-03-29', N'67_anh_1617028242710anh5.jpg', N'0', NULL, NULL, N'0', N'67')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'338', NULL, N'2021-03-29', N'68_anh_1617028499804anh1.jpg', N'1', NULL, NULL, N'0', N'68')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'339', NULL, N'2021-03-29', N'68_anh_1617028504679anh2.jpg', N'0', NULL, NULL, N'0', N'68')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'340', NULL, N'2021-03-29', N'68_anh_1617028510141anh3.jpg', N'0', NULL, NULL, N'0', N'68')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'341', NULL, N'2021-03-29', N'68_anh_1617028514669anh4.jpg', N'0', NULL, NULL, N'0', N'68')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'342', NULL, N'2021-03-29', N'68_anh_1617028520784anh5.jpg', N'0', NULL, NULL, N'0', N'68')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'343', NULL, N'2021-03-29', N'69_anh_1617028819068anh1.jpg', N'1', NULL, NULL, N'0', N'69')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'344', NULL, N'2021-03-29', N'69_anh_1617028829563anh2.jpg', N'0', NULL, NULL, N'0', N'69')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'345', NULL, N'2021-03-29', N'69_anh_1617028838558anh3.jpg', N'0', NULL, NULL, N'0', N'69')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'346', NULL, N'2021-03-29', N'69_anh_1617028843658anh4.jpg', N'0', NULL, NULL, N'0', N'69')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'347', NULL, N'2021-03-29', N'69_anh_1617028848378anh5.jpg', N'0', NULL, NULL, N'0', N'69')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'348', NULL, N'2021-03-29', N'70_anh_1617029140828anh1.jpg', N'1', NULL, NULL, N'0', N'70')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'349', NULL, N'2021-03-29', N'70_anh_1617029145748anh2.jpg', N'0', NULL, NULL, N'0', N'70')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'350', NULL, N'2021-03-29', N'70_anh_1617029150388anh3.jpg', N'0', NULL, NULL, N'0', N'70')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'351', NULL, N'2021-03-29', N'70_anh_1617029154888anh4.jpg', N'0', NULL, NULL, N'0', N'70')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'352', NULL, N'2021-03-29', N'70_anh_1617029160928anh5.jpg', N'0', NULL, NULL, N'0', N'70')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'353', NULL, N'2021-03-29', N'71_anh_1617030188566anh1.jpg', N'1', NULL, NULL, N'0', N'71')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'354', NULL, N'2021-03-29', N'71_anh_1617030193066anh2.jpg', N'0', NULL, NULL, N'0', N'71')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'355', NULL, N'2021-03-29', N'71_anh_1617030201956anh3.jpg', N'0', NULL, NULL, N'0', N'71')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'356', NULL, N'2021-03-29', N'71_anh_1617030206936anh4.jpg', N'0', NULL, NULL, N'0', N'71')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'357', NULL, N'2021-03-29', N'71_anh_1617030212346anh5.jpg', N'0', NULL, NULL, N'0', N'71')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'358', NULL, N'2021-03-29', N'72_anh_1617030499911anh1.jpg', N'1', NULL, NULL, N'0', N'72')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'359', NULL, N'2021-03-29', N'72_anh_1617030505895anh2.jpg', N'0', NULL, NULL, N'0', N'72')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'360', NULL, N'2021-03-29', N'72_anh_1617030510445anh3.jpg', N'0', NULL, NULL, N'0', N'72')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'361', NULL, N'2021-03-29', N'72_anh_1617030515345anh4.jpg', N'0', NULL, NULL, N'0', N'72')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'362', NULL, N'2021-03-29', N'72_anh_1617030519816anh5.jpg', N'0', NULL, NULL, N'0', N'72')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'363', NULL, N'2021-03-29', N'73_anh_1617030743885anh1.jpg', N'1', NULL, NULL, N'0', N'73')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'364', NULL, N'2021-03-29', N'73_anh_1617030749695anh2.jpg', N'0', NULL, NULL, N'0', N'73')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'365', NULL, N'2021-03-29', N'73_anh_1617030754400anh3.jpg', N'0', NULL, NULL, N'0', N'73')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'366', NULL, N'2021-03-29', N'73_anh_1617030759015anh4.jpg', N'0', NULL, NULL, N'0', N'73')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'367', NULL, N'2021-03-29', N'73_anh_1617030765345anh5.jpg', N'0', NULL, NULL, N'0', N'73')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'368', NULL, N'2021-03-29', N'74_anh_1617031118276anh1.jpg', N'1', NULL, NULL, N'0', N'74')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'369', NULL, N'2021-03-29', N'74_anh_1617031126414anh2.jpg', N'0', NULL, NULL, N'0', N'74')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'370', NULL, N'2021-03-29', N'74_anh_1617031135337anh3.jpg', N'0', NULL, NULL, N'0', N'74')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'371', NULL, N'2021-03-29', N'74_anh_1617031143569anh4.jpg', N'0', NULL, NULL, N'0', N'74')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'372', NULL, N'2021-03-29', N'74_anh_1617031150999anh5.jpg', N'0', NULL, NULL, N'0', N'74')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'373', NULL, N'2021-03-29', N'75_anh_1617031460159anh1.jpg', N'1', NULL, NULL, N'0', N'75')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'374', NULL, N'2021-03-29', N'75_anh_1617031467979anh2.jpg', N'0', NULL, NULL, N'0', N'75')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'375', NULL, N'2021-03-29', N'75_anh_1617031475532anh3.jpg', N'0', NULL, NULL, N'0', N'75')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'376', NULL, N'2021-03-29', N'75_anh_1617031483200anh4.jpg', N'0', NULL, NULL, N'0', N'75')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'377', NULL, N'2021-03-29', N'75_anh_1617031491998anh5.jpg', N'0', NULL, NULL, N'0', N'75')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'378', NULL, N'2021-03-29', N'76_anh_1617032034998anh1.jpg', N'1', NULL, NULL, N'0', N'76')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'379', NULL, N'2021-03-29', N'76_anh_1617032044968anh2.jpg', N'0', NULL, NULL, N'0', N'76')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'380', NULL, N'2021-03-29', N'76_anh_1617032052483anh3.jpg', N'0', NULL, NULL, N'0', N'76')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'381', NULL, N'2021-03-29', N'76_anh_1617032060106anh4.jpg', N'0', NULL, NULL, N'0', N'76')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'382', NULL, N'2021-03-29', N'76_anh_1617032067996anh5.jpg', N'0', NULL, NULL, N'0', N'76')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'383', NULL, N'2021-03-29', N'77_anh_1617032431741anh1.jpg', N'1', NULL, NULL, N'0', N'77')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'384', NULL, N'2021-03-29', N'77_anh_1617032438847anh2.jpg', N'0', NULL, NULL, N'0', N'77')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'385', NULL, N'2021-03-29', N'77_anh_1617032447118anh3.jpg', N'0', NULL, NULL, N'0', N'77')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'386', NULL, N'2021-03-29', N'77_anh_1617032454752anh4.jpg', N'0', NULL, NULL, N'0', N'77')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'387', NULL, N'2021-03-29', N'77_anh_1617032466642anh5.jpg', N'0', NULL, NULL, N'0', N'77')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'388', NULL, N'2021-03-29', N'78_anh_1617032712784anh1.jpg', N'1', NULL, NULL, N'0', N'78')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'389', NULL, N'2021-03-29', N'78_anh_1617032719964anh2.jpg', N'0', NULL, NULL, N'0', N'78')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'390', NULL, N'2021-03-29', N'78_anh_1617032727857anh3.jpg', N'0', NULL, NULL, N'0', N'78')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'391', NULL, N'2021-03-29', N'78_anh_1617032735571anh4.jpg', N'0', NULL, NULL, N'0', N'78')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'392', NULL, N'2021-03-29', N'78_anh_1617032743369anh5.jpg', N'0', NULL, NULL, N'0', N'78')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'393', NULL, N'2021-03-29', N'79_anh_1617033026109anh1.jpg', N'1', NULL, NULL, N'0', N'79')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'394', NULL, N'2021-03-29', N'79_anh_1617033030756anh2.jpg', N'0', NULL, NULL, N'0', N'79')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'395', NULL, N'2021-03-29', N'79_anh_1617033036120anh3.jpg', N'0', NULL, NULL, N'0', N'79')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'396', NULL, N'2021-03-29', N'79_anh_1617033041516anh4.jpg', N'0', NULL, NULL, N'0', N'79')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'397', NULL, N'2021-03-29', N'79_anh_1617033046566anh5.jpg', N'0', NULL, NULL, N'0', N'79')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'398', NULL, N'2021-03-29', N'80_anh_1617033414180anh1.jpg', N'1', NULL, NULL, N'0', N'80')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'399', NULL, N'2021-03-29', N'80_anh_1617033418844anh2.jpg', N'0', NULL, NULL, N'0', N'80')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'400', NULL, N'2021-03-29', N'80_anh_1617033423482anh3.jpg', N'0', NULL, NULL, N'0', N'80')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'401', NULL, N'2021-03-29', N'80_anh_1617033429549anh4.jpg', N'0', NULL, NULL, N'0', N'80')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'402', NULL, N'2021-03-29', N'80_anh_1617033435351anh5.jpg', N'0', NULL, NULL, N'0', N'80')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'403', NULL, N'2021-03-30', N'81_anh_1617076106441anh1.jpg', N'1', NULL, NULL, N'0', N'81')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'404', NULL, N'2021-03-30', N'81_anh_1617076115851anh2.jpg', N'0', NULL, NULL, N'0', N'81')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'405', NULL, N'2021-03-30', N'81_anh_1617076123457anh3.jpg', N'0', NULL, NULL, N'0', N'81')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'406', NULL, N'2021-03-30', N'81_anh_1617076132754anh4.jpg', N'0', NULL, NULL, N'0', N'81')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'407', NULL, N'2021-03-30', N'81_anh_1617076142209anh5.jpg', N'0', NULL, NULL, N'0', N'81')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'408', NULL, N'2021-03-30', N'82_anh_1617076437526anh1.jpg', N'1', NULL, NULL, N'0', N'82')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'409', NULL, N'2021-03-30', N'82_anh_1617076448045anh2.jpg', N'0', NULL, NULL, N'0', N'82')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'410', NULL, N'2021-03-30', N'82_anh_1617076462546anh3.jpg', N'0', NULL, NULL, N'0', N'82')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'411', NULL, N'2021-03-30', N'82_anh_1617076470773anh4.jpg', N'0', NULL, NULL, N'0', N'82')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'412', NULL, N'2021-03-30', N'82_anh_1617076480365anh5.jpg', N'0', NULL, NULL, N'0', N'82')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'414', NULL, N'2021-03-30', N'83_anh_1617076812681anh2.jpg', N'0', NULL, NULL, N'0', N'83')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'415', NULL, N'2021-03-30', N'83_anh_1617076821153anh3.jpg', N'0', NULL, NULL, N'0', N'83')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'416', NULL, N'2021-03-30', N'83_anh_1617076828999anh4.jpg', N'0', NULL, NULL, N'0', N'83')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'417', NULL, N'2021-03-30', N'83_anh_1617076837065anh5.jpg', N'0', NULL, NULL, N'0', N'83')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'418', NULL, N'2021-03-30', N'85_anh_1617077151286anh1.jpg', N'1', NULL, NULL, N'0', N'85')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'419', NULL, N'2021-03-30', N'85_anh_1617077158577anh2.jpg', N'0', NULL, NULL, N'0', N'85')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'420', NULL, N'2021-03-30', N'85_anh_1617077166105anh3.jpg', N'0', NULL, NULL, N'0', N'85')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'421', NULL, N'2021-03-30', N'85_anh_1617077173507anh4.jpg', N'0', NULL, NULL, N'0', N'85')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'422', NULL, N'2021-03-30', N'85_anh_1617077182426anh5.jpg', N'0', NULL, NULL, N'0', N'85')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'423', NULL, N'2021-03-30', N'86_anh_1617077469459anh1.jpg', N'1', NULL, NULL, N'0', N'86')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'424', NULL, N'2021-03-30', N'86_anh_1617077477411anh2.jpg', N'0', NULL, NULL, N'0', N'86')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'425', NULL, N'2021-03-30', N'86_anh_1617077485004anh3.jpg', N'0', NULL, NULL, N'0', N'86')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'426', NULL, N'2021-03-30', N'86_anh_1617077492272anh4.jpg', N'0', NULL, NULL, N'0', N'86')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'427', NULL, N'2021-03-30', N'86_anh_1617077500731anh5.jpg', N'0', NULL, NULL, N'0', N'86')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'428', NULL, N'2021-03-30', N'87_anh_1617077889608anh1.jpg', N'1', NULL, NULL, N'0', N'87')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'429', NULL, N'2021-03-30', N'87_anh_1617077896981anh2.jpg', N'0', NULL, NULL, N'0', N'87')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'430', NULL, N'2021-03-30', N'87_anh_1617077904363anh3.jpg', N'0', NULL, NULL, N'0', N'87')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'431', NULL, N'2021-03-30', N'87_anh_1617077911992anh4.jpg', N'0', NULL, NULL, N'0', N'87')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'432', NULL, N'2021-03-30', N'87_anh_1617077920649anh5.jpg', N'0', NULL, NULL, N'0', N'87')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'433', NULL, N'2021-03-30', N'88_anh_1617078186308anh1.jpg', N'1', NULL, NULL, N'0', N'88')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'434', NULL, N'2021-03-30', N'88_anh_1617078191919anh2.jpg', N'0', NULL, NULL, N'0', N'88')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'435', NULL, N'2021-03-30', N'88_anh_1617078197384anh3.jpg', N'0', NULL, NULL, N'0', N'88')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'436', NULL, N'2021-03-30', N'88_anh_1617078203664anh4.jpg', N'0', NULL, NULL, N'0', N'88')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'437', NULL, N'2021-03-30', N'88_anh_1617078208905anh5.jpg', N'0', NULL, NULL, N'0', N'88')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'438', NULL, N'2021-03-30', N'89_anh_1617078532426anh1.jpg', N'1', NULL, NULL, N'0', N'89')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'439', NULL, N'2021-03-30', N'89_anh_1617078537224anh2.jpg', N'0', NULL, NULL, N'0', N'89')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'440', NULL, N'2021-03-30', N'89_anh_1617078542305anh3.jpg', N'0', NULL, NULL, N'0', N'89')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'441', NULL, N'2021-03-30', N'89_anh_1617078548918anh4.jpg', N'0', NULL, NULL, N'0', N'89')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'442', NULL, N'2021-03-30', N'89_anh_1617078556742anh5.jpg', N'0', NULL, NULL, N'0', N'89')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'443', NULL, N'2021-03-30', N'90_anh_1617078796509anh1.jpg', N'1', NULL, NULL, N'0', N'90')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'444', NULL, N'2021-03-30', N'90_anh_1617078800989anh2.jpg', N'0', NULL, NULL, N'0', N'90')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'445', NULL, N'2021-03-30', N'90_anh_1617078805460anh3.jpg', N'0', NULL, NULL, N'0', N'90')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'446', NULL, N'2021-03-30', N'90_anh_1617078809934anh4.jpg', N'0', NULL, NULL, N'0', N'90')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'447', NULL, N'2021-03-30', N'90_anh_1617078814078anh5.jpg', N'0', NULL, NULL, N'0', N'90')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'448', NULL, N'2021-03-30', N'91_anh_1617079083512anh1.jpg', N'1', NULL, NULL, N'0', N'91')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'449', NULL, N'2021-03-30', N'91_anh_1617079088165anh2.jpg', N'0', NULL, NULL, N'0', N'91')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'450', NULL, N'2021-03-30', N'91_anh_1617079092934anh4.jpg', N'0', NULL, NULL, N'0', N'91')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'451', NULL, N'2021-03-30', N'91_anh_1617079121589anh5.jpg', N'0', NULL, NULL, N'0', N'91')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'452', NULL, N'2021-03-30', N'92_anh_1617079397445anh1.jpg', N'1', NULL, NULL, N'0', N'92')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'453', NULL, N'2021-03-30', N'92_anh_1617079403182anh2.jpg', N'0', NULL, NULL, N'0', N'92')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'454', NULL, N'2021-03-30', N'92_anh_1617079409749anh3.jpg', N'0', NULL, NULL, N'0', N'92')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'455', NULL, N'2021-03-30', N'92_anh_1617079415838anh4.jpg', N'0', NULL, NULL, N'0', N'92')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'456', NULL, N'2021-03-30', N'92_anh_1617079423165anh5.jpg', N'0', NULL, NULL, N'0', N'92')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'457', NULL, N'2021-03-30', N'93_anh_1617079723718anh1.jpg', N'1', NULL, NULL, N'0', N'93')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'458', NULL, N'2021-03-30', N'93_anh_1617079728613anh2.jpg', N'0', NULL, NULL, N'0', N'93')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'459', NULL, N'2021-03-30', N'93_anh_1617079733733anh3.jpg', N'0', NULL, NULL, N'0', N'93')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'460', NULL, N'2021-03-30', N'93_anh_1617079737837anh4.jpg', N'0', NULL, NULL, N'0', N'93')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'461', NULL, N'2021-03-30', N'93_anh_1617079742187anh5.jpg', N'0', NULL, NULL, N'0', N'93')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'462', NULL, N'2021-03-30', N'94_anh_1617079953936anh1.jpg', N'1', NULL, NULL, N'0', N'94')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'463', NULL, N'2021-03-30', N'94_anh_1617079958692anh2.jpg', N'0', NULL, NULL, N'0', N'94')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'464', NULL, N'2021-03-30', N'94_anh_1617079963636anh3.jpg', N'0', NULL, NULL, N'0', N'94')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'465', NULL, N'2021-03-30', N'94_anh_1617079968107anh4.jpg', N'0', NULL, NULL, N'0', N'94')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'466', NULL, N'2021-03-30', N'94_anh_1617079973693anh5.jpg', N'0', NULL, NULL, N'0', N'94')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'467', NULL, N'2021-03-30', N'95_anh_1617080193963anh1.jpg', N'1', NULL, NULL, N'0', N'95')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'468', NULL, N'2021-03-30', N'95_anh_1617080198579anh2.jpg', N'0', NULL, NULL, N'0', N'95')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'469', NULL, N'2021-03-30', N'95_anh_1617080202961anh3.jpg', N'0', NULL, NULL, N'0', N'95')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'470', NULL, N'2021-03-30', N'95_anh_1617080207491anh4.jpg', N'0', NULL, NULL, N'0', N'95')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'471', NULL, N'2021-03-30', N'95_anh_1617080212979anh5.jpg', N'0', NULL, NULL, N'0', N'95')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'472', NULL, N'2021-03-30', N'96_anh_1617080929129anh1.jpg', N'1', NULL, NULL, N'0', N'96')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'473', NULL, N'2021-03-30', N'96_anh_1617080943753anh2.jpg', N'0', NULL, NULL, N'0', N'96')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'474', NULL, N'2021-03-30', N'96_anh_1617080957743anh3.jpg', N'0', NULL, NULL, N'0', N'96')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'475', NULL, N'2021-03-30', N'96_anh_1617080966810anh4.jpg', N'0', NULL, NULL, N'0', N'96')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'476', NULL, N'2021-03-30', N'96_anh_1617080983658anh5.jpg', N'0', NULL, NULL, N'0', N'96')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'477', NULL, N'2021-03-30', N'97_anh_1617081214040anh1.jpg', N'1', NULL, NULL, N'0', N'97')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'478', NULL, N'2021-03-30', N'97_anh_1617081218970anh2.jpg', N'0', NULL, NULL, N'0', N'97')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'479', NULL, N'2021-03-30', N'97_anh_1617081224618anh3.jpg', N'0', NULL, NULL, N'0', N'97')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'480', NULL, N'2021-03-30', N'97_anh_1617081229216anh4.jpg', N'0', NULL, NULL, N'0', N'97')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'481', NULL, N'2021-03-30', N'97_anh_1617081233866anh5.jpg', N'0', NULL, NULL, N'0', N'97')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'482', NULL, N'2021-03-30', N'98_anh_1617081871479anh1.jpg', N'1', NULL, NULL, N'0', N'98')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'483', NULL, N'2021-03-30', N'98_anh_1617081876026anh2.jpg', N'0', NULL, NULL, N'0', N'98')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'484', NULL, N'2021-03-30', N'98_anh_1617081880705anh3.jpg', N'0', NULL, NULL, N'0', N'98')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'485', NULL, N'2021-03-30', N'98_anh_1617081885263anh4.jpg', N'0', NULL, NULL, N'0', N'98')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'486', NULL, N'2021-03-30', N'98_anh_1617081889735anh5.jpg', N'0', NULL, NULL, N'0', N'98')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'487', NULL, N'2021-03-30', N'99_anh_1617082178835anh1.jpg', N'1', NULL, NULL, N'0', N'99')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'488', NULL, N'2021-03-30', N'99_anh_1617082184208anh2.jpg', N'0', NULL, NULL, N'0', N'99')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'489', NULL, N'2021-03-30', N'99_anh_1617082189001anh3.jpg', N'0', NULL, NULL, N'0', N'99')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'490', NULL, N'2021-03-30', N'99_anh_1617082193806anh4.jpg', N'0', NULL, NULL, N'0', N'99')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'491', NULL, N'2021-03-30', N'99_anh_1617082198896anh5.jpg', N'0', NULL, NULL, N'0', N'99')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'492', NULL, N'2021-03-30', N'100_anh_1617082596999anh1.jpg', N'1', NULL, NULL, N'0', N'100')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'493', NULL, N'2021-03-30', N'100_anh_1617082601169anh2.jpg', N'0', NULL, NULL, N'0', N'100')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'494', NULL, N'2021-03-30', N'100_anh_1617082607687anh3.jpg', N'0', NULL, NULL, N'0', N'100')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'495', NULL, N'2021-03-30', N'100_anh_1617082612414anh4.jpg', N'0', NULL, NULL, N'0', N'100')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'496', NULL, N'2021-03-30', N'100_anh_1617082616902anh5.jpg', N'0', NULL, NULL, N'0', N'100')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'497', N'admin@gmail.com', N'2021-04-14', N'101_anh_1618406835099tissot.jpg', N'1', N'admin@gmail.com', N'2021-04-14', N'0', N'101')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'498', N'admin@gmail.com', N'2021-04-15', N'84_anh_1618473871485anh1.jpg', N'1', NULL, NULL, N'0', N'84')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'499', N'admin@gmail.com', N'2021-04-15', N'84_anh_1618473901149anh2.jpeg', N'0', NULL, NULL, N'0', N'84')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'500', N'admin@gmail.com', N'2021-04-15', N'84_anh_1618473912280anh3.jpeg', N'0', NULL, NULL, N'0', N'84')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'501', N'admin@gmail.com', N'2021-04-15', N'84_anh_1618473936847anh4.jpg', N'0', NULL, NULL, N'0', N'84')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'502', N'admin@gmail.com', N'2021-04-15', N'84_anh_1618473947082anh5.jpg', N'0', NULL, NULL, N'0', N'84')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'504', N'admin@gmail.com', N'2021-04-15', N'83_anh_1618474357733anh1.jpg', N'1', N'admin@gmail.com', N'2021-04-15', N'0', N'83')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'505', N'admin@gmail.com', N'2021-04-15', N'91_anh_1618474880774anh5.jpg', N'0', NULL, NULL, N'0', N'91')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'506', N'admin@gmail.com', N'2021-04-15', N'102_anh_1618477957378anh1.jpg', N'1', NULL, NULL, N'0', N'102')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'507', N'admin@gmail.com', N'2021-04-15', N'102_anh_1618477967267anh2.jpg', N'0', NULL, NULL, N'0', N'102')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'508', N'admin@gmail.com', N'2021-04-15', N'102_anh_1618477977848anh3.jpg', N'0', NULL, NULL, N'0', N'102')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'509', N'admin@gmail.com', N'2021-04-15', N'102_anh_1618477991324anh4.jpg', N'0', NULL, NULL, N'0', N'102')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'510', N'admin@gmail.com', N'2021-04-15', N'102_anh_1618478000889anh5.jpg', N'0', NULL, NULL, N'0', N'102')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'511', N'admin@gmail.com', N'2021-04-15', N'103_anh_1618478529332anh1.jpg', N'1', NULL, NULL, N'0', N'103')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'512', N'admin@gmail.com', N'2021-04-15', N'103_anh_1618478537629anh2.jpg', N'0', NULL, NULL, N'0', N'103')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'513', N'admin@gmail.com', N'2021-04-15', N'103_anh_1618478545863anh3.jpg', N'0', NULL, NULL, N'0', N'103')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'514', N'admin@gmail.com', N'2021-04-15', N'103_anh_1618478554350anh4.jpg', N'0', NULL, NULL, N'0', N'103')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'515', N'admin@gmail.com', N'2021-04-15', N'103_anh_1618478564633anh5.jpg', N'0', NULL, NULL, N'0', N'103')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'516', N'admin@gmail.com', N'2021-04-15', N'104_anh_1618479286644anh1.jpg', N'1', NULL, NULL, N'0', N'104')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'517', N'admin@gmail.com', N'2021-04-15', N'104_anh_1618479296187anh2.jpg', N'0', NULL, NULL, N'0', N'104')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'518', N'admin@gmail.com', N'2021-04-15', N'104_anh_1618479305855anh3.jpg', N'0', NULL, NULL, N'0', N'104')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'519', N'admin@gmail.com', N'2021-04-15', N'104_anh_1618479313958anh4.jpg', N'0', NULL, NULL, N'0', N'104')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'520', N'admin@gmail.com', N'2021-04-15', N'104_anh_1618479323828anh5.jpg', N'0', NULL, NULL, N'0', N'104')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'521', N'admin@gmail.com', N'2021-04-16', N'105_anh_1618557697485anh1.jpg', N'1', NULL, NULL, N'0', N'105')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'522', N'admin@gmail.com', N'2021-04-16', N'105_anh_1618557708077anh2.jpg', N'0', NULL, NULL, N'0', N'105')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'523', N'admin@gmail.com', N'2021-04-16', N'105_anh_1618557718732anh3.jpg', N'0', NULL, NULL, N'0', N'105')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'524', N'admin@gmail.com', N'2021-04-16', N'105_anh_1618557728907anh4.jpg', N'0', NULL, NULL, N'0', N'105')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'525', N'admin@gmail.com', N'2021-04-16', N'105_anh_1618557741324anh5.jpg', N'0', NULL, NULL, N'0', N'105')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'526', N'admin@gmail.com', N'2021-04-16', N'106_anh_1618559729344anh1.jpg', N'1', NULL, NULL, N'0', N'106')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'527', N'admin@gmail.com', N'2021-04-16', N'106_anh_1618559741640anh2.jpg', N'0', NULL, NULL, N'0', N'106')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'528', N'admin@gmail.com', N'2021-04-16', N'106_anh_1618559754960anh3.jpg', N'0', NULL, NULL, N'0', N'106')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'529', N'admin@gmail.com', N'2021-04-16', N'106_anh_1618559764668anh4.jpg', N'0', NULL, NULL, N'0', N'106')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'530', N'admin@gmail.com', N'2021-04-16', N'106_anh_1618559823324anh5.jpg', N'0', NULL, NULL, N'0', N'106')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'531', N'admin@gmail.com', N'2021-04-16', N'107_anh_1618563463793anh1.jpg', N'1', NULL, NULL, N'0', N'107')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'532', N'admin@gmail.com', N'2021-04-16', N'107_anh_1618563475021anh2.jpg', N'0', NULL, NULL, N'0', N'107')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'533', N'admin@gmail.com', N'2021-04-16', N'107_anh_1618563489526anh3.jpg', N'0', NULL, NULL, N'0', N'107')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'534', N'admin@gmail.com', N'2021-04-16', N'107_anh_1618563502216anh4.jpg', N'0', NULL, NULL, N'0', N'107')
GO

INSERT INTO [dbo].[product_image] ([id], [create_by], [created_date], [image], [proiority], [update_by], [updated_date], [isdelete], [product_id]) VALUES (N'535', N'admin@gmail.com', N'2021-04-16', N'107_anh_1618563515379anh5.jpg', N'0', NULL, NULL, N'0', N'107')
GO

SET IDENTITY_INSERT [dbo].[product_image] OFF
GO


-- ----------------------------
-- Table structure for product_property
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[product_property]') AND type IN ('U'))
	DROP TABLE [dbo].[product_property]
GO

CREATE TABLE [dbo].[product_property] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [create_by] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [created_date] date  NULL,
  [name] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_by] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [updated_date] date  NULL
)
GO

ALTER TABLE [dbo].[product_property] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of product_property
-- ----------------------------
SET IDENTITY_INSERT [dbo].[product_property] ON
GO

INSERT INTO [dbo].[product_property] ([id], [create_by], [created_date], [name], [update_by], [updated_date]) VALUES (N'1', N'admin@gmail.com', N'2021-03-04', N'Số Hiệu Sản Phẩm', N'admin@gmail.com', N'2021-03-04')
GO

INSERT INTO [dbo].[product_property] ([id], [create_by], [created_date], [name], [update_by], [updated_date]) VALUES (N'2', N'admin@gmail.com', N'2021-03-04', N'Xuất Xứ', N'admin@gmail.com', N'2021-03-04')
GO

INSERT INTO [dbo].[product_property] ([id], [create_by], [created_date], [name], [update_by], [updated_date]) VALUES (N'3', N'admin@gmail.com', N'2021-03-04', N'Kính', N'admin@gmail.com', N'2021-03-04')
GO

INSERT INTO [dbo].[product_property] ([id], [create_by], [created_date], [name], [update_by], [updated_date]) VALUES (N'4', N'admin@gmail.com', N'2021-03-04', N'Máy', N'admin@gmail.com', N'2021-03-04')
GO

INSERT INTO [dbo].[product_property] ([id], [create_by], [created_date], [name], [update_by], [updated_date]) VALUES (N'5', N'admin@gmail.com', N'2021-03-04', N'Bảo Hành', N'admin@gmail.com', N'2021-03-04')
GO

INSERT INTO [dbo].[product_property] ([id], [create_by], [created_date], [name], [update_by], [updated_date]) VALUES (N'6', N'admin@gmail.com', N'2021-03-04', N'Ðường Kính Mặt Số', N'admin@gmail.com', N'2021-03-04')
GO

INSERT INTO [dbo].[product_property] ([id], [create_by], [created_date], [name], [update_by], [updated_date]) VALUES (N'7', N'admin@gmail.com', N'2021-03-04', N'Bề Dày Mặt Số', N'admin@gmail.com', N'2021-03-04')
GO

INSERT INTO [dbo].[product_property] ([id], [create_by], [created_date], [name], [update_by], [updated_date]) VALUES (N'8', N'admin@gmail.com', N'2021-03-04', N'Niềng', N'admin@gmail.com', N'2021-03-04')
GO

INSERT INTO [dbo].[product_property] ([id], [create_by], [created_date], [name], [update_by], [updated_date]) VALUES (N'9', N'admin@gmail.com', N'2021-03-04', N'Dây Đeo', N'admin@gmail.com', N'2021-03-04')
GO

INSERT INTO [dbo].[product_property] ([id], [create_by], [created_date], [name], [update_by], [updated_date]) VALUES (N'10', N'admin@gmail.com', N'2021-03-04', N'Màu Mặt Số', N'admin@gmail.com', N'2021-03-04')
GO

INSERT INTO [dbo].[product_property] ([id], [create_by], [created_date], [name], [update_by], [updated_date]) VALUES (N'11', N'admin@gmail.com', N'2021-03-04', N'Chống Nước', N'admin@gmail.com', N'2021-03-04')
GO

INSERT INTO [dbo].[product_property] ([id], [create_by], [created_date], [name], [update_by], [updated_date]) VALUES (N'12', N'admin@gmail.com', N'2021-03-04', N'Chức Năng', N'admin@gmail.com', N'2021-03-04')
GO

INSERT INTO [dbo].[product_property] ([id], [create_by], [created_date], [name], [update_by], [updated_date]) VALUES (N'13', NULL, N'2021-03-29', N'Thương Hiệu', NULL, NULL)
GO

SET IDENTITY_INSERT [dbo].[product_property] OFF
GO


-- ----------------------------
-- Table structure for product_property_detail
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[product_property_detail]') AND type IN ('U'))
	DROP TABLE [dbo].[product_property_detail]
GO

CREATE TABLE [dbo].[product_property_detail] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [create_by] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [created_date] date  NULL,
  [description] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_by] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [updated_date] date  NULL,
  [product_id] int  NULL,
  [product_property_id] int  NULL
)
GO

ALTER TABLE [dbo].[product_property_detail] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of product_property_detail
-- ----------------------------
SET IDENTITY_INSERT [dbo].[product_property_detail] ON
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1', N'admin@gmail.com', N'2021-03-05', N'EFR-527L-1AVUDF', N'admin@gmail.com', N'2021-03-05', N'1', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'2', N'admin@gmail.com', N'2021-03-05', N'Nhật Bản', N'admin@gmail.com', N'2021-03-05', N'1', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'3', N'admin@gmail.com', N'2021-03-05', N'Mineral Crystal (Kính Cứng)', N'admin@gmail.com', N'2021-03-05', N'1', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'4', N'admin@gmail.com', N'2021-03-05', N'Quartz (Pin)', N'admin@gmail.com', N'2021-03-05', N'1', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'5', N'admin@gmail.com', N'2021-03-05', N'1 Năm', N'admin@gmail.com', N'2021-03-05', N'1', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'6', NULL, N'2021-03-05', N'41 mm', NULL, N'2021-04-07', N'1', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'7', N'admin@gmail.com', N'2021-03-05', N'11.6 mm', N'admin@gmail.com', N'2021-03-05', N'1', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'9', N'admin@gmail.com', N'2021-03-05', N'Dây Da Chính Hãng', N'admin@gmail.com', N'2021-03-05', N'1', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'10', N'admin@gmail.com', N'2021-03-05', N'Đen', N'admin@gmail.com', N'2021-03-05', N'1', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'11', N'admin@gmail.com', N'2021-03-05', N'10 ATP', N'admin@gmail.com', N'2021-03-05', N'1', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'12', N'admin@gmail.com', N'2021-03-05', N'Lịch Ngày – Chronograph', N'admin@gmail.com', N'2021-03-05', N'1', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'13', N'admin@gmail.com', N'2021-03-05', N'EFR-547D-2AVUDF', N'admin@gmail.com', N'2021-03-05', N'2', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'14', N'admin@gmail.com', N'2021-03-05', N'Nhật Bản', N'admin@gmail.com', N'2021-03-05', N'2', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'15', N'admin@gmail.com', N'2021-03-05', N'Mineral Crystal (Kính Cứng)', N'admin@gmail.com', N'2021-03-05', N'2', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'16', N'admin@gmail.com', N'2021-03-05', N'Quartz (Pin)', N'admin@gmail.com', N'2021-03-05', N'2', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'17', N'admin@gmail.com', N'2021-03-05', N'1 Năm', N'admin@gmail.com', N'2021-03-05', N'2', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'18', N'admin@gmail.com', N'2021-03-05', N'47.2mm', N'admin@gmail.com', N'2021-03-05', N'2', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'19', N'admin@gmail.com', N'2021-03-05', N'13.9 mm', N'admin@gmail.com', N'2021-03-05', N'2', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'22', N'admin@gmail.com', N'2021-03-05', N'Xanh', N'admin@gmail.com', N'2021-03-05', N'2', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'23', N'admin@gmail.com', N'2021-03-05', N'10 ATP', N'admin@gmail.com', N'2021-03-05', N'2', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'24', N'admin@gmail.com', N'2021-03-05', N'Lịch Ngày – Chronograph', N'admin@gmail.com', N'2021-03-05', N'2', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'25', NULL, N'2021-03-05', N'MTP-E130L-2A2VDF', NULL, N'2021-03-29', N'3', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'26', N'admin@gmail.com', N'2021-03-05', N'Nhật Bản', N'admin@gmail.com', N'2021-03-05', N'3', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'27', N'admin@gmail.com', N'2021-03-05', N'Mineral Crystal (Kính Cứng)', N'admin@gmail.com', N'2021-03-05', N'3', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'28', N'admin@gmail.com', N'2021-03-05', N'Quartz (Pin)', N'admin@gmail.com', N'2021-03-05', N'3', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'29', N'admin@gmail.com', N'2021-03-05', N'1 Năm', N'admin@gmail.com', N'2021-03-05', N'3', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'30', N'admin@gmail.com', N'2021-03-05', N'38 mm', N'admin@gmail.com', N'2021-03-05', N'3', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'31', N'admin@gmail.com', N'2021-03-05', N'9.2 mm', N'admin@gmail.com', N'2021-03-05', N'3', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'33', N'admin@gmail.com', N'2021-03-05', N'Dây Da Chính Hãng', N'admin@gmail.com', N'2021-03-05', N'3', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'34', N'admin@gmail.com', N'2021-03-05', N'Đen', N'admin@gmail.com', N'2021-03-05', N'3', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'35', N'admin@gmail.com', N'2021-03-05', N'5 ATP', N'admin@gmail.com', N'2021-03-05', N'3', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'36', N'admin@gmail.com', N'2021-03-05', N'Lịch Ngày', N'admin@gmail.com', N'2021-03-05', N'3', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'37', N'admin@gmail.com', N'2021-03-05', N'EFB-302JD-1ADR', N'admin@gmail.com', N'2021-03-05', N'4', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'38', N'admin@gmail.com', N'2021-03-05', N'Nhật Bản', N'admin@gmail.com', N'2021-03-05', N'4', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'39', N'admin@gmail.com', N'2021-03-05', N'Sapphire (Kính Chống Trầy)', N'admin@gmail.com', N'2021-03-05', N'4', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'40', N'admin@gmail.com', N'2021-03-05', N'Quartz (Pin)', N'admin@gmail.com', N'2021-03-05', N'4', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'41', N'admin@gmail.com', N'2021-03-05', N'1 Năm', N'admin@gmail.com', N'2021-03-05', N'4', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'42', N'admin@gmail.com', N'2021-03-05', N'43 mm', N'admin@gmail.com', N'2021-03-05', N'4', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'43', N'admin@gmail.com', N'2021-03-05', N'11.7 mm', N'admin@gmail.com', N'2021-03-05', N'4', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'46', N'admin@gmail.com', N'2021-03-05', N'Đen', N'admin@gmail.com', N'2021-03-05', N'4', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'47', N'admin@gmail.com', N'2021-03-05', N'10 ATM', N'admin@gmail.com', N'2021-03-05', N'4', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'48', N'admin@gmail.com', N'2021-03-05', N'Lịch Ngày – Giờ Báo Thức – Giờ Thế Giới', N'admin@gmail.com', N'2021-03-05', N'4', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'49', N'admin@gmail.com', N'2021-03-05', N'MTP-V006L-1B2UDF', N'admin@gmail.com', N'2021-03-05', N'5', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'50', N'admin@gmail.com', N'2021-03-05', N'Nhật Bản', N'admin@gmail.com', N'2021-03-05', N'5', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'51', N'admin@gmail.com', N'2021-03-05', N'Mineral Crystal (Kính Cứng)', N'admin@gmail.com', N'2021-03-05', N'5', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'52', N'admin@gmail.com', N'2021-03-05', N'Quartz (Pin)', N'admin@gmail.com', N'2021-03-05', N'5', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'53', N'admin@gmail.com', N'2021-03-05', N'1 Năm', N'admin@gmail.com', N'2021-03-05', N'5', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'54', N'admin@gmail.com', N'2021-03-05', N'38 mm', N'admin@gmail.com', N'2021-03-05', N'5', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'55', N'admin@gmail.com', N'2021-03-05', N'9.4 mm', N'admin@gmail.com', N'2021-03-05', N'5', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'57', N'admin@gmail.com', N'2021-03-05', N'Dây Da Chính Hãng', N'admin@gmail.com', N'2021-03-05', N'5', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'58', N'admin@gmail.com', N'2021-03-05', N'Đen', N'admin@gmail.com', N'2021-03-05', N'5', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'59', N'admin@gmail.com', N'2021-03-05', N'3 ATM', N'admin@gmail.com', N'2021-03-05', N'5', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'60', N'admin@gmail.com', N'2021-03-05', N'Lịch Ngày – Lịch Thứ', N'admin@gmail.com', N'2021-03-05', N'5', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'61', N'admin@gmail.com', N'2021-03-05', N'A168WG-9WDF', N'admin@gmail.com', N'2021-03-05', N'6', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'62', N'admin@gmail.com', N'2021-03-05', N'Nhật Bản', N'admin@gmail.com', N'2021-03-05', N'6', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'63', N'admin@gmail.com', N'2021-03-05', N'Resin Glass (Kính Nhựa)', N'admin@gmail.com', N'2021-03-05', N'6', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'64', N'admin@gmail.com', N'2021-03-05', N'Quartz (Pin)', N'admin@gmail.com', N'2021-03-05', N'6', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'65', N'admin@gmail.com', N'2021-03-05', N'1 Năm', N'admin@gmail.com', N'2021-03-05', N'6', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'66', N'admin@gmail.com', N'2021-03-05', N'38.6mm x 36.3mm', N'admin@gmail.com', N'2021-03-05', N'6', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'67', N'admin@gmail.com', N'2021-03-05', N'9.6 mm', N'admin@gmail.com', N'2021-03-05', N'6', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'70', N'admin@gmail.com', N'2021-03-05', N'Vàng', N'admin@gmail.com', N'2021-03-05', N'6', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'71', N'admin@gmail.com', N'2021-03-05', N'3 ATM', N'admin@gmail.com', N'2021-03-05', N'6', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'72', N'admin@gmail.com', N'2021-03-05', N'Lịch – Bộ Bấm Giờ – Vài Chức Năng Khác', N'admin@gmail.com', N'2021-03-05', N'6', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'73', N'admin@gmail.com', N'2021-03-05', N'MTP-1335D-2A2VDF', N'admin@gmail.com', N'2021-03-05', N'7', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'74', N'admin@gmail.com', N'2021-03-05', N'Nhật Bản', N'admin@gmail.com', N'2021-03-05', N'7', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'75', N'admin@gmail.com', N'2021-03-05', N'Mineral Crystal (Kính Cứng)', N'admin@gmail.com', N'2021-03-05', N'7', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'76', N'admin@gmail.com', N'2021-03-05', N'Quartz (Pin)', N'admin@gmail.com', N'2021-03-05', N'7', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'77', N'admin@gmail.com', N'2021-03-05', N'1 Năm', N'admin@gmail.com', N'2021-03-05', N'7', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'78', N'admin@gmail.com', N'2021-03-05', N'41.5 mm', N'admin@gmail.com', N'2021-03-05', N'7', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'79', N'admin@gmail.com', N'2021-03-05', N'12.4 mm', N'admin@gmail.com', N'2021-03-05', N'7', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'82', N'admin@gmail.com', N'2021-03-05', N'Xanh', N'admin@gmail.com', N'2021-03-05', N'7', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'83', N'admin@gmail.com', N'2021-03-05', N'5 ATM', N'admin@gmail.com', N'2021-03-05', N'7', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'84', N'admin@gmail.com', N'2021-03-05', N'Lịch Ngày – Lịch Thứ', N'admin@gmail.com', N'2021-03-05', N'7', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'85', N'admin@gmail.com', N'2021-03-05', N'MTP-1170A-2ARDF', N'admin@gmail.com', N'2021-03-05', N'8', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'86', N'admin@gmail.com', N'2021-03-05', N'Nhật Bản', N'admin@gmail.com', N'2021-03-05', N'8', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'87', N'admin@gmail.com', N'2021-03-05', N'Mineral Crystal (Kính Cứng)', N'admin@gmail.com', N'2021-03-05', N'8', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'88', N'admin@gmail.com', N'2021-03-05', N'Quartz (Pin)', N'admin@gmail.com', N'2021-03-05', N'8', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'89', N'admin@gmail.com', N'2021-03-05', N'1 Năm', N'admin@gmail.com', N'2021-03-05', N'8', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'90', NULL, N'2021-03-05', N'36 mm', NULL, N'2021-04-07', N'8', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'91', N'admin@gmail.com', N'2021-03-05', N'8 mm', N'admin@gmail.com', N'2021-03-05', N'8', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'94', N'admin@gmail.com', N'2021-03-05', N'Xanh', N'admin@gmail.com', N'2021-03-05', N'8', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'95', N'admin@gmail.com', N'2021-03-05', N'3 ATM', N'admin@gmail.com', N'2021-03-05', N'8', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'96', N'admin@gmail.com', N'2021-03-05', N'Lịch Ngày', N'admin@gmail.com', N'2021-03-05', N'8', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'97', N'admin@gmail.com', N'2021-03-05', N'MTP-1170G-7ARDF', N'admin@gmail.com', N'2021-03-05', N'9', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'98', N'admin@gmail.com', N'2021-03-05', N'Nhật Bản', N'admin@gmail.com', N'2021-03-05', N'9', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'99', N'admin@gmail.com', N'2021-03-05', N'Mineral Crystal (Kính Cứng)', N'admin@gmail.com', N'2021-03-05', N'9', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'100', N'admin@gmail.com', N'2021-03-05', N'Quartz (Pin)', N'admin@gmail.com', N'2021-03-05', N'9', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'101', N'admin@gmail.com', N'2021-03-05', N'1 Năm', N'admin@gmail.com', N'2021-03-05', N'9', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'102', NULL, N'2021-03-05', N'35 mm', NULL, N'2021-04-07', N'9', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'103', N'admin@gmail.com', N'2021-03-05', N'8 mm', N'admin@gmail.com', N'2021-03-05', N'9', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'106', N'admin@gmail.com', N'2021-03-05', N'Trắng', N'admin@gmail.com', N'2021-03-05', N'9', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'107', N'admin@gmail.com', N'2021-03-05', N'3 ATM', N'admin@gmail.com', N'2021-03-05', N'9', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'108', N'admin@gmail.com', N'2021-03-05', N'Lịch Ngày', N'admin@gmail.com', N'2021-03-05', N'9', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'109', N'admin@gmail.com', N'2021-03-05', N'MRW-200HD-1BVDF', N'admin@gmail.com', N'2021-03-05', N'10', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'110', N'admin@gmail.com', N'2021-03-05', N'Nhật Bản', N'admin@gmail.com', N'2021-03-05', N'10', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'111', N'admin@gmail.com', N'2021-03-05', N'Resin Glass (Kính Nhựa)', N'admin@gmail.com', N'2021-03-05', N'10', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'112', N'admin@gmail.com', N'2021-03-05', N'Quartz (Pin)', N'admin@gmail.com', N'2021-03-05', N'10', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'113', N'admin@gmail.com', N'2021-03-05', N'1 Năm', N'admin@gmail.com', N'2021-03-05', N'10', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'114', NULL, N'2021-03-05', N'44.6 mm', NULL, N'2021-04-07', N'10', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'115', N'admin@gmail.com', N'2021-03-05', N'11.6 mm', N'admin@gmail.com', N'2021-03-05', N'10', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'118', N'admin@gmail.com', N'2021-03-05', N'Đen', N'admin@gmail.com', N'2021-03-05', N'10', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'119', N'admin@gmail.com', N'2021-03-05', N'10 ATM', N'admin@gmail.com', N'2021-03-05', N'10', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'120', N'admin@gmail.com', N'2021-03-05', N'Lịch Ngày – Lịch Thứ', N'admin@gmail.com', N'2021-03-05', N'10', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'121', N'admin@gmail.com', N'2021-03-05', N'MRW-200HD-7BVDF', N'admin@gmail.com', N'2021-03-05', N'10', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'122', N'admin@gmail.com', N'2021-03-05', N'Nhật Bản', N'admin@gmail.com', N'2021-03-05', N'10', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'123', N'admin@gmail.com', N'2021-03-05', N'Resin Glass (Kính Nhựa)', N'admin@gmail.com', N'2021-03-05', N'10', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'124', N'admin@gmail.com', N'2021-03-05', N'Quartz (Pin)', N'admin@gmail.com', N'2021-03-05', N'10', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'125', N'admin@gmail.com', N'2021-03-05', N'1 Năm', N'admin@gmail.com', N'2021-03-05', N'10', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'130', N'admin@gmail.com', N'2021-03-05', N'Trắng', N'admin@gmail.com', N'2021-03-05', N'10', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'131', N'admin@gmail.com', N'2021-03-05', N'10 ATM', N'admin@gmail.com', N'2021-03-05', N'10', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'132', N'admin@gmail.com', N'2021-03-05', N'Lịch Ngày – Lịch Thứ', N'admin@gmail.com', N'2021-03-05', N'10', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'133', N'admin@gmail.com', N'2021-03-05', N'AW-90H-9EVDF', N'admin@gmail.com', N'2021-03-05', N'11', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'134', N'admin@gmail.com', N'2021-03-05', N'Nhật Bản', N'admin@gmail.com', N'2021-03-05', N'11', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'135', N'admin@gmail.com', N'2021-03-05', N'Resin Glass (Kính Nhựa)', N'admin@gmail.com', N'2021-03-05', N'11', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'136', N'admin@gmail.com', N'2021-03-05', N'Quartz (Pin)', N'admin@gmail.com', N'2021-03-05', N'11', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'137', N'admin@gmail.com', N'2021-03-05', N'1 Năm', N'admin@gmail.com', N'2021-03-05', N'11', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'138', N'admin@gmail.com', N'2021-03-05', N'38.6 mm', N'admin@gmail.com', N'2021-03-05', N'11', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'139', N'admin@gmail.com', N'2021-03-05', N'9.5 mm', N'admin@gmail.com', N'2021-03-05', N'11', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'142', N'admin@gmail.com', N'2021-03-05', N'Đen', N'admin@gmail.com', N'2021-03-05', N'11', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'143', N'admin@gmail.com', N'2021-03-05', N'5 ATM', N'admin@gmail.com', N'2021-03-05', N'11', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'144', N'admin@gmail.com', N'2021-03-05', N'Lịch Ngày – Lịch Thứ', N'admin@gmail.com', N'2021-03-05', N'11', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'145', N'admin@gmail.com', N'2021-03-05', N'LTP-V005D-4B2UDF', N'admin@gmail.com', N'2021-03-05', N'12', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'146', N'admin@gmail.com', N'2021-03-05', N'Nhật Bản', N'admin@gmail.com', N'2021-03-05', N'12', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'147', N'admin@gmail.com', N'2021-03-05', N'Mineral Crystal (Kính Cứng)', N'admin@gmail.com', N'2021-03-05', N'12', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'148', N'admin@gmail.com', N'2021-03-05', N'Quartz (Pin)', N'admin@gmail.com', N'2021-03-05', N'12', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'149', N'admin@gmail.com', N'2021-03-05', N'1 Năm', N'admin@gmail.com', N'2021-03-05', N'12', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'150', N'admin@gmail.com', N'2021-03-05', N'28.2 mm', N'admin@gmail.com', N'2021-03-05', N'12', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'151', N'admin@gmail.com', N'2021-03-05', N'7.5 mm', N'admin@gmail.com', N'2021-03-05', N'12', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'153', N'admin@gmail.com', N'2021-03-05', N'Dây Cao Su', N'admin@gmail.com', N'2021-03-05', N'12', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'154', N'admin@gmail.com', N'2021-03-05', N'Hồng', N'admin@gmail.com', N'2021-03-05', N'12', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'155', N'admin@gmail.com', N'2021-03-05', N'3 ATM', N'admin@gmail.com', N'2021-03-05', N'12', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'157', N'admin@gmail.com', N'2021-03-05', N'SHE-4055PGL-7BUDF', N'admin@gmail.com', N'2021-03-05', N'13', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'158', N'admin@gmail.com', N'2021-03-05', N'Nhật Bản', N'admin@gmail.com', N'2021-03-05', N'13', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'159', N'admin@gmail.com', N'2021-03-05', N'Mineral Crystal (Kính Cứng)', N'admin@gmail.com', N'2021-03-05', N'13', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'160', N'admin@gmail.com', N'2021-03-05', N'Quartz (Pin)', N'admin@gmail.com', N'2021-03-05', N'13', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'161', N'admin@gmail.com', N'2021-03-05', N'1 Năm', N'admin@gmail.com', N'2021-03-05', N'13', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'162', NULL, N'2021-03-05', N'30 mm', NULL, N'2021-04-07', N'13', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'163', N'admin@gmail.com', N'2021-03-05', N'7 mm', N'admin@gmail.com', N'2021-03-05', N'13', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'165', N'admin@gmail.com', N'2021-03-05', N'Dây Da Chính Hãng', N'admin@gmail.com', N'2021-03-05', N'13', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'166', N'admin@gmail.com', N'2021-03-05', N'Trắng', N'admin@gmail.com', N'2021-03-05', N'13', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'167', N'admin@gmail.com', N'2021-03-05', N'5 ATM', N'admin@gmail.com', N'2021-03-05', N'13', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'168', N'admin@gmail.com', N'2021-03-05', N'Lịch Ngày', N'admin@gmail.com', N'2021-03-05', N'13', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'169', N'admin@gmail.com', N'2021-03-05', N'SHE-4533D-7AUDF', N'admin@gmail.com', N'2021-03-05', N'14', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'170', N'admin@gmail.com', N'2021-03-05', N'Nhật Bản', N'admin@gmail.com', N'2021-03-05', N'14', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'171', N'admin@gmail.com', N'2021-03-05', N'Sapphire (Kính Chống Trầy)', N'admin@gmail.com', N'2021-03-05', N'14', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'172', N'admin@gmail.com', N'2021-03-05', N'Quartz (Pin)', N'admin@gmail.com', N'2021-03-05', N'14', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'173', N'admin@gmail.com', N'2021-03-05', N'1 Năm', N'admin@gmail.com', N'2021-03-05', N'14', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'174', NULL, N'2021-03-05', N'30 mm', NULL, N'2021-04-07', N'14', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'175', N'admin@gmail.com', N'2021-03-05', N'5.8 mm', N'admin@gmail.com', N'2021-03-05', N'14', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'177', N'admin@gmail.com', N'2021-03-05', N'Dây Da Chính Hãng', N'admin@gmail.com', N'2021-03-05', N'14', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'178', N'admin@gmail.com', N'2021-03-05', N'Trắng', N'admin@gmail.com', N'2021-03-05', N'14', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'179', N'admin@gmail.com', N'2021-03-05', N'3 ATM', N'admin@gmail.com', N'2021-03-05', N'14', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'180', N'admin@gmail.com', N'2021-03-05', N'Lịch Ngày', N'admin@gmail.com', N'2021-03-05', N'14', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'181', N'admin@gmail.com', N'2021-03-05', N'LTP-E157MR-9ADF', N'admin@gmail.com', N'2021-03-05', N'15', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'182', N'admin@gmail.com', N'2021-03-05', N'Nhật Bản', N'admin@gmail.com', N'2021-03-05', N'15', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'183', N'admin@gmail.com', N'2021-03-05', N'Mineral Crystal (Kính Cứng)', N'admin@gmail.com', N'2021-03-05', N'15', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'184', N'admin@gmail.com', N'2021-03-05', N'Quartz (Pin)', N'admin@gmail.com', N'2021-03-05', N'15', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'185', N'admin@gmail.com', N'2021-03-05', N'1 Năm', N'admin@gmail.com', N'2021-03-05', N'15', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'186', N'admin@gmail.com', N'2021-03-05', N'32.5 mm', N'admin@gmail.com', N'2021-03-05', N'15', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'187', N'admin@gmail.com', N'2021-03-05', N'8 mm', N'admin@gmail.com', N'2021-03-05', N'15', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'189', N'admin@gmail.com', N'2021-03-05', N'Dây Da Chính Hãng', N'admin@gmail.com', N'2021-03-05', N'15', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'190', N'admin@gmail.com', N'2021-03-05', N'Vàng', N'admin@gmail.com', N'2021-03-05', N'15', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'191', N'admin@gmail.com', N'2021-03-05', N'3 ATM', N'admin@gmail.com', N'2021-03-05', N'15', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'193', N'admin@gmail.com', N'2021-03-05', N'LTP-E157MR-9ADF', N'admin@gmail.com', N'2021-03-05', N'16', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'194', N'admin@gmail.com', N'2021-03-05', N'Nhật Bản', N'admin@gmail.com', N'2021-03-05', N'16', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'195', N'admin@gmail.com', N'2021-03-05', N'Mineral Crystal (Kính Cứng)', N'admin@gmail.com', N'2021-03-05', N'16', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'196', N'admin@gmail.com', N'2021-03-05', N'Quartz (Pin)', N'admin@gmail.com', N'2021-03-05', N'16', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'197', N'admin@gmail.com', N'2021-03-05', N'1 Năm', N'admin@gmail.com', N'2021-03-05', N'16', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'198', N'admin@gmail.com', N'2021-03-05', N'32mm', N'admin@gmail.com', N'2021-03-05', N'16', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'199', N'admin@gmail.com', N'2021-03-05', N'8 mm', N'admin@gmail.com', N'2021-03-05', N'16', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'201', N'admin@gmail.com', N'2021-03-05', N'Dây Da Chính Hãng', N'admin@gmail.com', N'2021-03-05', N'16', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'202', N'admin@gmail.com', N'2021-03-05', N'Vàng', N'admin@gmail.com', N'2021-03-05', N'16', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'203', N'admin@gmail.com', N'2021-03-05', N'3 ATM', N'admin@gmail.com', N'2021-03-05', N'16', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'205', NULL, N'2021-03-29', N'CASIO', NULL, NULL, N'17', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'206', NULL, N'2021-03-29', N'EFR-559SG-7AVUDF', NULL, NULL, N'17', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'207', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'17', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'208', NULL, N'2021-03-29', N'Mineral Crystal (Kính Cứng)', NULL, NULL, N'17', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'209', NULL, N'2021-03-29', N'Quartz (Pin)', NULL, NULL, N'17', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'210', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'17', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'211', NULL, N'2021-03-29', N'41 mm', NULL, NULL, N'17', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'212', NULL, N'2021-03-29', N'12.8 mm', NULL, NULL, N'17', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'213', NULL, N'2021-03-29', N'Trắng', NULL, NULL, N'17', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'214', NULL, N'2021-03-29', N'10 ATM', NULL, NULL, N'17', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'215', NULL, N'2021-03-29', N'Lịch Ngày – Chronograph', NULL, NULL, N'17', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'216', NULL, N'2021-03-29', N'CASIO', NULL, NULL, N'18', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'217', NULL, N'2021-03-29', N'LTP-E157MRB-1BDF', NULL, NULL, N'18', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'218', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'18', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'219', NULL, N'2021-03-29', N'Mineral Crystal (Kính Cứng)', NULL, NULL, N'18', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'220', NULL, N'2021-03-29', N'Quartz (Pin)', NULL, NULL, N'18', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'221', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'18', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'222', NULL, N'2021-03-29', N'32 mm', NULL, NULL, N'18', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'223', NULL, N'2021-03-29', N'8 mm', NULL, NULL, N'18', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'224', NULL, N'2021-03-29', N'Đen', NULL, NULL, N'18', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'225', NULL, N'2021-03-29', N'3 ATM', NULL, NULL, N'18', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'226', NULL, N'2021-03-29', N'CASIO', NULL, NULL, N'19', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'227', NULL, N'2021-03-29', N'LA690WEMB-1BDF', NULL, NULL, N'19', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'228', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'19', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'229', NULL, N'2021-03-29', N'Resin Glass (Kính Nhựa)', NULL, N'2021-04-07', N'19', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'230', NULL, N'2021-03-29', N'Quartz (Pin)', NULL, N'2021-04-07', N'19', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'231', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'19', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'232', NULL, N'2021-03-29', N'30.4 mm x 26.7 mm', NULL, NULL, N'19', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'233', NULL, N'2021-03-29', N'7.3 mm', NULL, N'2021-04-07', N'19', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'234', NULL, N'2021-03-29', N'Trắng', NULL, NULL, N'19', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'235', NULL, N'2021-03-29', N'3 ATM', NULL, NULL, N'19', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'236', NULL, N'2021-03-29', N'Lịch Ngày', NULL, NULL, N'19', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'237', NULL, N'2021-03-29', N'CASIO', NULL, NULL, N'20', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'238', NULL, N'2021-03-29', N'MTD-1079D-1A3VDF', NULL, NULL, N'20', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'239', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'20', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'240', NULL, N'2021-03-29', N'Mineral Crystal (Kính Cứng)', NULL, NULL, N'20', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'241', NULL, N'2021-03-29', N'Quartz (Pin)', NULL, NULL, N'20', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'242', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'20', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'243', NULL, N'2021-03-29', N'46.3 mm', NULL, NULL, N'20', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'244', NULL, N'2021-03-29', N'13.7 mm', NULL, NULL, N'20', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'245', NULL, N'2021-03-29', N'Đen', NULL, NULL, N'20', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'246', NULL, N'2021-03-29', N'10 ATM', NULL, NULL, N'20', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'247', NULL, N'2021-03-29', N'Lịch Ngày – Lịch Thứ', NULL, NULL, N'20', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'248', NULL, N'2021-03-29', N'SEIKO', NULL, NULL, N'21', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'249', NULL, N'2021-03-29', N'SRPC57K1', NULL, N'2021-04-07', N'21', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'250', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'21', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'251', NULL, N'2021-03-29', N'Hardlex Crystal (Kính Cứng)', NULL, NULL, N'21', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'252', NULL, N'2021-03-29', N'Automatic (Tự Động)', NULL, NULL, N'21', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'253', NULL, N'2021-03-29', N'1 Năm', NULL, N'2021-04-07', N'21', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'254', NULL, N'2021-03-29', N'45 mm', NULL, NULL, N'21', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'255', NULL, N'2021-03-29', N'11 mm', NULL, NULL, N'21', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'256', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'21', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'257', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'21', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'258', NULL, N'2021-03-29', N'Đen', NULL, NULL, N'21', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'259', NULL, N'2021-03-29', N'10 ATM', NULL, NULL, N'21', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'260', NULL, N'2021-03-29', N'Lịch Ngày – Lịch Thứ', NULL, NULL, N'21', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'261', NULL, N'2021-03-29', N'SEIKO', NULL, NULL, N'22', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'262', NULL, N'2021-03-29', N'SNE485P1', NULL, NULL, N'22', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'263', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'22', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'264', NULL, N'2021-03-29', N'Hardlex Crystal (Kính Cứng)', NULL, NULL, N'22', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'265', NULL, N'2021-03-29', N'Solar (Năng Lượng Ánh Sáng)', NULL, NULL, N'22', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'266', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'22', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'267', NULL, N'2021-03-29', N'43 mm', NULL, N'2021-03-29', N'22', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'268', NULL, N'2021-03-29', N'10.7 mm', NULL, NULL, N'22', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'269', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'22', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'270', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'22', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'271', NULL, N'2021-03-29', N'Đen/Trắng', NULL, NULL, N'22', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'272', NULL, N'2021-03-29', N'10 ATM', NULL, NULL, N'22', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'273', NULL, N'2021-03-29', N'Lịch Ngày', NULL, NULL, N'22', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'274', NULL, N'2021-03-29', N'SEIKO', NULL, NULL, N'23', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'275', NULL, N'2021-03-29', N'SSA812J1', NULL, NULL, N'23', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'276', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'23', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'277', NULL, N'2021-03-29', N'Sapphire (Kính Chống Trầy)', NULL, NULL, N'23', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'278', NULL, N'2021-03-29', N'Automatic (Tự Động)', NULL, NULL, N'23', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'279', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'23', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'280', NULL, N'2021-03-29', N'34 mm', NULL, NULL, N'23', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'281', NULL, N'2021-03-29', N'10 mm', NULL, NULL, N'23', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'282', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'23', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'283', NULL, N'2021-03-29', N'Dây Da Chính Hãng', NULL, NULL, N'23', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'284', NULL, N'2021-03-29', N'Trắng', NULL, NULL, N'23', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'285', NULL, N'2021-03-29', N'3 ATM', NULL, NULL, N'23', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'286', NULL, N'2021-03-29', N'SEIKO', NULL, NULL, N'24', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'287', NULL, N'2021-03-29', N'SNE485P1', NULL, NULL, N'24', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'288', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'24', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'289', NULL, N'2021-03-29', N'Hardlex Crystal (Kính Cứng)', NULL, NULL, N'24', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'290', NULL, N'2021-03-29', N'Solar (Năng Lượng Ánh Sáng)', NULL, NULL, N'24', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'291', NULL, N'2021-03-29', N'1 Năm', NULL, N'2021-03-29', N'24', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'292', NULL, N'2021-03-29', N'43 mm', NULL, NULL, N'24', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'293', NULL, N'2021-03-29', N'10.7 mm', NULL, NULL, N'24', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'294', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'24', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'295', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'24', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'296', NULL, N'2021-03-29', N'Đen/Trắng', NULL, NULL, N'24', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'297', NULL, N'2021-03-29', N'10 ATM', NULL, NULL, N'24', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'298', NULL, N'2021-03-29', N'Lịch Ngày', NULL, NULL, N'24', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'299', NULL, N'2021-03-29', N'SEIKO', NULL, NULL, N'25', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'300', NULL, N'2021-03-29', N'SRPD73K1', NULL, NULL, N'25', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'301', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'25', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'302', NULL, N'2021-03-29', N'Hardlex Crystal (Kính Cứng)', NULL, NULL, N'25', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'303', NULL, N'2021-03-29', N'Automatic (Tự Động)', NULL, NULL, N'25', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'304', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'25', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'305', NULL, N'2021-03-29', N'42.5 mm', NULL, NULL, N'25', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'306', NULL, N'2021-03-29', N'13.4 mm', NULL, NULL, N'25', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'307', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'25', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'308', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'25', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'309', NULL, N'2021-03-29', N'Đen', NULL, NULL, N'25', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'310', NULL, N'2021-03-29', N'10 ATM', NULL, NULL, N'25', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'311', NULL, N'2021-03-29', N'Lịch Ngày – Lịch Thứ', NULL, NULL, N'25', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'312', NULL, N'2021-03-29', N'SEIKO', NULL, NULL, N'26', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'313', NULL, N'2021-03-29', N'SRPE15J1', NULL, NULL, N'26', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'314', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'26', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'315', NULL, N'2021-03-29', N'Hardlex Crystal (Kính Cứng)', NULL, NULL, N'26', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'316', NULL, N'2021-03-29', N'Automatic (Tự Động)', NULL, NULL, N'26', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'317', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'26', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'318', NULL, N'2021-03-29', N'40.5 mm', NULL, NULL, N'26', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'319', NULL, N'2021-03-29', N'11.8 mm', NULL, NULL, N'26', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'320', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'26', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'321', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'26', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'322', NULL, N'2021-03-29', N'Xanh', NULL, N'2021-04-07', N'26', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'323', NULL, N'2021-03-29', N'5 ATM', NULL, NULL, N'26', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'324', NULL, N'2021-03-29', N'Lịch Ngày', NULL, NULL, N'26', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'325', NULL, N'2021-03-29', N'SEIKO', NULL, NULL, N'27', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'326', NULL, N'2021-03-29', N'SNP141P1', NULL, NULL, N'27', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'327', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'27', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'328', NULL, N'2021-03-29', N'Sapphire (Kính Chống Trầy)', NULL, N'2021-03-29', N'27', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'329', NULL, N'2021-03-29', N'Kinetic (Vừa Pin – Vừa Tự Động)', NULL, NULL, N'27', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'330', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'27', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'331', NULL, N'2021-03-29', N'42.9 mm', NULL, NULL, N'27', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'332', NULL, N'2021-03-29', N'12.3 mm', NULL, NULL, N'27', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'333', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'27', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'334', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'27', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'335', NULL, N'2021-03-29', N'Đen', NULL, NULL, N'27', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'336', NULL, N'2021-03-29', N'10 ATM', NULL, NULL, N'27', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'337', NULL, N'2021-03-29', N'Lịch Ngày – Lịch Tháng', NULL, NULL, N'27', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'338', NULL, N'2021-03-29', N'SEIKO', NULL, NULL, N'28', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'339', NULL, N'2021-03-29', N'SSB355P1', NULL, NULL, N'28', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'340', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'28', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'341', NULL, N'2021-03-29', N'Hardlex Crystal (Kính Cứng)', NULL, NULL, N'28', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'342', NULL, N'2021-03-29', N'Quartz (Pin)', NULL, NULL, N'28', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'343', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'28', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'344', NULL, N'2021-03-29', N'45.2 mm', NULL, NULL, N'28', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'345', NULL, N'2021-03-29', N'14.1 mm', NULL, NULL, N'28', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'346', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'28', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'347', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'28', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'348', NULL, N'2021-03-29', N'Đen', NULL, NULL, N'28', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'349', NULL, N'2021-03-29', N'10 ATM', NULL, NULL, N'28', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'350', NULL, N'2021-03-29', N'Lịch Ngày – Chronograph', NULL, NULL, N'28', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'351', NULL, N'2021-03-29', N'SEIKO', NULL, NULL, N'29', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'352', NULL, N'2021-03-29', N'SRPD71K1', NULL, NULL, N'29', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'353', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'29', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'354', NULL, N'2021-03-29', N'Hardlex Crystal (Kính Cứng)', NULL, NULL, N'29', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'355', NULL, N'2021-03-29', N'Automatic (Tự Động)', NULL, NULL, N'29', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'356', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'29', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'357', NULL, N'2021-03-29', N'42.5 mm', NULL, NULL, N'29', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'358', NULL, N'2021-03-29', N'13.4 mm', NULL, NULL, N'29', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'359', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'29', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'360', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'29', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'361', NULL, N'2021-03-29', N'Xanh', NULL, NULL, N'29', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'362', NULL, N'2021-03-29', N'10 ATM', NULL, NULL, N'29', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'363', NULL, N'2021-03-29', N'Lịch Ngày – Lịch Thứ', NULL, NULL, N'29', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'364', NULL, N'2021-03-29', N'SEIKO', NULL, NULL, N'30', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'365', NULL, N'2021-03-29', N'SRPD42J1', NULL, NULL, N'30', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'366', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'30', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'367', NULL, N'2021-03-29', N'Sapphire (Kính Chống Trầy)', NULL, NULL, N'30', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'368', NULL, N'2021-03-29', N'Automatic (Tự Động)', NULL, NULL, N'30', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'369', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'30', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'370', NULL, N'2021-03-29', N'41.7 mm', NULL, NULL, N'30', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'371', NULL, N'2021-03-29', N'11.7 mm', NULL, NULL, N'30', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'372', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'30', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'373', NULL, N'2021-03-29', N'Dây Da Chính Hãng', NULL, NULL, N'30', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'374', NULL, N'2021-03-29', N'Trắng', NULL, N'2021-03-29', N'30', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'375', NULL, N'2021-03-29', N'3 ATM', NULL, NULL, N'30', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'376', NULL, N'2021-03-29', N'Lịch Ngày', NULL, NULL, N'30', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'377', NULL, N'2021-03-29', N'SEIKO', NULL, NULL, N'31', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'378', NULL, N'2021-03-29', N'SRW791P1', NULL, NULL, N'31', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'379', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'31', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'380', NULL, N'2021-03-29', N'Sapphire (Kính Chống Trầy)', NULL, NULL, N'31', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'381', NULL, N'2021-03-29', N'Quartz (Pin)', NULL, NULL, N'31', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'382', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'31', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'383', NULL, N'2021-03-29', N'36 mm', NULL, NULL, N'31', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'384', NULL, N'2021-03-29', N'10 mm', NULL, NULL, N'31', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'385', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'31', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'386', NULL, N'2021-03-29', N'Dây Da Chính Hãng', NULL, NULL, N'31', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'387', NULL, N'2021-03-29', N'Xanh Nhạt', NULL, NULL, N'31', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'388', NULL, N'2021-03-29', N'10 ATM', NULL, N'2021-04-07', N'31', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'389', NULL, N'2021-03-29', N'Lịch Ngày – Chronograph', NULL, NULL, N'31', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'390', NULL, N'2021-03-29', N'SEIKO', NULL, NULL, N'32', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'391', NULL, N'2021-03-29', N'SUP369P1', NULL, N'2021-04-07', N'32', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'392', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'32', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'393', NULL, N'2021-03-29', N'Hardlex Crystal (Kính Cứng)', NULL, NULL, N'32', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'394', NULL, N'2021-03-29', N'Solar (Năng Lượng Ánh Sáng)', NULL, NULL, N'32', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'395', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'32', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'396', NULL, N'2021-03-29', N'26 mm', NULL, N'2021-04-07', N'32', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'397', NULL, N'2021-03-29', N'5.6 mm', NULL, N'2021-04-07', N'32', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'398', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'32', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'399', NULL, N'2021-03-29', N'Dây Da Chính Hãng', NULL, NULL, N'32', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'400', NULL, N'2021-03-29', N'Trắng', NULL, NULL, N'32', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'401', NULL, N'2021-03-29', N'3 ATM', NULL, NULL, N'32', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'402', NULL, N'2021-03-29', N'SEIKO', NULL, NULL, N'33', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'403', NULL, N'2021-03-29', N'SRZ520P1', NULL, NULL, N'33', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'404', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'33', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'405', NULL, N'2021-03-29', N'Hardlex Crystal (Kính Cứng)', NULL, NULL, N'33', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'406', NULL, N'2021-03-29', N'Quartz (Pin)', NULL, NULL, N'33', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'407', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'33', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'408', NULL, N'2021-03-29', N'29 mm', NULL, NULL, N'33', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'409', NULL, N'2021-03-29', N'7.3 mm', NULL, NULL, N'33', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'410', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'33', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'411', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'33', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'412', NULL, N'2021-03-29', N'Trắng', NULL, NULL, N'33', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'413', NULL, N'2021-03-29', N'5 ATM', NULL, NULL, N'33', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'414', NULL, N'2021-03-29', N'SEIKO', NULL, NULL, N'34', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'415', NULL, N'2021-03-29', N'SUR638P1', NULL, NULL, N'34', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'416', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'34', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'417', NULL, N'2021-03-29', N'Sapphire (Kính Chống Trầy)', NULL, NULL, N'34', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'418', NULL, N'2021-03-29', N'Quartz (Pin)', NULL, NULL, N'34', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'419', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'34', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'420', NULL, N'2021-03-29', N'29 mm', NULL, NULL, N'34', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'421', NULL, N'2021-03-29', N'8 mm', NULL, NULL, N'34', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'422', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'34', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'423', NULL, N'2021-03-29', N'Dây Da Chính Hãng', NULL, NULL, N'34', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'424', NULL, N'2021-03-29', N'Trắng', NULL, NULL, N'34', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'425', NULL, N'2021-03-29', N'5 ATM', NULL, NULL, N'34', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'426', NULL, N'2021-03-29', N'Lịch Ngày', NULL, NULL, N'34', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'427', NULL, N'2021-03-29', N'SEIKO', NULL, NULL, N'35', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'428', NULL, N'2021-03-29', N'SRZ519P1', NULL, NULL, N'35', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'429', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'35', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'430', NULL, N'2021-03-29', N'Hardlex Crystal (Kính Cứng)', NULL, NULL, N'35', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'431', NULL, N'2021-03-29', N'Quartz (Pin)', NULL, NULL, N'35', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'432', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'35', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'433', NULL, N'2021-03-29', N'29 mm', NULL, NULL, N'35', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'434', NULL, N'2021-03-29', N'7.3 mm', NULL, NULL, N'35', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'435', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'35', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'436', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'35', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'437', NULL, N'2021-03-29', N'Trắng', NULL, NULL, N'35', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'438', NULL, N'2021-03-29', N'5 ATM', NULL, NULL, N'35', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'439', NULL, N'2021-03-29', N'SEIKO', NULL, N'2021-04-07', N'36', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'440', NULL, N'2021-03-29', N'SUT387J1', NULL, NULL, N'36', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'441', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'36', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'442', NULL, N'2021-03-29', N'Sapphire (Kính Chống Trầy)', NULL, NULL, N'36', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'443', NULL, N'2021-03-29', N'Solar (Năng Lượng Ánh Sáng)', NULL, NULL, N'36', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'444', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'36', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'445', NULL, N'2021-03-29', N'33.9 mm', NULL, NULL, N'36', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'446', NULL, N'2021-03-29', N'11 mm', NULL, NULL, N'36', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'447', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'36', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'448', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'36', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'449', NULL, N'2021-03-29', N'Trắng', NULL, NULL, N'36', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'450', NULL, N'2021-03-29', N'10 ATM', NULL, NULL, N'36', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'451', NULL, N'2021-03-29', N'Lịch Ngày', NULL, NULL, N'36', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'452', NULL, N'2021-03-29', N'SEIKO', NULL, NULL, N'37', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'453', NULL, N'2021-03-29', N'SXDG76P1', NULL, NULL, N'37', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'454', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'37', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'455', NULL, N'2021-03-29', N'Mineral Crystal (Kính Cứng)', NULL, NULL, N'37', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'456', NULL, N'2021-03-29', N'Quartz (Pin)', NULL, NULL, N'37', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'457', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'37', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'458', NULL, N'2021-03-29', N'32 mm', NULL, NULL, N'37', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'459', NULL, N'2021-03-29', N'7.1 mm', NULL, NULL, N'37', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'460', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'37', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'461', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'37', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'462', NULL, N'2021-03-29', N'Trắng', NULL, NULL, N'37', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'463', NULL, N'2021-03-29', N'5 ATM', NULL, NULL, N'37', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'464', NULL, N'2021-03-29', N'Lịch ngày', NULL, NULL, N'37', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'465', NULL, N'2021-03-29', N'SEIKO', NULL, NULL, N'38', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'466', NULL, N'2021-03-29', N'SRW869P1', NULL, NULL, N'38', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'467', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'38', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'468', NULL, N'2021-03-29', N'Sapphire (Kính Chống Trầy)', NULL, NULL, N'38', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'469', NULL, N'2021-03-29', N'Quartz (Pin)', NULL, NULL, N'38', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'470', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'38', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'471', NULL, N'2021-03-29', N'36 mm', NULL, NULL, N'38', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'472', NULL, N'2021-03-29', N'10.7 mm', NULL, NULL, N'38', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'473', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'38', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'474', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'38', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'475', NULL, N'2021-03-29', N'Hồng', NULL, NULL, N'38', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'476', NULL, N'2021-03-29', N'10 ATM', NULL, NULL, N'38', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'477', NULL, N'2021-03-29', N'Lịch Ngày – Đồng hồ 24h – Chronograph', NULL, NULL, N'38', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'478', NULL, N'2021-03-29', N'SEIKO', NULL, NULL, N'39', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'479', NULL, N'2021-03-29', N'SRP857J1', NULL, NULL, N'39', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'480', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'39', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'481', NULL, N'2021-03-29', N'Sapphire (Kính Chống Trầy)', NULL, NULL, N'39', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'482', NULL, N'2021-03-29', N'Automatic (Tự Động)', NULL, NULL, N'39', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'483', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'39', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'484', NULL, N'2021-03-29', N'34.2 mm', NULL, NULL, N'39', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'485', NULL, N'2021-03-29', N'11.1 mm', NULL, NULL, N'39', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'486', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'39', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'487', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'39', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'488', NULL, N'2021-03-29', N'Trắng', NULL, NULL, N'39', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'489', NULL, N'2021-03-29', N'10 ATM', NULL, NULL, N'39', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'490', NULL, N'2021-03-29', N'Lịch Ngày', NULL, NULL, N'39', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'491', NULL, N'2021-03-29', N'SEIKO', NULL, NULL, N'40', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'492', NULL, N'2021-03-29', N'SRW856P1', NULL, NULL, N'40', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'493', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'40', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'494', NULL, N'2021-03-29', N'Sapphire (Kính Chống Trầy)', NULL, NULL, N'40', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'495', NULL, N'2021-03-29', N'Quartz (Pin)', NULL, NULL, N'40', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'496', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'40', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'497', NULL, N'2021-03-29', N'36 mm', NULL, NULL, N'40', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'498', NULL, N'2021-03-29', N'10.7 mm', NULL, NULL, N'40', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'499', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'40', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'500', NULL, N'2021-03-29', N'Vàng', NULL, NULL, N'40', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'501', NULL, N'2021-03-29', N'10 ATM', NULL, NULL, N'40', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'502', NULL, N'2021-03-29', N'Lịch Ngày – Đồng hồ 24h – Chronograph', NULL, NULL, N'40', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'503', NULL, N'2021-03-29', N'Citizen', NULL, NULL, N'41', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'504', NULL, N'2021-03-29', N'AR1135-10E', NULL, NULL, N'41', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'505', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'41', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'506', NULL, N'2021-03-29', N'Sapphire (Kính Chống Trầy)', NULL, NULL, N'41', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'508', NULL, N'2021-03-29', N'Eco-Drive (Năng Lượng Ánh Sáng)', NULL, NULL, N'41', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'509', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'41', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'510', NULL, N'2021-03-29', N'39 mm', NULL, NULL, N'41', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'511', NULL, N'2021-03-29', N'5 mm', NULL, NULL, N'41', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'512', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'41', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'513', NULL, N'2021-03-29', N'Dây Da Chính Hãng', NULL, NULL, N'41', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'514', NULL, N'2021-03-29', N'Đen', NULL, NULL, N'41', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'515', NULL, N'2021-03-29', N'3 ATM', NULL, NULL, N'41', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'516', NULL, N'2021-03-29', N'Citizen', NULL, NULL, N'42', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'517', NULL, N'2021-03-29', N'NH8353-00H', NULL, NULL, N'42', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'518', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'42', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'519', NULL, N'2021-03-29', N'Mineral Crystal (Kính Cứng)', NULL, NULL, N'42', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'520', NULL, N'2021-03-29', N'Automatic (Tự Động)', NULL, NULL, N'42', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'521', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'42', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'522', NULL, N'2021-03-29', N'40 mm', NULL, NULL, N'42', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'523', NULL, N'2021-03-29', N'12 mm', NULL, NULL, N'42', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'524', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'42', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'525', NULL, N'2021-03-29', N'Dây Da Chính Hãng', NULL, NULL, N'42', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'526', NULL, N'2021-03-29', N'Đen', NULL, NULL, N'42', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'527', NULL, N'2021-03-29', N'5 ATM', NULL, NULL, N'42', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'528', NULL, N'2021-03-29', N'Lịch Ngày – Lịch Thứ', NULL, NULL, N'42', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'529', NULL, N'2021-03-29', N'Citizen', NULL, NULL, N'43', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'530', NULL, N'2021-03-29', N'BI5006-81L', NULL, NULL, N'43', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'531', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'43', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'532', NULL, N'2021-03-29', N'Mineral Crystal (Kính Cứng)', NULL, NULL, N'43', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'533', NULL, N'2021-03-29', N'Quartz (Pin)', NULL, NULL, N'43', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'534', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'43', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'535', NULL, N'2021-03-29', N'39 mm', NULL, NULL, N'43', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'536', NULL, N'2021-03-29', N'8 mm', NULL, NULL, N'43', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'537', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'43', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'538', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'43', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'539', NULL, N'2021-03-29', N'Xanh', NULL, NULL, N'43', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'540', NULL, N'2021-03-29', N'5 ATM', NULL, NULL, N'43', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'541', NULL, N'2021-03-29', N'Lịch Ngày – Dạ quang', NULL, NULL, N'43', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'542', NULL, N'2021-03-29', N'Citizen', NULL, NULL, N'44', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'543', NULL, N'2021-03-29', N'NY0088-11E', NULL, NULL, N'44', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'544', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'44', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'545', NULL, N'2021-03-29', N'Mineral Crystal (Kính Cứng)', NULL, NULL, N'44', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'546', NULL, N'2021-03-29', N'Automatic (Tự Động)', NULL, NULL, N'44', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'547', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'44', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'548', NULL, N'2021-03-29', N'42 mm', NULL, NULL, N'44', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'549', NULL, N'2021-03-29', N'12.6 mm', NULL, NULL, N'44', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'550', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'44', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'551', NULL, N'2021-03-29', N'Dây Cao Su', NULL, NULL, N'44', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'552', NULL, N'2021-03-29', N'Đen', NULL, NULL, N'44', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'553', NULL, N'2021-03-29', N'20 ATM', NULL, NULL, N'44', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'554', NULL, N'2021-03-29', N'Lên dây cót – Dạ quang – Lịch Ngày – Lịch Thứ', NULL, NULL, N'44', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'555', NULL, N'2021-03-29', N'Citizen', NULL, NULL, N'45', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'556', NULL, N'2021-03-29', N'FC8008-88D', NULL, NULL, N'45', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'557', NULL, N'2021-03-29', N'Nhật Bản', NULL, N'2021-03-29', N'45', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'558', NULL, N'2021-03-29', N'Sapphire (Kính Chống Trầy', NULL, NULL, N'45', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'559', NULL, N'2021-03-29', N'Eco-Drive (Năng Lượng Ánh Sáng)', NULL, NULL, N'45', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'560', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'45', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'561', NULL, N'2021-03-29', N'35.8 mm', NULL, NULL, N'45', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'562', NULL, N'2021-03-29', N'9.3 mm', NULL, NULL, N'45', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'563', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'45', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'564', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'45', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'565', NULL, N'2021-03-29', N'Trắng', NULL, NULL, N'45', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'566', NULL, N'2021-03-29', N'5 ATM', NULL, NULL, N'45', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'567', NULL, N'2021-03-29', N'Lịch Ngày', NULL, NULL, N'45', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'568', NULL, N'2021-03-29', N'Citizen', NULL, NULL, N'46', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'569', NULL, N'2021-03-29', N'NH8396-82E', NULL, NULL, N'46', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'570', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'46', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'571', NULL, N'2021-03-29', N'Mineral Crystal (Kính Cứng)', NULL, NULL, N'46', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'572', NULL, N'2021-03-29', N'Automatic (Tự Động)', NULL, NULL, N'46', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'573', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'46', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'574', NULL, N'2021-03-29', N'40.2 mm', NULL, NULL, N'46', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'575', NULL, N'2021-03-29', N'13.1 mm', NULL, NULL, N'46', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'576', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'46', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'577', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'46', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'578', NULL, N'2021-03-29', N'Đen', NULL, NULL, N'46', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'579', NULL, N'2021-03-29', N'5 ATM', NULL, NULL, N'46', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'580', NULL, N'2021-03-29', N'Lịch Ngày – Lịch Thứ', NULL, NULL, N'46', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'581', NULL, N'2021-03-29', N'Citizen', NULL, NULL, N'47', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'582', NULL, N'2021-03-29', N'NH8363-14A', NULL, NULL, N'47', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'583', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'47', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'584', NULL, N'2021-03-29', N'Mineral Crystal (Kính Cứng)', NULL, NULL, N'47', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'585', NULL, N'2021-03-29', N'Automatic (Tự Động)', NULL, NULL, N'47', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'586', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'47', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'587', NULL, N'2021-03-29', N'41 mm', NULL, N'2021-04-07', N'47', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'588', NULL, N'2021-03-29', N'11.2 mm', NULL, NULL, N'47', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'589', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'47', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'590', NULL, N'2021-03-29', N'Dây Da Chính Hãng', NULL, NULL, N'47', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'591', NULL, N'2021-03-29', N'Trắng', NULL, NULL, N'47', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'592', NULL, N'2021-03-29', N'5 ATM', NULL, NULL, N'47', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'593', NULL, N'2021-03-29', N'Lịch Ngày – Lịch Thứ', NULL, NULL, N'47', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'594', NULL, N'2021-03-29', N'Citizen', NULL, NULL, N'48', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'595', NULL, N'2021-03-29', N'NH8360-80L', NULL, NULL, N'48', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'596', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'48', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'597', NULL, N'2021-03-29', N'Mineral Crystal (Kính Cứng)', NULL, NULL, N'48', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'598', NULL, N'2021-03-29', N'Automatic (Tự Động)', NULL, NULL, N'48', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'599', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'48', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'600', NULL, N'2021-03-29', N'41 mm', NULL, NULL, N'48', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'601', NULL, N'2021-03-29', N'11.4 mm', NULL, NULL, N'48', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'602', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'48', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'603', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'48', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'604', NULL, N'2021-03-29', N'Xanh', NULL, NULL, N'48', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'605', NULL, N'2021-03-29', N'5 ATM', NULL, NULL, N'48', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'606', NULL, N'2021-03-29', N'Lịch Ngày – Lịch Thứ', NULL, NULL, N'48', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'607', NULL, N'2021-03-29', N'Citizen', NULL, NULL, N'49', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'608', NULL, N'2021-03-29', N'EM0763-07A', NULL, NULL, N'49', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'609', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'49', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'610', NULL, N'2021-03-29', N'Mineral Crystal (Kính Cứng)', NULL, NULL, N'49', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'611', NULL, N'2021-03-29', N'Eco-Drive (Năng Lượng Ánh Sáng)', NULL, NULL, N'49', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'612', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'49', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'613', NULL, N'2021-03-29', N'36 mm', NULL, NULL, N'49', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'614', NULL, N'2021-03-29', N'8.9 mm', NULL, NULL, N'49', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'615', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'49', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'616', NULL, N'2021-03-29', N'Dây Da Chính Hãng', NULL, NULL, N'49', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'617', NULL, N'2021-03-29', N'Trắng', NULL, NULL, N'49', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'618', NULL, N'2021-03-29', N'5 ATM', NULL, NULL, N'49', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'619', NULL, N'2021-03-29', N'Citizen', NULL, NULL, N'50', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'620', NULL, N'2021-03-29', N'BI5000-10E', NULL, NULL, N'50', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'621', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'50', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'622', NULL, N'2021-03-29', N'Mineral Crystal (Kính Cứng)', NULL, NULL, N'50', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'623', NULL, N'2021-03-29', N'Quartz (Pin)', NULL, NULL, N'50', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'624', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'50', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'625', NULL, N'2021-03-29', N'39 mm', NULL, NULL, N'50', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'626', NULL, N'2021-03-29', N'8.8 mm', NULL, NULL, N'50', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'627', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'50', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'628', NULL, N'2021-03-29', N'Dây Da Chính Hãng', NULL, NULL, N'50', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'629', NULL, N'2021-03-29', N'Đen', NULL, N'2021-04-07', N'50', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'630', NULL, N'2021-03-29', N'5 ATM', NULL, NULL, N'50', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'631', NULL, N'2021-03-29', N'Lịch Ngày', NULL, NULL, N'50', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'632', NULL, N'2021-03-29', N'Citizen', NULL, NULL, N'51', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'633', NULL, N'2021-03-29', N'BM7375-18H', NULL, NULL, N'51', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'634', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'51', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'635', NULL, N'2021-03-29', N'Sapphire (Kính Chống Trầy)', NULL, NULL, N'51', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'636', NULL, N'2021-03-29', N'Eco-Drive (Năng Lượng Ánh Sáng)', NULL, NULL, N'51', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'637', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'51', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'638', NULL, N'2021-03-29', N'41.5 mm', NULL, NULL, N'51', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'639', NULL, N'2021-03-29', N'9.3 mm', NULL, NULL, N'51', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'640', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'51', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'641', NULL, N'2021-03-29', N'Dây Da Chính Hãng', NULL, NULL, N'51', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'642', NULL, N'2021-03-29', N'Xám', NULL, NULL, N'51', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'643', NULL, N'2021-03-29', N'10 ATM', NULL, NULL, N'51', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'644', NULL, N'2021-03-29', N'Lịch Ngày', NULL, NULL, N'51', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'645', NULL, N'2021-03-29', N'Citizen', NULL, NULL, N'52', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'646', NULL, N'2021-03-29', N'CA0610-52A', NULL, NULL, N'52', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'647', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'52', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'648', NULL, N'2021-03-29', N'Mineral Crystal (Kính Cứng)', NULL, NULL, N'52', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'649', NULL, N'2021-03-29', N'Eco-Drive (Năng Lượng Ánh Sáng)', NULL, NULL, N'52', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'650', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'52', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'651', NULL, N'2021-03-29', N'43 mm', NULL, NULL, N'52', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'652', NULL, N'2021-03-29', N'12 mm', NULL, NULL, N'52', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'653', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'52', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'654', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'52', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'655', NULL, N'2021-03-29', N'Trắng', NULL, NULL, N'52', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'656', NULL, N'2021-03-29', N'10 ATM', NULL, NULL, N'52', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'657', NULL, N'2021-03-29', N'Lịch Ngày – Chronograph', NULL, NULL, N'52', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'658', NULL, N'2021-03-29', N'Citizen', NULL, NULL, N'53', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'659', NULL, N'2021-03-29', N'NP1010-01A', NULL, NULL, N'53', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'660', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'53', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'661', NULL, N'2021-03-29', N'Sapphire (Kính Chống Trầy)', NULL, NULL, N'53', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'662', NULL, N'2021-03-29', N'Automatic (Tự Động)', NULL, NULL, N'53', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'663', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'53', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'664', NULL, N'2021-03-29', N'40 mm', NULL, NULL, N'53', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'665', NULL, N'2021-03-29', N'12 mm', NULL, NULL, N'53', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'666', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'53', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'667', NULL, N'2021-03-29', N'Dây Da Chính Hãng', NULL, NULL, N'53', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'668', NULL, N'2021-03-29', N'Trắng', NULL, NULL, N'53', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'669', NULL, N'2021-03-29', N'10 ATM', NULL, NULL, N'53', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'670', NULL, N'2021-03-29', N'Đồng Hồ 24 Giờ', NULL, NULL, N'53', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'671', NULL, N'2021-03-29', N'Citizen', NULL, NULL, N'54', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'672', NULL, N'2021-03-29', N'NP1010-51E', NULL, NULL, N'54', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'673', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'54', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'674', NULL, N'2021-03-29', N'Sapphire (Kính Chống Trầy)', NULL, NULL, N'54', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'675', NULL, N'2021-03-29', N'Automatic (Tự Động)', NULL, NULL, N'54', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'676', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'54', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'677', NULL, N'2021-03-29', N'40 mm', NULL, NULL, N'54', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'678', NULL, N'2021-03-29', N'12 mm', NULL, NULL, N'54', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'680', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'54', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'681', NULL, N'2021-03-29', N'Đen', NULL, NULL, N'54', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'682', NULL, N'2021-03-29', N'10 ATM', NULL, NULL, N'54', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'683', NULL, N'2021-03-29', N'Open Heart – Đồng Hồ 24 Giờ', NULL, NULL, N'54', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'684', NULL, N'2021-03-29', N'Citizen', NULL, NULL, N'55', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'685', NULL, N'2021-03-29', N'EZ7000-50A', NULL, NULL, N'55', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'686', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'55', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'687', NULL, N'2021-03-29', N'Mineral Crystal (Kính Cứng)', NULL, NULL, N'55', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'688', NULL, N'2021-03-29', N'Quartz (Pin)', NULL, NULL, N'55', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'689', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'55', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'690', NULL, N'2021-03-29', N'28 mm', NULL, NULL, N'55', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'691', NULL, N'2021-03-29', N'6.8 mm', NULL, NULL, N'55', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'692', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'55', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'693', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'55', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'694', NULL, N'2021-03-29', N'Xám', NULL, NULL, N'55', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'695', NULL, N'2021-03-29', N'3 ATM', NULL, NULL, N'55', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'696', NULL, N'2021-03-29', N'Citizen', NULL, NULL, N'56', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'697', NULL, N'2021-03-29', N'EQ9060-53A', NULL, NULL, N'56', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'698', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'56', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'699', NULL, N'2021-03-29', N'Mineral Crystal (Kính Cứng)', NULL, NULL, N'56', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'700', NULL, N'2021-03-29', N'Quartz (Pin)', NULL, NULL, N'56', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'701', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'56', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'702', NULL, N'2021-03-29', N'34 mm', NULL, NULL, N'56', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'703', NULL, N'2021-03-29', N'7 mm', NULL, NULL, N'56', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'704', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'56', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'705', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'56', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'706', NULL, N'2021-03-29', N'Trắng', NULL, NULL, N'56', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'707', NULL, N'2021-03-29', N'3 ATM', NULL, NULL, N'56', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'708', NULL, N'2021-03-29', N'Citizen', NULL, NULL, N'57', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'709', NULL, N'2021-03-29', N'EW3252-07A', NULL, NULL, N'57', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'710', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'57', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'711', NULL, N'2021-03-29', N'Sapphire (Kính Chống Trầy)', NULL, NULL, N'57', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'712', NULL, N'2021-03-29', N'Eco-Drive (Năng Lượng Ánh Sáng)', NULL, NULL, N'57', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'713', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'57', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'714', NULL, N'2021-03-29', N'27 mm', NULL, NULL, N'57', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'715', NULL, N'2021-03-29', N'8 mm', NULL, NULL, N'57', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'716', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, N'2021-03-29', N'57', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'717', NULL, N'2021-03-29', N'Dây Da Chính Hãng', NULL, NULL, N'57', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'718', NULL, N'2021-03-29', N'Trắng', NULL, NULL, N'57', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'719', NULL, N'2021-03-29', N'3 ATM', NULL, NULL, N'57', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'720', NULL, N'2021-03-29', N'Lịch Ngày – Lịch Thứ', NULL, NULL, N'57', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'721', NULL, N'2021-03-29', N'Citizen', NULL, NULL, N'58', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'722', NULL, N'2021-03-29', N'EU6092-08A', NULL, NULL, N'58', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'723', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'58', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'724', NULL, N'2021-03-29', N'Mineral Crystal (Kính Cứng)', NULL, NULL, N'58', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'725', NULL, N'2021-03-29', N'Quartz (Pin)', NULL, NULL, N'58', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'726', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'58', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'727', NULL, N'2021-03-29', N'28 mm', NULL, NULL, N'58', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'728', NULL, N'2021-03-29', N'7 mm', NULL, NULL, N'58', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'729', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'58', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'730', NULL, N'2021-03-29', N'Dây Da Chính Hãng', NULL, NULL, N'58', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'731', NULL, N'2021-03-29', N'Trắng', NULL, NULL, N'58', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'732', NULL, N'2021-03-29', N'3 ATM', NULL, NULL, N'58', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'733', NULL, N'2021-03-29', N'Lịch Ngày', NULL, NULL, N'58', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'734', NULL, N'2021-03-29', N'Citizen', NULL, NULL, N'59', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'735', NULL, N'2021-03-29', N'EU6012-58E', NULL, NULL, N'59', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'736', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'59', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'737', NULL, N'2021-03-29', N'Mineral Crystal (Kính Cứng)', NULL, NULL, N'59', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'738', NULL, N'2021-03-29', N'Quartz (Pin)', NULL, NULL, N'59', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'739', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'59', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'740', NULL, N'2021-03-29', N'27 mm', NULL, NULL, N'59', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'741', NULL, N'2021-03-29', N'6.7 mm', NULL, NULL, N'59', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'742', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'59', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'743', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'59', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'744', NULL, N'2021-03-29', N'Đen', NULL, NULL, N'59', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'745', NULL, N'2021-03-29', N'5 ATM', NULL, NULL, N'59', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'746', NULL, N'2021-03-29', N'Lịch Ngày', NULL, NULL, N'59', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'747', NULL, N'2021-03-29', N'Citizen', NULL, NULL, N'60', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'748', NULL, N'2021-03-29', N'EM0600-87A', NULL, NULL, N'60', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'749', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'60', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'750', NULL, N'2021-03-29', N'Sapphire (Kính Chống Trầy)', NULL, NULL, N'60', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'751', NULL, N'2021-03-29', N'Eco-Drive (Năng Lượng Ánh Sáng)', NULL, NULL, N'60', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'752', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'60', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'753', NULL, N'2021-03-29', N'31.1 mm', NULL, NULL, N'60', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'754', NULL, N'2021-03-29', N'8 mm', NULL, NULL, N'60', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'755', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'60', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'756', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'60', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'757', NULL, N'2021-03-29', N'Trắng', NULL, NULL, N'60', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'758', NULL, N'2021-03-29', N'5 ATM', NULL, NULL, N'60', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'759', NULL, N'2021-03-29', N'Orient', NULL, NULL, N'61', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'760', NULL, N'2021-03-29', N'FAC00003W0', NULL, NULL, N'61', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'761', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'61', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'762', NULL, N'2021-03-29', N'Mineral Crystal (Kính Cứng)', NULL, NULL, N'61', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'763', NULL, N'2021-03-29', N'Automatic (Tự Động)', NULL, NULL, N'61', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'764', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'61', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'765', NULL, N'2021-03-29', N'40 mm', NULL, N'2021-03-29', N'61', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'766', NULL, N'2021-03-29', N'12 mm', NULL, NULL, N'61', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'767', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'61', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'768', NULL, N'2021-03-29', N'Dây Da Chính Hãng', NULL, NULL, N'61', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'769', NULL, N'2021-03-29', N'Trắng', NULL, NULL, N'61', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'770', NULL, N'2021-03-29', N'3 ATM', NULL, N'2021-04-07', N'61', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'771', NULL, N'2021-03-29', N'Lịch Ngày', NULL, NULL, N'61', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'772', NULL, N'2021-03-29', N'ORIENT', NULL, NULL, N'62', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'773', NULL, N'2021-03-29', N'RA-AA0B01G19B', NULL, NULL, N'62', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'774', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'62', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'775', NULL, N'2021-03-29', N'Automatic (Tự Động)', NULL, NULL, N'62', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'776', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'62', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'777', NULL, N'2021-03-29', N'Mineral Crystal (Kính Cứng)', NULL, NULL, N'62', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'778', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'62', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'779', NULL, N'2021-03-29', N'41.7 mm', NULL, NULL, N'62', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'780', NULL, N'2021-03-29', N'12.6 mm', NULL, NULL, N'62', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'781', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'62', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'782', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'62', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'783', NULL, N'2021-03-29', N'Vàng', NULL, NULL, N'62', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'784', NULL, N'2021-03-29', N'5 ATM', NULL, NULL, N'62', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'785', NULL, N'2021-03-29', N'Lịch Ngày – Lịch Thứ', NULL, NULL, N'62', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'786', NULL, N'2021-03-29', N'Orient', NULL, NULL, N'63', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'787', NULL, N'2021-03-29', N'RA-AA0B02R19B', NULL, NULL, N'63', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'788', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'63', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'789', NULL, N'2021-03-29', N'Mineral Crystal (Kính Cứng)', NULL, NULL, N'63', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'790', NULL, N'2021-03-29', N'Automatic (Tự Động)', NULL, NULL, N'63', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'791', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'63', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'792', NULL, N'2021-03-29', N'41.7 mm', NULL, NULL, N'63', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'793', NULL, N'2021-03-29', N'12.6 mm', NULL, NULL, N'63', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'794', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'63', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'795', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'63', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'796', NULL, N'2021-03-29', N'Đỏ', NULL, NULL, N'63', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'797', NULL, N'2021-03-29', N'5 ATM', NULL, NULL, N'63', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'798', NULL, N'2021-03-29', N'Lịch Ngày – Lịch Thứ', NULL, NULL, N'63', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'799', NULL, N'2021-03-29', N'Orient', NULL, NULL, N'64', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'800', NULL, N'2021-03-29', N'FUNG8003D0', NULL, NULL, N'64', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'801', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'64', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'802', NULL, N'2021-03-29', N'Sapphire (Kính Chống Trầy)', NULL, NULL, N'64', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'803', NULL, N'2021-03-29', N'Quartz (Pin)', NULL, NULL, N'64', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'804', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'64', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'805', NULL, N'2021-03-29', N'40 mm', NULL, NULL, N'64', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'806', NULL, N'2021-03-29', N'7 mm', NULL, NULL, N'64', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'807', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'64', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'808', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'64', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'809', NULL, N'2021-03-29', N'Xanh', NULL, NULL, N'64', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'810', NULL, N'2021-03-29', N'5 ATM', NULL, NULL, N'64', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'811', NULL, N'2021-03-29', N'Lịch Ngày', NULL, NULL, N'64', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'812', NULL, N'2021-03-29', N'Orient', NULL, NULL, N'65', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'813', NULL, N'2021-03-29', N'RA-AS0102S10B', NULL, NULL, N'65', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'814', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'65', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'815', NULL, N'2021-03-29', N'Mineral Crystal (Kính Cứng)', NULL, NULL, N'65', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'816', NULL, N'2021-03-29', N'Automatic (Tự Động)', NULL, NULL, N'65', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'817', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'65', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'818', NULL, N'2021-03-29', N'41 mm', NULL, NULL, N'65', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'819', NULL, N'2021-03-29', N'13 mm', NULL, NULL, N'65', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'820', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'65', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'821', NULL, N'2021-03-29', N'Dây Da Chính Hãng', NULL, NULL, N'65', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'822', NULL, N'2021-03-29', N'Trắng', NULL, NULL, N'65', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'823', NULL, N'2021-03-29', N'3 ATM', NULL, NULL, N'65', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'824', NULL, N'2021-03-29', N'Orient', NULL, NULL, N'66', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'825', NULL, N'2021-03-29', N'FUNG2003B0', NULL, NULL, N'66', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'826', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'66', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'827', NULL, N'2021-03-29', N'Mineral Crystal (Kính Cứng)', NULL, NULL, N'66', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'828', NULL, N'2021-03-29', N'Quartz (Pin)', NULL, NULL, N'66', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'829', NULL, N'2021-03-29', N'2 Năm', NULL, NULL, N'66', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'830', NULL, N'2021-03-29', N'42 mm', NULL, NULL, N'66', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'831', NULL, N'2021-03-29', N'11 mm', NULL, NULL, N'66', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'832', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'66', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'833', NULL, N'2021-03-29', N'Dây Vải', NULL, NULL, N'66', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'834', NULL, N'2021-03-29', N'Đen', NULL, NULL, N'66', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'835', NULL, N'2021-03-29', N'5 ATM', NULL, NULL, N'66', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'836', NULL, N'2021-03-29', N'Lịch Ngày', NULL, NULL, N'66', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'837', NULL, N'2021-03-29', N'Orient', NULL, NULL, N'67', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'838', NULL, N'2021-03-29', N'RE-DK0001L00B', NULL, NULL, N'67', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'839', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'67', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'840', NULL, N'2021-03-29', N'Sapphire (Kính Chống Trầy)', NULL, NULL, N'67', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'841', NULL, N'2021-03-29', N'Automatic (Tự Động)', NULL, NULL, N'67', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'842', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'67', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'843', NULL, N'2021-03-29', N'41 mm', NULL, NULL, N'67', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'844', NULL, N'2021-03-29', N'12 mm', NULL, NULL, N'67', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'845', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'67', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'846', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'67', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'847', NULL, N'2021-03-29', N'Xanh', NULL, NULL, N'67', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'848', NULL, N'2021-03-29', N'10 ATM', NULL, NULL, N'67', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'849', NULL, N'2021-03-29', N'Orient', NULL, NULL, N'68', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'850', NULL, N'2021-03-29', N'RA-AA0001B19B', NULL, NULL, N'68', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'851', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'68', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'852', NULL, N'2021-03-29', N'Sapphire (Kính Chống Trầy)', NULL, NULL, N'68', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'853', NULL, N'2021-03-29', N'Automatic (Tự Động)', NULL, NULL, N'68', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'854', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'68', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'855', NULL, N'2021-03-29', N'42 mm', NULL, NULL, N'68', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'856', NULL, N'2021-03-29', N'13 mm', NULL, NULL, N'68', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'857', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'68', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'858', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'68', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'859', NULL, N'2021-03-29', N'Đen', NULL, NULL, N'68', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'860', NULL, N'2021-03-29', N'20 ATM', NULL, NULL, N'68', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'861', NULL, N'2021-03-29', N'Lịch Ngày – Lịch Thứ', NULL, NULL, N'68', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'862', NULL, N'2021-03-29', N'Orient', NULL, NULL, N'69', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'863', NULL, N'2021-03-29', N'RA-AB0E08L19B', NULL, NULL, N'69', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'864', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'69', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'865', NULL, N'2021-03-29', N'Mineral Crystal (Kính Cứng)', NULL, NULL, N'69', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'866', NULL, N'2021-03-29', N'Automatic (Tự Động)', NULL, NULL, N'69', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'867', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'69', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'868', NULL, N'2021-03-29', N'39.4 mm', NULL, NULL, N'69', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'869', NULL, N'2021-03-29', N'11 mm', NULL, NULL, N'69', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'870', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'69', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'871', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'69', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'872', NULL, N'2021-03-29', N'Xanh', NULL, NULL, N'69', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'873', NULL, N'2021-03-29', N'3 ATM', NULL, NULL, N'69', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'874', NULL, N'2021-03-29', N'Lịch Ngày – Lịch Thứ', NULL, NULL, N'69', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'875', NULL, N'2021-03-29', N'Orient', NULL, NULL, N'70', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'876', NULL, N'2021-03-29', N'RA-AR0005Y10B', NULL, NULL, N'70', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'877', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'70', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'878', NULL, N'2021-03-29', N'Sapphire (Kính Chống Trầy)', NULL, NULL, N'70', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'879', NULL, N'2021-03-29', N'Automatic (Tự Động)', NULL, NULL, N'70', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'880', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'70', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'881', NULL, N'2021-03-29', N'40.8 mm', NULL, NULL, N'70', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'882', NULL, N'2021-03-29', N'11 mm', NULL, NULL, N'70', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'883', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'70', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'884', NULL, N'2021-03-29', N'Dây Da Chính Hãng', NULL, NULL, N'70', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'885', NULL, N'2021-03-29', N'Nâu', NULL, NULL, N'70', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'886', NULL, N'2021-03-29', N'3 ATM', NULL, NULL, N'70', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'887', NULL, N'2021-03-29', N'Dạ Quang – Skeleton – Open Heart – Lên dây cót – Hacking Second', NULL, N'2021-04-07', N'70', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'888', NULL, N'2021-03-29', N'Orient', NULL, NULL, N'71', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'889', NULL, N'2021-03-29', N'SSZ3W001W0', NULL, NULL, N'71', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'890', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'71', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'891', NULL, N'2021-03-29', N'Mineral Crystal (Kính Cứng)', NULL, NULL, N'71', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'892', NULL, N'2021-03-29', N'Quartz (Pin)', NULL, N'2021-03-29', N'71', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'893', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'71', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'894', NULL, N'2021-03-29', N'30 mm', NULL, N'2021-04-07', N'71', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'895', NULL, N'2021-03-29', N'9 mm', NULL, NULL, N'71', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'896', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'71', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'897', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'71', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'898', NULL, N'2021-03-29', N'Trắng', NULL, NULL, N'71', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'899', NULL, N'2021-03-29', N'5 ATM', NULL, NULL, N'71', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'900', NULL, N'2021-03-29', N'Lịch Ngày', NULL, NULL, N'71', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'901', NULL, N'2021-03-29', N'Orient', NULL, NULL, N'72', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'902', NULL, N'2021-03-29', N'FQC0M002W0', NULL, N'2021-03-29', N'72', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'903', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'72', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'904', NULL, N'2021-03-29', N'Mineral Crystal (Kính Cứng)', NULL, NULL, N'72', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'905', NULL, N'2021-03-29', N'Quartz (Pin)', NULL, NULL, N'72', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'906', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'72', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'907', NULL, N'2021-03-29', N'30 mm', NULL, N'2021-04-07', N'72', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'908', NULL, N'2021-03-29', N'8 mm', NULL, N'2021-04-07', N'72', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'909', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'72', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'910', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'72', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'911', NULL, N'2021-03-29', N'Trắng', NULL, NULL, N'72', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'912', NULL, N'2021-03-29', N'5 ATM', NULL, NULL, N'72', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'913', NULL, N'2021-03-29', N'Orient ', NULL, NULL, N'73', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'914', NULL, N'2021-03-29', N'FUNG7003W0', NULL, NULL, N'73', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'915', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'73', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'916', NULL, N'2021-03-29', N'Sapphire (Kính Chống Trầy)', NULL, NULL, N'73', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'917', NULL, N'2021-03-29', N'Quartz (Pin)', NULL, NULL, N'73', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'918', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'73', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'919', NULL, N'2021-03-29', N'32 mm', NULL, NULL, N'73', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'920', NULL, N'2021-03-29', N'6 mm', NULL, NULL, N'73', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'921', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'73', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'922', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'73', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'923', NULL, N'2021-03-29', N'Trắng', NULL, NULL, N'73', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'924', NULL, N'2021-03-29', N'5 ATM', NULL, NULL, N'73', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'925', NULL, N'2021-03-29', N'Lịch Ngày', NULL, NULL, N'73', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'926', NULL, N'2021-03-29', N'Orient', NULL, NULL, N'74', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'927', NULL, N'2021-03-29', N'FUNG7002W0', NULL, NULL, N'74', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'928', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'74', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'929', NULL, N'2021-03-29', N'Sapphire (Kính Chống Trầy)', NULL, NULL, N'74', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'930', NULL, N'2021-03-29', N'Quartz (Pin)', NULL, NULL, N'74', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'931', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'74', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'932', NULL, N'2021-03-29', N'32 mm', NULL, NULL, N'74', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'933', NULL, N'2021-03-29', N'6 mm', NULL, NULL, N'74', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'934', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'74', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'935', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'74', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'936', NULL, N'2021-03-29', N'Trắng', NULL, NULL, N'74', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'937', NULL, N'2021-03-29', N'5 ATM', NULL, NULL, N'74', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'938', NULL, N'2021-03-29', N'Lịch Ngày', NULL, NULL, N'74', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'939', NULL, N'2021-03-29', N'Orient', NULL, NULL, N'75', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'940', NULL, N'2021-03-29', N'FQC10002W0', NULL, NULL, N'75', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'941', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'75', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'942', NULL, N'2021-03-29', N'Mineral Crystal (Kính Cứng)', NULL, NULL, N'75', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'943', NULL, N'2021-03-29', N'Quartz (Pin)', NULL, NULL, N'75', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'944', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'75', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'945', NULL, N'2021-03-29', N'30 mm', NULL, NULL, N'75', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'946', NULL, N'2021-03-29', N'8 mm', NULL, NULL, N'75', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'947', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'75', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'948', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'75', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'949', NULL, N'2021-03-29', N'Trắng Xà Cừ', NULL, NULL, N'75', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'950', NULL, N'2021-03-29', N'3 ATM', NULL, NULL, N'75', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'951', NULL, N'2021-03-29', N'Orient', NULL, NULL, N'76', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'952', NULL, N'2021-03-29', N'SSZ3W003B0', NULL, NULL, N'76', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'953', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'76', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'954', NULL, N'2021-03-29', N'Mineral Crystal (Kính Cứng)', NULL, NULL, N'76', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'955', NULL, N'2021-03-29', N'Quartz (Pin)', NULL, NULL, N'76', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'956', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'76', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'957', NULL, N'2021-03-29', N'27 mm', NULL, NULL, N'76', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'958', NULL, N'2021-03-29', N'8 mm', NULL, NULL, N'76', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'959', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'76', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'960', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'76', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'961', NULL, N'2021-03-29', N'Đen', NULL, NULL, N'76', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'962', NULL, N'2021-03-29', N'10 ATM', NULL, NULL, N'76', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'963', NULL, N'2021-03-29', N'Lịch Ngày', NULL, NULL, N'76', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'964', NULL, N'2021-03-29', N'Orient', NULL, NULL, N'77', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'965', NULL, N'2021-03-29', N'RF-QD0001S10B', NULL, NULL, N'77', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'966', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'77', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'967', NULL, N'2021-03-29', N'Mineral Crystal (Kính Cứng)', NULL, NULL, N'77', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'968', NULL, N'2021-03-29', N'Quartz (Pin)', NULL, NULL, N'77', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'969', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'77', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'970', NULL, N'2021-03-29', N'39 mm', NULL, NULL, N'77', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'971', NULL, N'2021-03-29', N'7 mm', NULL, NULL, N'77', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'972', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'77', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'973', NULL, N'2021-03-29', N'Dây Da Chính Hãng', NULL, NULL, N'77', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'974', NULL, N'2021-03-29', N'Trắng', NULL, NULL, N'77', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'975', NULL, N'2021-03-29', N'3 ATM', NULL, NULL, N'77', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'976', NULL, N'2021-03-29', N'Lịch Ngày', NULL, NULL, N'77', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'977', NULL, N'2021-03-29', N'Orient', NULL, NULL, N'78', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'978', NULL, N'2021-03-29', N'RA-AC0E04L10B', NULL, NULL, N'78', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'979', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'78', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'980', NULL, N'2021-03-29', N'Mineral Crystal (Kính Cứng)', NULL, NULL, N'78', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'981', NULL, N'2021-03-29', N'Automatic (Tự Động)', NULL, NULL, N'78', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'982', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'78', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'983', NULL, N'2021-03-29', N'40 mm', NULL, NULL, N'78', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'984', NULL, N'2021-03-29', N'12 mm', NULL, NULL, N'78', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'985', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'78', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'986', NULL, N'2021-03-29', N'Dây Da Chính Hãng', NULL, NULL, N'78', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'987', NULL, N'2021-03-29', N'Xanh', NULL, NULL, N'78', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'988', NULL, N'2021-03-29', N'10 ATM', NULL, NULL, N'78', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'989', NULL, N'2021-03-29', N'Lịch Ngày', NULL, NULL, N'78', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'990', NULL, N'2021-03-29', N'Orient', NULL, NULL, N'79', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'991', NULL, N'2021-03-29', N'FER2A005Y0', NULL, NULL, N'79', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'992', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'79', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'993', NULL, N'2021-03-29', N'Mineral Crystal (Kính Cứng)', NULL, NULL, N'79', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'994', NULL, N'2021-03-29', N'Automatic (Tự Động)', NULL, NULL, N'79', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'995', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'79', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'996', NULL, N'2021-03-29', N'42 mm', NULL, NULL, N'79', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'997', NULL, N'2021-03-29', N'11.65 mm', NULL, NULL, N'79', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'998', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'79', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'999', NULL, N'2021-03-29', N'Dây Da Chính Hãng', NULL, NULL, N'79', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1000', NULL, N'2021-03-29', N'Trắng', NULL, NULL, N'79', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1001', NULL, N'2021-03-29', N'10 ATM', NULL, NULL, N'79', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1002', NULL, N'2021-03-29', N'Lịch Ngày', NULL, NULL, N'79', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1003', NULL, N'2021-03-29', N'Orient', NULL, NULL, N'80', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1004', NULL, N'2021-03-29', N'FEV0V004SH', NULL, NULL, N'80', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1005', NULL, N'2021-03-29', N'Nhật Bản', NULL, NULL, N'80', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1006', NULL, N'2021-03-29', N'Mineral Crystal (Kính Cứng)', NULL, NULL, N'80', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1007', NULL, N'2021-03-29', N'Automatic (Tự Động)', NULL, NULL, N'80', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1008', NULL, N'2021-03-29', N'1 Năm', NULL, NULL, N'80', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1009', NULL, N'2021-03-29', N'41 mm', NULL, NULL, N'80', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1010', NULL, N'2021-03-29', N'12 mm', NULL, NULL, N'80', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1011', NULL, N'2021-03-29', N'Thép Không Gỉ', NULL, NULL, N'80', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1012', NULL, N'2021-03-29', N'Dây Da Chính Hãng', NULL, NULL, N'80', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1013', NULL, N'2021-03-29', N'Trắng', NULL, NULL, N'80', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1014', NULL, N'2021-03-29', N'5 ATM', NULL, NULL, N'80', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1015', NULL, N'2021-03-29', N'Lịch Ngày', NULL, NULL, N'80', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1016', NULL, N'2021-03-30', N'Calvin Klein', NULL, NULL, N'81', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1017', NULL, N'2021-03-30', N'K8S211C1', NULL, NULL, N'81', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1018', NULL, N'2021-03-30', N'Thụy Sỹ', NULL, NULL, N'81', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1019', NULL, N'2021-03-30', N'Mineral Crystal (Kính Cứng)', NULL, NULL, N'81', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1020', NULL, N'2021-03-30', N'Quartz (Pin)', NULL, NULL, N'81', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1021', NULL, N'2021-03-30', N'2 Năm', NULL, NULL, N'81', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1022', NULL, N'2021-03-30', N'40 mm', NULL, NULL, N'81', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1023', NULL, N'2021-03-30', N'8 mm', NULL, NULL, N'81', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1024', NULL, N'2021-03-30', N'Thép Không Gỉ', NULL, NULL, N'81', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1025', NULL, N'2021-03-30', N'Dây Da Chính Hãng', NULL, NULL, N'81', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1026', NULL, N'2021-03-30', N'Đen', NULL, NULL, N'81', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1027', NULL, N'2021-03-30', N'3 ATM', NULL, NULL, N'81', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1028', NULL, N'2021-03-30', N'Dạ quang', NULL, NULL, N'81', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1029', NULL, N'2021-03-30', N'Calvin Klein', NULL, NULL, N'82', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1030', NULL, N'2021-03-30', N'K3M21BZ6', NULL, NULL, N'82', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1031', NULL, N'2021-03-30', N'Thụy Sỹ', NULL, NULL, N'82', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1032', NULL, N'2021-03-30', N'Mineral Crystal (Kính Cứng)', NULL, NULL, N'82', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1033', NULL, N'2021-03-30', N'Quartz (Pin)', NULL, NULL, N'82', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1034', NULL, N'2021-03-30', N'2 Năm', NULL, NULL, N'82', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1035', NULL, N'2021-03-30', N'40 mm', NULL, NULL, N'82', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1036', NULL, N'2021-03-30', N'7 mm', NULL, NULL, N'82', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1037', NULL, N'2021-03-30', N'Thép Không Gỉ', NULL, NULL, N'82', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1038', NULL, N'2021-03-30', N'Thép Không Gỉ', NULL, NULL, N'82', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1039', NULL, N'2021-03-30', N'Trắng', NULL, NULL, N'82', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1040', NULL, N'2021-03-30', N'3 ATM', NULL, NULL, N'82', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1041', NULL, N'2021-03-30', N'Calvin Klein', NULL, NULL, N'83', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1042', NULL, N'2021-03-30', N'K3M22T26', NULL, NULL, N'83', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1043', NULL, N'2021-03-30', N'Thụy Sỹ', NULL, NULL, N'83', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1044', NULL, N'2021-03-30', N'Mineral Crystal (Kính Cứng)', NULL, NULL, N'83', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1045', NULL, N'2021-03-30', N'Quartz (Pin)', NULL, NULL, N'83', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1046', NULL, N'2021-03-30', N'2 Năm', NULL, NULL, N'83', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1047', NULL, N'2021-03-30', N'35 mm', NULL, NULL, N'83', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1048', NULL, N'2021-03-30', N'6 mm', NULL, NULL, N'83', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1049', NULL, N'2021-03-30', N'Thép Không Gỉ', NULL, NULL, N'83', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1050', NULL, N'2021-03-30', N'Thép Không Gỉ', NULL, NULL, N'83', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1051', NULL, N'2021-03-30', N'Trắng', NULL, NULL, N'83', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1052', NULL, N'2021-03-30', N'3 ATM', NULL, NULL, N'83', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1053', NULL, N'2021-03-30', N'Calvin Klein', NULL, NULL, N'84', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1054', NULL, N'2021-03-30', N'K9N115GH', NULL, NULL, N'84', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1055', NULL, N'2021-03-30', N'Thụy Sỹ', NULL, NULL, N'84', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1056', NULL, N'2021-03-30', N'Mineral Crystal (Kính Cứng)', NULL, NULL, N'84', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1057', NULL, N'2021-03-30', N'Quartz (Pin)', NULL, NULL, N'84', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1058', NULL, N'2021-03-30', N'2 Năm', NULL, NULL, N'84', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1059', NULL, N'2021-03-30', N'39 mm', NULL, NULL, N'84', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1060', NULL, N'2021-03-30', N'11 mm', NULL, NULL, N'84', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1061', NULL, N'2021-03-30', N'Thép Không Gỉ', NULL, NULL, N'84', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1062', NULL, N'2021-03-30', N'Dây Da Chính Hãng', NULL, NULL, N'84', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1063', NULL, N'2021-03-30', N'Vàng', NULL, NULL, N'84', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1064', NULL, N'2021-03-30', N'3 ATM', NULL, NULL, N'84', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1065', NULL, N'2021-03-30', N'Lịch Ngày', NULL, NULL, N'84', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1066', NULL, N'2021-03-30', N'Calvin Klein', NULL, NULL, N'86', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1067', NULL, N'2021-03-30', N'K8N2364W', NULL, NULL, N'86', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1068', NULL, N'2021-03-30', N'Thụy Sỹ', NULL, NULL, N'86', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1069', NULL, N'2021-03-30', N'Mineral Crystal (Kính Cứng)', NULL, NULL, N'86', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1070', NULL, N'2021-03-30', N'Quartz (Pin)', NULL, NULL, N'86', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1071', NULL, N'2021-03-30', N'2 Năm', NULL, NULL, N'86', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1072', NULL, N'2021-03-30', N'32 mm', NULL, NULL, N'86', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1073', NULL, N'2021-03-30', N'6 mm', NULL, NULL, N'86', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1074', NULL, N'2021-03-30', N'Thép Không Gỉ', NULL, NULL, N'86', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1075', NULL, N'2021-03-30', N'Thép Không Gỉ', NULL, NULL, N'86', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1076', NULL, N'2021-03-30', N'Trắng', NULL, NULL, N'86', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1077', NULL, N'2021-03-30', N'3 ATM', NULL, NULL, N'86', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1078', NULL, N'2021-03-30', N'Calvin Klein', NULL, NULL, N'87', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1079', NULL, N'2021-03-30', N'K5S3414Y', NULL, NULL, N'87', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1080', NULL, N'2021-03-30', N'Thụy Sỹ', NULL, NULL, N'87', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1081', NULL, N'2021-03-30', N'Sapphire (Kính Chống Trầy)', NULL, NULL, N'87', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1082', NULL, N'2021-03-30', N'Automatic (Tự Động)', NULL, NULL, N'87', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1083', NULL, N'2021-03-30', N'2 Năm', NULL, NULL, N'87', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1084', NULL, N'2021-03-30', N'42 mm', NULL, NULL, N'87', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1085', NULL, N'2021-03-30', N'9 mm', NULL, NULL, N'87', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1086', NULL, N'2021-03-30', N'Thép Không Gỉ', NULL, NULL, N'87', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1087', NULL, N'2021-03-30', N'Thép Không Gỉ', NULL, NULL, N'87', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1088', NULL, N'2021-03-30', N'Đen', NULL, NULL, N'87', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1089', NULL, N'2021-03-30', N'5 ATM', NULL, NULL, N'87', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1090', NULL, N'2021-03-30', N'Lịch Ngày', NULL, NULL, N'87', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1091', NULL, N'2021-03-30', N'Calvin Klein', NULL, NULL, N'88', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1092', NULL, N'2021-03-30', N'K3M22B26', NULL, NULL, N'88', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1093', NULL, N'2021-03-30', N'Thụy Sỹ', NULL, NULL, N'88', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1094', NULL, N'2021-03-30', N'Mineral Crystal (Kính Cứng)', NULL, NULL, N'88', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1095', NULL, N'2021-03-30', N'Quartz (Pin)', NULL, NULL, N'88', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1096', NULL, N'2021-03-30', N'2 Năm', NULL, NULL, N'88', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1097', NULL, N'2021-03-30', N'35 mm', NULL, NULL, N'88', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1098', NULL, N'2021-03-30', N'8 mm', NULL, NULL, N'88', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1099', NULL, N'2021-03-30', N'Thép Không Gỉ', NULL, NULL, N'88', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1100', NULL, N'2021-03-30', N'Thép Không Gỉ', NULL, NULL, N'88', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1101', NULL, N'2021-03-30', N'Trắng', NULL, NULL, N'88', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1102', NULL, N'2021-03-30', N'3 ATM', NULL, NULL, N'88', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1103', NULL, N'2021-03-30', N'Calvin Klein', NULL, NULL, N'89', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1104', NULL, N'2021-03-30', N'K3M23U26', NULL, NULL, N'89', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1105', NULL, N'2021-03-30', N'Thụy Sỹ', NULL, NULL, N'89', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1106', NULL, N'2021-03-30', N'Mineral Crystal (Kính Cứng)', NULL, NULL, N'89', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1107', NULL, N'2021-03-30', N'Quartz (Pin)', NULL, NULL, N'89', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1108', NULL, N'2021-03-30', N'2 Năm', NULL, NULL, N'89', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1109', NULL, N'2021-03-30', N'24 mm', NULL, NULL, N'89', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1110', NULL, N'2021-03-30', N'7 mm', NULL, NULL, N'89', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1111', NULL, N'2021-03-30', N'Thép Không Gỉ', NULL, NULL, N'89', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1112', NULL, N'2021-03-30', N'Thép Không Gỉ', NULL, NULL, N'89', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1113', NULL, N'2021-03-30', N'Trắng', NULL, NULL, N'89', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1114', NULL, N'2021-03-30', N'3 ATM', NULL, NULL, N'89', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1115', NULL, N'2021-03-30', N'Calvin Klein', NULL, NULL, N'90', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1116', NULL, N'2021-03-30', N'K3M23V26', NULL, NULL, N'90', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1117', NULL, N'2021-03-30', N'Thụy Sỹ', NULL, NULL, N'90', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1118', NULL, N'2021-03-30', N'Mineral Crystal (Kính Cứng)', NULL, NULL, N'90', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1119', NULL, N'2021-03-30', N'Quartz (Pin)', NULL, NULL, N'90', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1120', NULL, N'2021-03-30', N'2 Năm', NULL, NULL, N'90', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1121', NULL, N'2021-03-30', N'24 mm', NULL, NULL, N'90', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1122', NULL, N'2021-03-30', N'6 mm', NULL, NULL, N'90', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1123', NULL, N'2021-03-30', N'Thép Không Gỉ', NULL, NULL, N'90', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1124', NULL, N'2021-03-30', N'Thép Không Gỉ', NULL, NULL, N'90', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1125', NULL, N'2021-03-30', N'Trắng', NULL, NULL, N'90', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1126', NULL, N'2021-03-30', N'3 ATM', NULL, NULL, N'90', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1127', NULL, N'2021-03-30', N'Calvin Klein', NULL, NULL, N'91', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1128', NULL, N'2021-03-30', N'K8M21421', NULL, NULL, N'91', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1129', NULL, N'2021-03-30', N'Thụy Sỹ', NULL, NULL, N'91', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1130', NULL, N'2021-03-30', N'Mineral Crystal (Kính Cứng)', NULL, NULL, N'91', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1131', NULL, N'2021-03-30', N'Quartz (Pin)', NULL, NULL, N'91', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1132', NULL, N'2021-03-30', N'2 Năm', NULL, NULL, N'91', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1133', NULL, N'2021-03-30', N'40 mm', NULL, NULL, N'91', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1134', NULL, N'2021-03-30', N'7 mm', NULL, NULL, N'91', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1135', NULL, N'2021-03-30', N'Thép Không Gỉ', NULL, NULL, N'91', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1136', NULL, N'2021-03-30', N'Thép Không Gỉ', NULL, NULL, N'91', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1137', NULL, N'2021-03-30', N'Đen', NULL, NULL, N'91', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1138', NULL, N'2021-03-30', N'3 ATM', NULL, NULL, N'91', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1139', NULL, N'2021-03-30', N'Calvin Klein', NULL, NULL, N'92', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1140', NULL, N'2021-03-30', N'K7W2S116', NULL, NULL, N'92', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1141', NULL, N'2021-03-30', N'Thụy Sỹ', NULL, NULL, N'92', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1142', NULL, N'2021-03-30', N'Mineral Crystal (Kính Cứng)', NULL, NULL, N'92', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1143', NULL, N'2021-03-30', N'Quartz (Pin)', NULL, NULL, N'92', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1144', NULL, N'2021-03-30', N'2 Năm', NULL, NULL, N'92', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1145', NULL, N'2021-03-30', N'28 mm', NULL, NULL, N'92', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1146', NULL, N'2021-03-30', N'8 mm', NULL, NULL, N'92', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1147', NULL, N'2021-03-30', N'Thép Không Gỉ', NULL, NULL, N'92', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1148', NULL, N'2021-03-30', N'Thép Không Gỉ', NULL, NULL, N'92', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1149', NULL, N'2021-03-30', N'Trắng', NULL, NULL, N'92', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1150', NULL, N'2021-03-30', N'3 ATM', NULL, NULL, N'92', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1151', NULL, N'2021-03-30', N'Calvin Klein', NULL, NULL, N'93', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1152', NULL, N'2021-03-30', N'K9E211K6', NULL, NULL, N'93', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1153', NULL, N'2021-03-30', N'Thụy Sỹ', NULL, NULL, N'93', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1154', NULL, N'2021-03-30', N'Mineral Crystal (Kính Cứng)', NULL, NULL, N'93', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1155', NULL, N'2021-03-30', N'Quartz (Pin)', NULL, NULL, N'93', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1156', NULL, N'2021-03-30', N'2 Năm', NULL, NULL, N'93', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1157', NULL, N'2021-03-30', N'40 mm', NULL, NULL, N'93', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1158', NULL, N'2021-03-30', N'7 mm', NULL, NULL, N'93', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1159', NULL, N'2021-03-30', N'Thép Không Gỉ', NULL, NULL, N'93', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1160', NULL, N'2021-03-30', N'Thép Không Gỉ', NULL, NULL, N'93', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1161', NULL, N'2021-03-30', N'Trắng', NULL, NULL, N'93', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1162', NULL, N'2021-03-30', N'3 ATM', NULL, NULL, N'93', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1163', NULL, N'2021-03-30', N'Lịch Ngày', NULL, NULL, N'93', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1164', NULL, N'2021-03-30', N'Calvin Klein', NULL, NULL, N'94', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1165', NULL, N'2021-03-30', N'K2Y236K6', NULL, NULL, N'94', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1166', NULL, N'2021-03-30', N'Thụy Sỹ', NULL, NULL, N'94', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1167', NULL, N'2021-03-30', N'Mineral Crystal (Kính Cứng)', NULL, NULL, N'94', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1168', NULL, N'2021-03-30', N'Quartz (Pin)', NULL, NULL, N'94', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1169', NULL, N'2021-03-30', N'2 Năm', NULL, NULL, N'94', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1170', NULL, N'2021-03-30', N'32 mm', NULL, NULL, N'94', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1171', NULL, N'2021-03-30', N'9 mm', NULL, NULL, N'94', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1172', NULL, N'2021-03-30', N'Thép Không Gỉ', NULL, NULL, N'94', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1173', NULL, N'2021-03-30', N'Dây Da Chính Hãng', NULL, NULL, N'94', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1174', NULL, N'2021-03-30', N'Trắng', NULL, NULL, N'94', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1175', NULL, N'2021-03-30', N'3 ATM', NULL, NULL, N'94', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1176', NULL, N'2021-03-30', N'Calvin Klein', NULL, NULL, N'95', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1177', NULL, N'2021-03-30', N'K7N236K2', NULL, NULL, N'95', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1178', NULL, N'2021-03-30', N'Thụy Sỹ', NULL, NULL, N'95', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1179', NULL, N'2021-03-30', N'Mineral Crystal (Kính Cứng)', NULL, NULL, N'95', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1180', NULL, N'2021-03-30', N'Quartz (Pin)', NULL, NULL, N'95', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1181', NULL, N'2021-03-30', N'2 Năm', NULL, NULL, N'95', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1182', NULL, N'2021-03-30', N'38 mm', NULL, NULL, N'95', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1183', NULL, N'2021-03-30', N'7 mm', NULL, NULL, N'95', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1184', NULL, N'2021-03-30', N'Thép Không Gỉ', NULL, NULL, N'95', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1185', NULL, N'2021-03-30', N'Dây Da Chính Hãng', NULL, NULL, N'95', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1186', NULL, N'2021-03-30', N'Trắng', NULL, NULL, N'95', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1187', NULL, N'2021-03-30', N'3 ATM', NULL, NULL, N'95', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1188', NULL, N'2021-03-30', N'Calvin Klein', NULL, NULL, N'96', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1189', NULL, N'2021-03-30', N'K8M211CN', NULL, NULL, N'96', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1190', NULL, N'2021-03-30', N'Thụy Sỹ', NULL, NULL, N'96', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1191', NULL, N'2021-03-30', N'Mineral Crystal (Kính Cứng)', NULL, NULL, N'96', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1192', NULL, N'2021-03-30', N'Quartz (Pin)', NULL, NULL, N'96', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1193', NULL, N'2021-03-30', N'2 Năm', NULL, NULL, N'96', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1194', NULL, N'2021-03-30', N'40 mm', NULL, NULL, N'96', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1195', NULL, N'2021-03-30', N'7 mm', NULL, NULL, N'96', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1196', NULL, N'2021-03-30', N'Thép Không Gỉ', NULL, NULL, N'96', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1197', NULL, N'2021-03-30', N'Dây Da Chính Hãng', NULL, NULL, N'96', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1198', NULL, N'2021-03-30', N'Xanh', NULL, NULL, N'96', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1199', NULL, N'2021-03-30', N'3 ATM', NULL, NULL, N'96', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1200', NULL, N'2021-03-30', N'Calvin Klein', NULL, NULL, N'97', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1201', NULL, N'2021-03-30', N'K7A23141', NULL, NULL, N'97', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1202', NULL, N'2021-03-30', N'Thụy Sỹ', NULL, NULL, N'97', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1203', NULL, N'2021-03-30', N'Mineral Crystal (Kính Cứng)', NULL, NULL, N'97', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1204', NULL, N'2021-03-30', N'Quartz (Pin)', NULL, NULL, N'97', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1205', NULL, N'2021-03-30', N'2 Năm', NULL, NULL, N'97', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1206', NULL, N'2021-03-30', N'38 mm', NULL, NULL, N'97', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1207', NULL, N'2021-03-30', N'8 mm', NULL, NULL, N'97', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1208', NULL, N'2021-03-30', N'Thép Không Gỉ', NULL, NULL, N'97', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1209', NULL, N'2021-03-30', N'Thép Không Gỉ', NULL, NULL, N'97', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1210', NULL, N'2021-03-30', N'Đen', NULL, NULL, N'97', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1211', NULL, N'2021-03-30', N'3 ATM', NULL, NULL, N'97', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1212', NULL, N'2021-03-30', N'Calvin Klein', NULL, NULL, N'98', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1213', NULL, N'2021-03-30', N'K5N2M526', NULL, NULL, N'98', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1214', NULL, N'2021-03-30', N'Thụy Sỹ', NULL, NULL, N'98', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1215', NULL, N'2021-03-30', N'Mineral Crystal (Kính Cứng)', NULL, NULL, N'98', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1216', NULL, N'2021-03-30', N'Quartz (Pin)', NULL, NULL, N'98', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1217', NULL, N'2021-03-30', N'2 Năm', NULL, NULL, N'98', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1218', NULL, N'2021-03-30', N'27 mm', NULL, NULL, N'98', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1219', NULL, N'2021-03-30', N'8 mm', NULL, NULL, N'98', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1220', NULL, N'2021-03-30', N'Thép Không Gỉ', NULL, NULL, N'98', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1221', NULL, N'2021-03-30', N'Thép Không Gỉ', NULL, NULL, N'98', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1222', NULL, N'2021-03-30', N'Trắng', NULL, NULL, N'98', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1223', NULL, N'2021-03-30', N'3 ATM', NULL, NULL, N'98', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1224', NULL, N'2021-03-30', N'Calvin Klein', NULL, NULL, N'99', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1225', NULL, N'2021-03-30', N'K8M27121', NULL, NULL, N'99', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1226', NULL, N'2021-03-30', N'Thụy Sỹ', NULL, NULL, N'99', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1227', NULL, N'2021-03-30', N'Mineral Crystal (Kính Cứng)', NULL, NULL, N'99', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1228', NULL, N'2021-03-30', N'Quartz (Pin)', NULL, NULL, N'99', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1229', NULL, N'2021-03-30', N'2 Năm', NULL, NULL, N'99', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1230', NULL, N'2021-03-30', N'43 mm', NULL, NULL, N'99', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1231', NULL, N'2021-03-30', N'13 mm', NULL, NULL, N'99', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1232', NULL, N'2021-03-30', N'Thép Không Gỉ', NULL, NULL, N'99', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1233', NULL, N'2021-03-30', N'Thép Không Gỉ', NULL, NULL, N'99', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1234', NULL, N'2021-03-30', N'Đen', NULL, NULL, N'99', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1235', NULL, N'2021-03-30', N'5 ATM', NULL, NULL, N'99', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1236', NULL, N'2021-03-30', N'Lịch Ngày – Chronograph', NULL, NULL, N'99', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1237', NULL, N'2021-03-30', N'Calvin Klein', NULL, NULL, N'100', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1238', NULL, N'2021-03-30', N'K8Y236Z6', NULL, NULL, N'100', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1239', NULL, N'2021-03-30', N'Thụy Sỹ', NULL, NULL, N'100', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1240', NULL, N'2021-03-30', N'Mineral Crystal (Kính Cứng)', NULL, NULL, N'100', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1241', NULL, N'2021-03-30', N'Quartz (Pin)', NULL, NULL, N'100', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1242', NULL, N'2021-03-30', N'2 Năm', NULL, NULL, N'100', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1243', NULL, N'2021-03-30', N'42 mm', NULL, NULL, N'100', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1244', NULL, N'2021-03-30', N'8 mm', NULL, NULL, N'100', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1245', NULL, N'2021-03-30', N'Thép Không Gỉ', NULL, NULL, N'100', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1246', NULL, N'2021-03-30', N'Dây Da Chính Hãng', NULL, NULL, N'100', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1247', NULL, N'2021-03-30', N'Trắng', NULL, NULL, N'100', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1248', NULL, N'2021-03-30', N'3 ATM', NULL, NULL, N'100', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1249', NULL, N'2021-03-30', N'CASIO', NULL, NULL, N'1', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1250', NULL, N'2021-03-30', N'CASIO', NULL, NULL, N'2', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1251', NULL, N'2021-03-30', N'CASIO', NULL, NULL, N'3', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1252', NULL, N'2021-03-30', N'CASIO', NULL, NULL, N'4', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1253', NULL, N'2021-03-30', N'CASIO', NULL, NULL, N'5', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1254', NULL, N'2021-03-30', N'CASIO', NULL, NULL, N'6', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1255', NULL, N'2021-03-30', N'CASIO', NULL, NULL, N'7', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1256', NULL, N'2021-03-30', N'CASIO', NULL, NULL, N'8', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1257', NULL, N'2021-03-30', N'CASIO', NULL, NULL, N'9', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1258', NULL, N'2021-03-30', N'CASIO', NULL, NULL, N'10', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1259', NULL, N'2021-03-30', N'CASIO', NULL, NULL, N'11', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1260', NULL, N'2021-03-30', N'CASIO', NULL, NULL, N'12', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1261', NULL, N'2021-03-30', N'CASIO', NULL, NULL, N'13', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1262', NULL, N'2021-03-30', N'CASIO', NULL, NULL, N'14', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1263', NULL, N'2021-03-30', N'CASIO', NULL, NULL, N'15', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1264', NULL, N'2021-03-30', N'CASIO', NULL, NULL, N'16', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1265', N'admin@gmail.com', N'2021-04-15', N'Mido', NULL, NULL, N'102', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1266', N'admin@gmail.com', N'2021-04-15', N'M027.426.16.018.00', NULL, NULL, N'102', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1267', N'admin@gmail.com', N'2021-04-15', N'Thụy Sỹ', NULL, NULL, N'102', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1268', N'admin@gmail.com', N'2021-04-15', N'Sapphire (Kính Chống Trầy)', NULL, NULL, N'102', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1269', N'admin@gmail.com', N'2021-04-15', N'Automatic (Tự Động)', NULL, NULL, N'102', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1270', N'admin@gmail.com', N'2021-04-15', N'2 Năm', NULL, NULL, N'102', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1271', N'admin@gmail.com', N'2021-04-15', N'40 mm', NULL, NULL, N'102', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1272', N'admin@gmail.com', N'2021-04-15', N'10.38 mm', NULL, NULL, N'102', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1273', N'admin@gmail.com', N'2021-04-15', N'Thép Không Gỉ', NULL, NULL, N'102', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1274', N'admin@gmail.com', N'2021-04-15', N'Dây Da Chính Hãng', NULL, NULL, N'102', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1275', N'admin@gmail.com', N'2021-04-15', N'Trắng', NULL, NULL, N'102', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1276', N'admin@gmail.com', N'2021-04-15', N'3 ATM', NULL, NULL, N'102', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1277', N'admin@gmail.com', N'2021-04-15', N'Lịch Ngày', NULL, NULL, N'102', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1278', N'admin@gmail.com', N'2021-04-15', N'Mido', NULL, NULL, N'103', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1279', N'admin@gmail.com', N'2021-04-15', N'M005.430.11.031.80', NULL, NULL, N'103', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1280', N'admin@gmail.com', N'2021-04-15', N'Thụy Sỹ', NULL, NULL, N'103', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1281', N'admin@gmail.com', N'2021-04-15', N'Sapphire (Kính Chống Trầy)', NULL, NULL, N'103', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1282', N'admin@gmail.com', N'2021-04-15', N'Automatic (Tự Động)', NULL, NULL, N'103', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1283', N'admin@gmail.com', N'2021-04-15', N'2 Năm', NULL, NULL, N'103', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1284', N'admin@gmail.com', N'2021-04-15', N'42 mm', NULL, NULL, N'103', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1285', N'admin@gmail.com', N'2021-04-15', N'10.95 mm', NULL, NULL, N'103', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1286', N'admin@gmail.com', N'2021-04-15', N'Thép Không Gỉ', NULL, NULL, N'103', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1287', N'admin@gmail.com', N'2021-04-15', N'Thép Không Gỉ', NULL, NULL, N'103', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1288', N'admin@gmail.com', N'2021-04-15', N'Trắng', NULL, NULL, N'103', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1289', N'admin@gmail.com', N'2021-04-15', N'5 ATM', NULL, NULL, N'103', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1290', N'admin@gmail.com', N'2021-04-15', N'Lịch Ngày – Lịch Thứ', NULL, NULL, N'103', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1291', N'admin@gmail.com', N'2021-04-15', N'Mido', NULL, NULL, N'104', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1292', N'admin@gmail.com', N'2021-04-15', N'M8600.4.18.1', NULL, NULL, N'104', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1293', N'admin@gmail.com', N'2021-04-15', N'Thụy Sỹ', NULL, NULL, N'104', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1294', N'admin@gmail.com', N'2021-04-15', N'Sapphire (Kính Chống Trầy)', NULL, NULL, N'104', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1295', N'admin@gmail.com', N'2021-04-15', N'Automatic (Tự Động)', NULL, NULL, N'104', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1296', N'admin@gmail.com', N'2021-04-15', N'2 Năm', NULL, NULL, N'104', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1297', N'admin@gmail.com', N'2021-04-15', N'38 mm', NULL, NULL, N'104', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1298', N'admin@gmail.com', N'2021-04-15', N'9.1 mm', NULL, NULL, N'104', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1299', N'admin@gmail.com', N'2021-04-15', N'Thép Không Gỉ', NULL, NULL, N'104', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1300', N'admin@gmail.com', N'2021-04-15', N'Thép Không Gỉ', NULL, NULL, N'104', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1301', N'admin@gmail.com', N'2021-04-15', N'Đen', NULL, NULL, N'104', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1302', N'admin@gmail.com', N'2021-04-15', N'5 ATM', NULL, NULL, N'104', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1303', N'admin@gmail.com', N'2021-04-15', N'Lịch Ngày', NULL, NULL, N'104', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1304', N'admin@gmail.com', N'2021-04-16', N'Mido', NULL, NULL, N'105', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1305', N'admin@gmail.com', N'2021-04-16', N'M8600.9.76.1', NULL, NULL, N'105', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1306', N'admin@gmail.com', N'2021-04-16', N'Thụy Sỹ', NULL, NULL, N'105', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1307', N'admin@gmail.com', N'2021-04-16', N'Sapphire (Kính Chống Trầy)', NULL, NULL, N'105', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1308', N'admin@gmail.com', N'2021-04-16', N'2 Năm', NULL, NULL, N'105', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1309', N'admin@gmail.com', N'2021-04-16', N'38 mm', NULL, NULL, N'105', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1310', N'admin@gmail.com', N'2021-04-16', N'9.1 mm', NULL, NULL, N'105', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1311', N'admin@gmail.com', N'2021-04-16', N'Thép Không Gỉ', NULL, NULL, N'105', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1312', N'admin@gmail.com', N'2021-04-16', N'Thép Không Gỉ', NULL, NULL, N'105', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1313', N'admin@gmail.com', N'2021-04-16', N'Trắng', NULL, NULL, N'105', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1314', N'admin@gmail.com', N'2021-04-16', N'5 ATM', NULL, NULL, N'105', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1315', N'admin@gmail.com', N'2021-04-16', N'Lịch Ngày', NULL, NULL, N'105', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1316', N'admin@gmail.com', N'2021-04-16', N'Mido', NULL, NULL, N'106', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1317', N'admin@gmail.com', N'2021-04-16', N'M7600.4.21.1', NULL, NULL, N'106', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1318', N'admin@gmail.com', N'2021-04-16', N'Thụy Sỹ', NULL, NULL, N'106', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1319', N'admin@gmail.com', N'2021-04-16', N'Sapphire (Kính Chống Trầy)', NULL, NULL, N'106', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1320', N'admin@gmail.com', N'2021-04-16', N'Automatic (Tự Động)', NULL, NULL, N'106', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1321', N'admin@gmail.com', N'2021-04-16', N'2 Năm', NULL, NULL, N'106', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1322', N'admin@gmail.com', N'2021-04-16', N'29 mm', NULL, NULL, N'106', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1323', N'admin@gmail.com', N'2021-04-16', N'8.65 mm', NULL, NULL, N'106', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1324', N'admin@gmail.com', N'2021-04-16', N'Thép Không Gỉ', NULL, NULL, N'106', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1325', N'admin@gmail.com', N'2021-04-16', N'Thép Không Gỉ', NULL, NULL, N'106', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1326', N'admin@gmail.com', N'2021-04-16', N'Trắng', NULL, NULL, N'106', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1327', N'admin@gmail.com', N'2021-04-16', N'5 ATM', NULL, NULL, N'106', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1328', N'admin@gmail.com', N'2021-04-16', N'Lịch Ngày', NULL, NULL, N'106', N'12')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1329', N'admin@gmail.com', N'2021-04-16', N'Mido', NULL, NULL, N'107', N'13')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1330', N'admin@gmail.com', N'2021-04-16', N'M024.207.11.031.00', NULL, NULL, N'107', N'1')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1331', N'admin@gmail.com', N'2021-04-16', N'Thụy Sỹ', NULL, NULL, N'107', N'2')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1332', N'admin@gmail.com', N'2021-04-16', N'Sapphire (Kính Chống Trầy)', NULL, NULL, N'107', N'3')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1333', N'admin@gmail.com', N'2021-04-16', N'Automatic (Tự Động)', NULL, NULL, N'107', N'4')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1334', N'admin@gmail.com', N'2021-04-16', N'2 Năm', NULL, NULL, N'107', N'5')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1335', N'admin@gmail.com', N'2021-04-16', N'33 mm', NULL, NULL, N'107', N'6')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1336', N'admin@gmail.com', N'2021-04-16', N'9.95 mm', NULL, NULL, N'107', N'7')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1337', N'admin@gmail.com', N'2021-04-16', N'Thép Không Gỉ', NULL, NULL, N'107', N'8')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1338', N'admin@gmail.com', N'2021-04-16', N'Thép Không Gỉ', NULL, NULL, N'107', N'9')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1339', N'admin@gmail.com', N'2021-04-16', N'Trắng', NULL, NULL, N'107', N'10')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1340', N'admin@gmail.com', N'2021-04-16', N'5 ATM', NULL, NULL, N'107', N'11')
GO

INSERT INTO [dbo].[product_property_detail] ([id], [create_by], [created_date], [description], [update_by], [updated_date], [product_id], [product_property_id]) VALUES (N'1341', N'admin@gmail.com', N'2021-04-16', N'Lịch Ngày', NULL, NULL, N'107', N'12')
GO

SET IDENTITY_INSERT [dbo].[product_property_detail] OFF
GO


-- ----------------------------
-- Table structure for suppliers
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[suppliers]') AND type IN ('U'))
	DROP TABLE [dbo].[suppliers]
GO

CREATE TABLE [dbo].[suppliers] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [address] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_by] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [created_date] date  NULL,
  [email] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [name] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [phone] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_by] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [updated_date] date  NULL,
  [isdelete] bit  NULL
)
GO

ALTER TABLE [dbo].[suppliers] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of suppliers
-- ----------------------------
SET IDENTITY_INSERT [dbo].[suppliers] ON
GO

INSERT INTO [dbo].[suppliers] ([id], [address], [create_by], [created_date], [email], [name], [phone], [update_by], [updated_date], [isdelete]) VALUES (N'1', N'193/2 Nam Kì Khởi Nghĩa, Phường 7, Quận 3, Tp Hồ Chí Minh', N'admin1@gmil.com', N'2021-03-04', N'donghomanhthang@gmail.com', N'Đồng Hồ Mạnh Thắng', N'0902530204', N'admin@gmail.com', N'2021-03-04', N'0')
GO

INSERT INTO [dbo].[suppliers] ([id], [address], [create_by], [created_date], [email], [name], [phone], [update_by], [updated_date], [isdelete]) VALUES (N'2', N'25 Nguyễn Hậu, Phường Tân Thành, Quận Tân Phú, Tp Hồ Chí Minh', N'admin1@gmil.com', N'2021-03-04', N'luxuryfashion@gmail.com', N'Đồ Hồ Luxury Fashion', N'0908616676', N'admin@gmail.com', N'2021-03-04', N'0')
GO

INSERT INTO [dbo].[suppliers] ([id], [address], [create_by], [created_date], [email], [name], [phone], [update_by], [updated_date], [isdelete]) VALUES (N'3', N'35A Lê Quang Sung, Phường 2, Quận 6, Tp Hồ Chí Minh', N'admin1@gmil.com', N'2021-03-04', N'many@gmail.com', N'Đồng Hồ Mãn Ý', N'0903945318', N'admin@gmail.com', N'2021-03-04', N'0')
GO

INSERT INTO [dbo].[suppliers] ([id], [address], [create_by], [created_date], [email], [name], [phone], [update_by], [updated_date], [isdelete]) VALUES (N'4', N'65 Phan Văn Năm, Phường Phú Thạnh, Quận Tân Phú, Tp Hồ Chí Minh', N'admin1@gmil.com', N'2021-03-04', N'iriswatch@gmail.com', N'Iris Watch', N'0948789787', N'admin@gmail.com', N'2021-03-04', N'0')
GO

INSERT INTO [dbo].[suppliers] ([id], [address], [create_by], [created_date], [email], [name], [phone], [update_by], [updated_date], [isdelete]) VALUES (N'5', N'Quầy 69A1 Chợ Đồng Xuân, Quận Hoàn Kiếm, Tp Hà Nội', N'admin1@gmil.com', N'2021-03-04', N'lumino888@gmail.com', N'Lumino 888', N'0967816888', N'admin@gmail.com', N'2021-03-04', N'0')
GO

SET IDENTITY_INSERT [dbo].[suppliers] OFF
GO


-- ----------------------------
-- Table structure for users
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[users]') AND type IN ('U'))
	DROP TABLE [dbo].[users]
GO

CREATE TABLE [dbo].[users] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [address] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [birthday] date  NULL,
  [created_date] date  NULL,
  [email] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [fullname] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [gender] bit  NULL,
  [password] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [phone] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_date] date  NULL,
  [username] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [isdelete] bit  NULL
)
GO

ALTER TABLE [dbo].[users] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of users
-- ----------------------------
SET IDENTITY_INSERT [dbo].[users] ON
GO

INSERT INTO [dbo].[users] ([id], [address], [birthday], [created_date], [email], [fullname], [gender], [password], [phone], [update_date], [username], [isdelete]) VALUES (N'1', N'195 Nam Kì Khởi Nghĩa, Phường 7, Quận 3', N'1998-02-21', N'2021-03-04', N'user@gmail.com', N'Luong Xuan Truong', N'1', N'1234567', N'1234567890', N'2021-04-13', N'user@gmail.com', N'0')
GO

INSERT INTO [dbo].[users] ([id], [address], [birthday], [created_date], [email], [fullname], [gender], [password], [phone], [update_date], [username], [isdelete]) VALUES (N'2', N'123 Lý Chính Thắng, Phường 7, Quận 3', N'1998-02-18', N'2021-02-26', N'thuyan@gmail.com', N'Nguyễn Lê Thuỳ An', N'0', N'123456789', N'1234567890', N'2021-02-26', N'thuyan@gmail.com', N'0')
GO

INSERT INTO [dbo].[users] ([id], [address], [birthday], [created_date], [email], [fullname], [gender], [password], [phone], [update_date], [username], [isdelete]) VALUES (N'3', N'195 Nam Kì Khởi Nghĩa, Phường 7, Quận 3', N'1998-02-21', N'2021-03-04', N'user2@gmail.com', N'Luong Xuan Truong', N'0', N'123456789', N'1234567890', N'2021-03-04', N'user2@gmail.com', N'0')
GO

INSERT INTO [dbo].[users] ([id], [address], [birthday], [created_date], [email], [fullname], [gender], [password], [phone], [update_date], [username], [isdelete]) VALUES (N'4', N'91 Phan Văn Trị, Phường 12 , Quận Gò Vấp', N'1998-02-21', N'2021-03-04', N'user3@gmail.com', N'Lê Hữu Nghĩa', N'1', N'123456789', N'0967456423', N'2021-03-04', N'user3@gmail.com', N'1')
GO

INSERT INTO [dbo].[users] ([id], [address], [birthday], [created_date], [email], [fullname], [gender], [password], [phone], [update_date], [username], [isdelete]) VALUES (N'6', NULL, NULL, N'2021-03-18', N'123456789@gmail.com', N'1234567890', N'0', N'123456789', NULL, N'2021-03-18', N'123456789@gmail.com', N'0')
GO

INSERT INTO [dbo].[users] ([id], [address], [birthday], [created_date], [email], [fullname], [gender], [password], [phone], [update_date], [username], [isdelete]) VALUES (N'9', N'Xóm Chùa', NULL, N'2021-03-18', N'impactdestination8@gmail.com', N'Anh Nguyen', N'0', N'123456789', N'648684648', N'2021-03-18', N'impactdestination8@gmail.com', N'0')
GO

INSERT INTO [dbo].[users] ([id], [address], [birthday], [created_date], [email], [fullname], [gender], [password], [phone], [update_date], [username], [isdelete]) VALUES (N'10', N' ', N'1999-01-04', N'2021-03-30', N'phucpbps107102@fpt.edu.vn', N'Phạm Bá Phúc', N'1', N'123456', N'0923463748', N'2021-04-16', N'phucpbps107102@fpt.edu.vn', N'1')
GO

INSERT INTO [dbo].[users] ([id], [address], [birthday], [created_date], [email], [fullname], [gender], [password], [phone], [update_date], [username], [isdelete]) VALUES (N'11', N'195 Nam Kì Khởi Nghĩa, Phường 8, Quận 3', N'2021-09-21', N'2021-03-30', N'minhquang10ks@gmail.com', N'Nguyễn Minh Quang', N'1', N'0923650183', N'0923106340', N'2021-04-16', N'minhquang10ks@gmail.com', N'1')
GO

INSERT INTO [dbo].[users] ([id], [address], [birthday], [created_date], [email], [fullname], [gender], [password], [phone], [update_date], [username], [isdelete]) VALUES (N'12', N'12 Trần Đại Nghĩa, Phường 1, Quận Bình Tân', N'2000-03-07', N'2021-03-30', N'nguyenngoctuan2801@gmail.com', N'Nguyễn Ngọc Tuấn', N'1', N'037475853', N'0926364710', NULL, N'nguyenngoctuan2801@gmail.com', N'0')
GO

INSERT INTO [dbo].[users] ([id], [address], [birthday], [created_date], [email], [fullname], [gender], [password], [phone], [update_date], [username], [isdelete]) VALUES (N'13', N'1 Phan Đình Phùng, Phường 1, Quận Phú Nhuận', N'1998-08-03', N'2021-03-30', N'tranlong12a@gmai.com', N'Trần Văn Long', N'1', N'l?ng', N'0936475828', NULL, N'tranlong12a@gmai.com', N'0')
GO

INSERT INTO [dbo].[users] ([id], [address], [birthday], [created_date], [email], [fullname], [gender], [password], [phone], [update_date], [username], [isdelete]) VALUES (N'14', N'22 Tân Sơn Nhì, Phường Tân Sơn Nhì, Quận Tân Bình', N'1998-02-02', N'2021-03-30', N'phanvanthanh@gmail.com', N'Phan Văn Thành', N'1', N'0364384848', N'0927374828', NULL, N'phanvanthanh@gmail.com', N'0')
GO

INSERT INTO [dbo].[users] ([id], [address], [birthday], [created_date], [email], [fullname], [gender], [password], [phone], [update_date], [username], [isdelete]) VALUES (N'15', N'11 Nguyễn Kiệm, Phường 4, Quận Phú Nhuận', N'1996-02-13', N'2021-03-30', N'nguyenthilinh181@gmail.com', N'Nguyễn Thị Linh', N'0', N'0364838292', N'0936437282', NULL, N'nguyenthilinh181@gmail.com', N'0')
GO

INSERT INTO [dbo].[users] ([id], [address], [birthday], [created_date], [email], [fullname], [gender], [password], [phone], [update_date], [username], [isdelete]) VALUES (N'16', N'2 Phạm Hùng, Phường 1, Quận 8', N'1999-02-01', N'2021-03-30', N'nhutran29a@gmail.com', N'Trần Ngọc Như', N'0', N'0923648483', N'0374594999', NULL, N'nhutran29a@gmail.com', N'0')
GO

INSERT INTO [dbo].[users] ([id], [address], [birthday], [created_date], [email], [fullname], [gender], [password], [phone], [update_date], [username], [isdelete]) VALUES (N'17', N'223 Lý Chính Thắng, Phường 6, Quận 3', N'1996-07-01', N'2021-03-30', N'votrungnam21@gmail.com', N'Võ Trung Nam', N'1', N'037485939', N'0362838188', NULL, N'votrungnam21@gmail.com', N'0')
GO

INSERT INTO [dbo].[users] ([id], [address], [birthday], [created_date], [email], [fullname], [gender], [password], [phone], [update_date], [username], [isdelete]) VALUES (N'18', N'25 Nguyễn Tất Thành, Phường 1, Quẫn', N'1995-06-12', N'2021-03-30', N'tiennm@gmail.com', N'Nguyễn Minh Tiến', N'1', N'0364848488', N'0736462718', NULL, N'tiennm@gmail.com', N'0')
GO

INSERT INTO [dbo].[users] ([id], [address], [birthday], [created_date], [email], [fullname], [gender], [password], [phone], [update_date], [username], [isdelete]) VALUES (N'19', N'144 Huỳnh Tấn Phát, Phường Tân Thuận, Quận 7', N'1997-07-14', N'2021-03-30', N'nguyenthiyen@gmail.com', N'Nguyễn Thị Yến', N'0', N'037474838', N'0483746288', NULL, N'nguyenthiyen@gmail.com', N'0')
GO

INSERT INTO [dbo].[users] ([id], [address], [birthday], [created_date], [email], [fullname], [gender], [password], [phone], [update_date], [username], [isdelete]) VALUES (N'20', N'112 Điện Biên Phủ, Phường 2, Quận Bình Thạnh', N'1996-08-20', N'2021-03-30', N'tranbichtran28@gmail.com', N'Trần Bích Trâm', N'0', N'036473737', N'0927385923', NULL, N'tranbichtran28@gmail.com', N'0')
GO

INSERT INTO [dbo].[users] ([id], [address], [birthday], [created_date], [email], [fullname], [gender], [password], [phone], [update_date], [username], [isdelete]) VALUES (N'21', N'330 Trường Chinh, Phường 7, Quận Tân Bình', N'1998-11-26', N'2021-03-30', N'nguyenhuuthanh@gmail.com', N'Nguyễn Hữu Thành', N'1', N'0364729394', N'0926378832', NULL, N'nguyenhuuthanh@gmail.com', N'0')
GO

INSERT INTO [dbo].[users] ([id], [address], [birthday], [created_date], [email], [fullname], [gender], [password], [phone], [update_date], [username], [isdelete]) VALUES (N'22', N'Hồ chí minh', N'1969-12-31', N'2021-03-30', N'phambaphuc1999@gmail.com', N'Phạm Bá Phúc', N'0', N'123456789', N'0938697503', N'2021-04-16', N'phambaphuc1999@gmail.com', N'1')
GO

INSERT INTO [dbo].[users] ([id], [address], [birthday], [created_date], [email], [fullname], [gender], [password], [phone], [update_date], [username], [isdelete]) VALUES (N'24', N'Hồ chí minh', NULL, N'2021-04-16', N'phucpbps10710@fpt.edu.vn', N'Phạm Bá Phúc', N'0', N'1234567', N'938697503', N'2021-04-16', N'phucpbps10710@fpt.edu.vn', N'0')
GO

INSERT INTO [dbo].[users] ([id], [address], [birthday], [created_date], [email], [fullname], [gender], [password], [phone], [update_date], [username], [isdelete]) VALUES (N'29', N'4/32 Lưu Chí Hiếu', NULL, N'2021-04-16', N'nghiemn@fpt.edu.vn', N'Nguyễn Nghiệm', N'1', N'123456', N'913745789', N'2021-04-17', N'nghiemn@fpt.edu.vn', N'0')
GO

INSERT INTO [dbo].[users] ([id], [address], [birthday], [created_date], [email], [fullname], [gender], [password], [phone], [update_date], [username], [isdelete]) VALUES (N'30', N'11 Lê Lợi, Phường 11, Quận Gò vấp', N'1998-02-09', N'2021-04-17', N'nguyenthanhlong@gmail.com', N'Nguyễn Thành Long', N'1', N'1234567', N'0926364738', NULL, N'nguyenthanhlong@gmail.com', N'0')
GO

INSERT INTO [dbo].[users] ([id], [address], [birthday], [created_date], [email], [fullname], [gender], [password], [phone], [update_date], [username], [isdelete]) VALUES (N'31', N'12 Hoàng Văn Thụ, Phường 3, Quận Phú Nhuận', N'1998-01-05', N'2021-04-17', N'nguyenthanhnhan09@gmail.com', N'Nguyễn Thành Nhân', N'1', N'12345667', N'0927374922', NULL, N'nguyenthanhnhan09@gmail.com', N'0')
GO

INSERT INTO [dbo].[users] ([id], [address], [birthday], [created_date], [email], [fullname], [gender], [password], [phone], [update_date], [username], [isdelete]) VALUES (N'32', N'27/9 Huỳnh Tịnh Của, Phường 7, Quận 3', N'1999-02-16', N'2021-04-17', N'nguyenphuongbinh123@gmail.com', N'Nguyễn Phương Bình', N'1', N'1234567', N'09237463839', NULL, N'nguyenphuongbinh123@gmail.com', N'0')
GO

INSERT INTO [dbo].[users] ([id], [address], [birthday], [created_date], [email], [fullname], [gender], [password], [phone], [update_date], [username], [isdelete]) VALUES (N'33', N'33 Cộng Hòa, Phường 1, Quận Tân Bình', N'1999-07-06', N'2021-04-17', N'trinhthanhnam99@gmail.com', N'Trịnh Thanh Nam', N'1', N'1234567', N'0974838492', NULL, N'trinhthanhnam99@gmail.com', N'0')
GO

INSERT INTO [dbo].[users] ([id], [address], [birthday], [created_date], [email], [fullname], [gender], [password], [phone], [update_date], [username], [isdelete]) VALUES (N'34', N'27/9 Huỳnh Tịnh Của', NULL, N'2021-04-17', N'quangnmps10741@fpt.edu.vn', N'Minh Quang', N'0', N'1234567', N'923828383', N'2021-04-17', N'quangnmps10741@fpt.edu.vn', N'0')
GO

INSERT INTO [dbo].[users] ([id], [address], [birthday], [created_date], [email], [fullname], [gender], [password], [phone], [update_date], [username], [isdelete]) VALUES (N'37', NULL, NULL, N'2021-04-17', N'minhquang10ks@gmail.com', N'1234567890', N'0', N'123456789', NULL, N'2021-04-17', N'minhquang10ks@gmail.com', N'0')
GO

SET IDENTITY_INSERT [dbo].[users] OFF
GO


-- ----------------------------
-- Table structure for users_token
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[users_token]') AND type IN ('U'))
	DROP TABLE [dbo].[users_token]
GO

CREATE TABLE [dbo].[users_token] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [account_status] int  NULL,
  [email_confirm_token] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [password_reminder_expire] date  NULL,
  [password_reminder_token] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [registration_time] date  NULL,
  [user_id] int  NULL
)
GO

ALTER TABLE [dbo].[users_token] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of users_token
-- ----------------------------
SET IDENTITY_INSERT [dbo].[users_token] ON
GO

INSERT INTO [dbo].[users_token] ([id], [account_status], [email_confirm_token], [password_reminder_expire], [password_reminder_token], [registration_time], [user_id]) VALUES (N'2', N'1', NULL, NULL, NULL, N'2021-03-18', N'6')
GO

INSERT INTO [dbo].[users_token] ([id], [account_status], [email_confirm_token], [password_reminder_expire], [password_reminder_token], [registration_time], [user_id]) VALUES (N'5', N'1', NULL, NULL, NULL, N'2021-03-18', N'1')
GO

INSERT INTO [dbo].[users_token] ([id], [account_status], [email_confirm_token], [password_reminder_expire], [password_reminder_token], [registration_time], [user_id]) VALUES (N'6', N'1', NULL, NULL, NULL, N'2021-03-18', N'2')
GO

INSERT INTO [dbo].[users_token] ([id], [account_status], [email_confirm_token], [password_reminder_expire], [password_reminder_token], [registration_time], [user_id]) VALUES (N'7', N'1', NULL, NULL, NULL, N'2021-03-18', N'3')
GO

INSERT INTO [dbo].[users_token] ([id], [account_status], [email_confirm_token], [password_reminder_expire], [password_reminder_token], [registration_time], [user_id]) VALUES (N'8', N'1', NULL, NULL, NULL, N'2021-03-18', N'4')
GO

INSERT INTO [dbo].[users_token] ([id], [account_status], [email_confirm_token], [password_reminder_expire], [password_reminder_token], [registration_time], [user_id]) VALUES (N'10', N'1', NULL, NULL, NULL, N'2021-03-18', N'9')
GO

INSERT INTO [dbo].[users_token] ([id], [account_status], [email_confirm_token], [password_reminder_expire], [password_reminder_token], [registration_time], [user_id]) VALUES (N'11', N'1', NULL, NULL, NULL, N'2021-03-31', N'22')
GO

INSERT INTO [dbo].[users_token] ([id], [account_status], [email_confirm_token], [password_reminder_expire], [password_reminder_token], [registration_time], [user_id]) VALUES (N'12', N'1', NULL, NULL, NULL, N'2021-04-08', N'10')
GO

INSERT INTO [dbo].[users_token] ([id], [account_status], [email_confirm_token], [password_reminder_expire], [password_reminder_token], [registration_time], [user_id]) VALUES (N'19', N'1', NULL, NULL, NULL, N'2021-04-16', N'29')
GO

INSERT INTO [dbo].[users_token] ([id], [account_status], [email_confirm_token], [password_reminder_expire], [password_reminder_token], [registration_time], [user_id]) VALUES (N'20', N'1', NULL, NULL, NULL, N'2021-04-17', N'34')
GO

INSERT INTO [dbo].[users_token] ([id], [account_status], [email_confirm_token], [password_reminder_expire], [password_reminder_token], [registration_time], [user_id]) VALUES (N'21', N'1', NULL, NULL, NULL, N'2021-04-17', N'24')
GO

INSERT INTO [dbo].[users_token] ([id], [account_status], [email_confirm_token], [password_reminder_expire], [password_reminder_token], [registration_time], [user_id]) VALUES (N'24', N'0', N'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIzNyIsImlhdCI6MTYxODY1OTUwNywiZXhwIjoxNjE5MjY0MzA3fQ.t2dH834FFEhjOw9G9OrkLKODz-_HVgGDGeE7cQvooF0dimuB5ZK7QTIWEMqX7ofmGOCJSCPHuygVwrinE61Duw', NULL, NULL, N'2021-04-17', N'37')
GO

SET IDENTITY_INSERT [dbo].[users_token] OFF
GO


-- ----------------------------
-- Table structure for voucher
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[voucher]') AND type IN ('U'))
	DROP TABLE [dbo].[voucher]
GO

CREATE TABLE [dbo].[voucher] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [code] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_by] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [created_date] date  NULL,
  [expiration_date] date  NULL,
  [limit_use] int  NULL,
  [status] bit  NULL,
  [update_by] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [updated_date] date  NULL,
  [value] int  NULL
)
GO

ALTER TABLE [dbo].[voucher] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of voucher
-- ----------------------------
SET IDENTITY_INSERT [dbo].[voucher] ON
GO

INSERT INTO [dbo].[voucher] ([id], [code], [create_by], [created_date], [expiration_date], [limit_use], [status], [update_by], [updated_date], [value]) VALUES (N'1', N'Voucher1', N'admin@gmail.com', N'2021-03-04', N'2021-03-11', N'1', N'1', N'admin@gmail.com', N'2021-03-04', N'100000')
GO

INSERT INTO [dbo].[voucher] ([id], [code], [create_by], [created_date], [expiration_date], [limit_use], [status], [update_by], [updated_date], [value]) VALUES (N'2', N'Voucher1', N'admin@gmail.com', N'2021-03-04', N'2021-03-11', N'4', N'0', N'admin@gmail.com', N'2021-03-04', N'100000')
GO

INSERT INTO [dbo].[voucher] ([id], [code], [create_by], [created_date], [expiration_date], [limit_use], [status], [update_by], [updated_date], [value]) VALUES (N'3', N'Voucher11', N'admin@gmail.com', N'2021-03-04', N'2021-03-11', N'1', N'0', N'admin@gmail.com', N'2021-04-16', N'90000')
GO

INSERT INTO [dbo].[voucher] ([id], [code], [create_by], [created_date], [expiration_date], [limit_use], [status], [update_by], [updated_date], [value]) VALUES (N'4', N'Voucher12', N'admin@gmail.com', N'2021-03-04', N'2021-03-11', N'1', N'0', N'admin@gmail.com', N'2021-04-16', N'90000')
GO

SET IDENTITY_INSERT [dbo].[voucher] OFF
GO


-- ----------------------------
-- Table structure for wishlish
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[wishlish]') AND type IN ('U'))
	DROP TABLE [dbo].[wishlish]
GO

CREATE TABLE [dbo].[wishlish] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [created_date] date  NULL,
  [update_date] date  NULL,
  [user_id] int  NULL,
  [product_id] int  NULL
)
GO

ALTER TABLE [dbo].[wishlish] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of wishlish
-- ----------------------------
SET IDENTITY_INSERT [dbo].[wishlish] ON
GO

INSERT INTO [dbo].[wishlish] ([id], [created_date], [update_date], [user_id], [product_id]) VALUES (N'1', N'2021-03-18', N'2021-03-18', N'1', N'1')
GO

INSERT INTO [dbo].[wishlish] ([id], [created_date], [update_date], [user_id], [product_id]) VALUES (N'7', N'2021-04-08', N'2021-04-08', N'9', N'6')
GO

INSERT INTO [dbo].[wishlish] ([id], [created_date], [update_date], [user_id], [product_id]) VALUES (N'12', N'2021-04-09', N'2021-04-09', N'22', N'82')
GO

INSERT INTO [dbo].[wishlish] ([id], [created_date], [update_date], [user_id], [product_id]) VALUES (N'17', N'2021-04-11', N'2021-04-11', N'1', N'87')
GO

INSERT INTO [dbo].[wishlish] ([id], [created_date], [update_date], [user_id], [product_id]) VALUES (N'18', N'2021-04-15', N'2021-04-15', N'22', N'6')
GO

INSERT INTO [dbo].[wishlish] ([id], [created_date], [update_date], [user_id], [product_id]) VALUES (N'26', N'2021-04-17', N'2021-04-17', N'34', N'81')
GO

SET IDENTITY_INSERT [dbo].[wishlish] OFF
GO


-- ----------------------------
-- Auto increment value for admin
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[admin]', RESEED, 8)
GO


-- ----------------------------
-- Primary Key structure for table admin
-- ----------------------------
ALTER TABLE [dbo].[admin] ADD CONSTRAINT [PK__admin__3213E83F0B84BC44] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for cart
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[cart]', RESEED, 29)
GO


-- ----------------------------
-- Primary Key structure for table cart
-- ----------------------------
ALTER TABLE [dbo].[cart] ADD CONSTRAINT [PK__cart__3213E83FA81AA67B] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for cart_detail
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[cart_detail]', RESEED, 60)
GO


-- ----------------------------
-- Primary Key structure for table cart_detail
-- ----------------------------
ALTER TABLE [dbo].[cart_detail] ADD CONSTRAINT [PK__cart_det__3213E83FD089A51F] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for comment
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[comment]', RESEED, 21)
GO


-- ----------------------------
-- Primary Key structure for table comment
-- ----------------------------
ALTER TABLE [dbo].[comment] ADD CONSTRAINT [PK__comment__3213E83FCAB5B894] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for email
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[email]', RESEED, 5)
GO


-- ----------------------------
-- Primary Key structure for table email
-- ----------------------------
ALTER TABLE [dbo].[email] ADD CONSTRAINT [PK__email__3213E83F7EB8F363] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for invoice
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[invoice]', RESEED, 36)
GO


-- ----------------------------
-- Primary Key structure for table invoice
-- ----------------------------
ALTER TABLE [dbo].[invoice] ADD CONSTRAINT [PK__invoice__3213E83FB296C0EC] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for invoice_detail
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[invoice_detail]', RESEED, 51)
GO


-- ----------------------------
-- Primary Key structure for table invoice_detail
-- ----------------------------
ALTER TABLE [dbo].[invoice_detail] ADD CONSTRAINT [PK__invoice___3213E83F25670A0B] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for product
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[product]', RESEED, 107)
GO


-- ----------------------------
-- Primary Key structure for table product
-- ----------------------------
ALTER TABLE [dbo].[product] ADD CONSTRAINT [PK__product__3213E83F8EE322CE] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for product_image
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[product_image]', RESEED, 535)
GO


-- ----------------------------
-- Primary Key structure for table product_image
-- ----------------------------
ALTER TABLE [dbo].[product_image] ADD CONSTRAINT [PK__product___3213E83F18FBCDF9] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for product_property
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[product_property]', RESEED, 13)
GO


-- ----------------------------
-- Primary Key structure for table product_property
-- ----------------------------
ALTER TABLE [dbo].[product_property] ADD CONSTRAINT [PK__product___3213E83FF1672A1A] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for product_property_detail
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[product_property_detail]', RESEED, 1341)
GO


-- ----------------------------
-- Primary Key structure for table product_property_detail
-- ----------------------------
ALTER TABLE [dbo].[product_property_detail] ADD CONSTRAINT [PK__product___3213E83FAC81CC04] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for suppliers
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[suppliers]', RESEED, 5)
GO


-- ----------------------------
-- Primary Key structure for table suppliers
-- ----------------------------
ALTER TABLE [dbo].[suppliers] ADD CONSTRAINT [PK__supplier__3213E83F2341C245] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for users
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[users]', RESEED, 37)
GO


-- ----------------------------
-- Primary Key structure for table users
-- ----------------------------
ALTER TABLE [dbo].[users] ADD CONSTRAINT [PK__users__3213E83FE9F93989] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for users_token
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[users_token]', RESEED, 24)
GO


-- ----------------------------
-- Primary Key structure for table users_token
-- ----------------------------
ALTER TABLE [dbo].[users_token] ADD CONSTRAINT [PK__users_to__3213E83F82C24080] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for voucher
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[voucher]', RESEED, 4)
GO


-- ----------------------------
-- Primary Key structure for table voucher
-- ----------------------------
ALTER TABLE [dbo].[voucher] ADD CONSTRAINT [PK__voucher__3213E83F3DD9C382] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for wishlish
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[wishlish]', RESEED, 26)
GO


-- ----------------------------
-- Primary Key structure for table wishlish
-- ----------------------------
ALTER TABLE [dbo].[wishlish] ADD CONSTRAINT [PK__wishlish__3213E83FB141A81D] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table cart
-- ----------------------------
ALTER TABLE [dbo].[cart] ADD CONSTRAINT [FKg5uhi8vpsuy0lgloxk2h4w5o6] FOREIGN KEY ([user_id]) REFERENCES [dbo].[users] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table cart_detail
-- ----------------------------
ALTER TABLE [dbo].[cart_detail] ADD CONSTRAINT [FK37hai783jhfcqo6h0pkiqmc9s] FOREIGN KEY ([product_id]) REFERENCES [dbo].[product] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[cart_detail] ADD CONSTRAINT [FKrg4yopd2252nwj8bfcgq5f4jp] FOREIGN KEY ([cart_id]) REFERENCES [dbo].[cart] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table comment
-- ----------------------------
ALTER TABLE [dbo].[comment] ADD CONSTRAINT [FKm1rmnfcvq5mk26li4lit88pc5] FOREIGN KEY ([product_id]) REFERENCES [dbo].[product] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[comment] ADD CONSTRAINT [FKqm52p1v3o13hy268he0wcngr5] FOREIGN KEY ([user_id]) REFERENCES [dbo].[users] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table invoice
-- ----------------------------
ALTER TABLE [dbo].[invoice] ADD CONSTRAINT [FKc8jotskr93810vgn75qlbusw2] FOREIGN KEY ([user_id]) REFERENCES [dbo].[users] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[invoice] ADD CONSTRAINT [FKh8mc37lrohbk7stgatwwn5doq] FOREIGN KEY ([voucher_id]) REFERENCES [dbo].[voucher] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table invoice_detail
-- ----------------------------
ALTER TABLE [dbo].[invoice_detail] ADD CONSTRAINT [FKbe6c21nke5fy4m3vw00f23qsf] FOREIGN KEY ([product_id]) REFERENCES [dbo].[product] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[invoice_detail] ADD CONSTRAINT [FKit1rbx4thcr6gx6bm3gxub3y4] FOREIGN KEY ([invoice_id]) REFERENCES [dbo].[invoice] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table product
-- ----------------------------
ALTER TABLE [dbo].[product] ADD CONSTRAINT [fk_suppliers] FOREIGN KEY ([supplier_id]) REFERENCES [dbo].[suppliers] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table product_image
-- ----------------------------
ALTER TABLE [dbo].[product_image] ADD CONSTRAINT [FK6oo0cvcdtb6qmwsga468uuukk] FOREIGN KEY ([product_id]) REFERENCES [dbo].[product] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table product_property_detail
-- ----------------------------
ALTER TABLE [dbo].[product_property_detail] ADD CONSTRAINT [FKc4r6lphnfmjs4dw1wphpn8jin] FOREIGN KEY ([product_property_id]) REFERENCES [dbo].[product_property] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[product_property_detail] ADD CONSTRAINT [FKlw7vvi10bulb8a3ikt43l4xcn] FOREIGN KEY ([product_id]) REFERENCES [dbo].[product] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table users_token
-- ----------------------------
ALTER TABLE [dbo].[users_token] ADD CONSTRAINT [FKesvxqrjrdcbe03rx712bwki3y] FOREIGN KEY ([user_id]) REFERENCES [dbo].[users] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table wishlish
-- ----------------------------
ALTER TABLE [dbo].[wishlish] ADD CONSTRAINT [FKk5gyq5srkehwym63xveyjvsnh] FOREIGN KEY ([product_id]) REFERENCES [dbo].[product] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[wishlish] ADD CONSTRAINT [FKo92933chkqfwhvni40h3yp5kp] FOREIGN KEY ([user_id]) REFERENCES [dbo].[users] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[wishlish] ADD CONSTRAINT [FK9ajyr2io55dgq4p6gvxxlajkh] FOREIGN KEY ([user_id]) REFERENCES [dbo].[users] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


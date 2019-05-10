DROP TABLE IF EXISTS OrderItem, Orders, Products, Customers;
GO
CREATE TABLE [dbo].[Customers] (
    [CustomerID]   INT             	NOT NULL	IDENTITY(1,1),
    [LastName ]    NVARCHAR (20)   	NOT NULL,
    [FirstName ]   NVARCHAR (20)   	NOT NULL,
    [Username ]    NVARCHAR (20)    NOT NULL,
    [Password]     NVARCHAR (20)	NOT NULL,
    [DateJoined]   DATETIME	   		NOT NULL 	DEFAULT GETDATE(),
    [Address]      NVARCHAR (100)   NOT NULL,
    [PhoneNumber ] CHAR(10) 		NULL,
    [Email]        NCHAR (50)    	NULL,
    PRIMARY KEY CLUSTERED ([CustomerID] ASC)
);
GO
CREATE TABLE [dbo].[Products] (
    [ProductID]    INT            	NOT NULL	IDENTITY (1, 1),
    [ProductName]  VARCHAR (50)   	NOT NULL,
    [ProductPrice] MONEY          	NOT NULL,
    [ProductDesc]  VARCHAR (255)  	NULL,--will be made NOT NULL after descriptions written
    [ImagePath]	   NVARCHAR (50)  	NOT NULL,
    PRIMARY KEY CLUSTERED ([ProductID] ASC)
);
GO
CREATE TABLE [dbo].[Orders] (
    [OrderID]    INT	NOT NULL 	IDENTITY (1, 1),
    [CustomerID] INT 	NOT NULL,
    [SaleAmount] MONEY 	NOT NULL,
    PRIMARY KEY CLUSTERED ([OrderID] ASC),
    CONSTRAINT [FK_CustomerID] FOREIGN KEY ([CustomerID]) REFERENCES [dbo].[Customers] ([CustomerID]),
);
GO
CREATE TABLE [dbo].[OrderItem] (
    [ID]      	INT 		NOT NULL	IDENTITY(1,1),
    [Quantity]	TINYINT	NOT NULL,
    [ProductID]   	INT		NOT NULL,
    [OrderID] 	INT 		NOT NULL, 
    PRIMARY KEY CLUSTERED ([ID] ASC), 
    CONSTRAINT [FK_ProductID] FOREIGN KEY ([ProductID]) REFERENCES [Products]([ProductID]), 
    CONSTRAINT [FK_OrderID] FOREIGN KEY ([OrderID]) REFERENCES [Orders]([OrderID])
);
GO
INSERT INTO Products (ProductName, ProductPrice, ImagePath)
VALUES ('Delta', 25, '.\Images\delta.jpg'), ('Jack and Jill', 25, '.\Images\jack_and_jill.jpg'), 
('AKA', 25, '.\Images\2018-12-31.jpg'), ('Ice', 25, '.\Images\ice.jpg'), 
('Earth', 25, '.\Images\earth.jpg'), ('placeholder', 25, '.\Images\2018-12-31.jpg');
GO
INSERT INTO Customers (LastName, FirstName, Username, Password, Address)
VALUES ('Benton', 'David', 'dbento', 'password', '1800 Pineville-Matthews Road Charlotte, NC 28270');
GO

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
    [SaleAmount] MONEY 	NULL,
	[IsComplete] BIT	NOT NULL	DEFAULT (0),
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
INSERT INTO Products (ProductName, ProductPrice, ImagePath, ProductDesc)
VALUES ('Delta', 25, '.\Images\delta.jpg', 'This spakling red and white bracelet is perfect for any Delta Soror'), ('Jack and Jill', 25, '.\Images\jack_and_jill.jpg', 'This blue and pink bracelet is a necessity for all Jack and Jill members.'), 
('AKA', 25, '.\Images\2018-12-31.jpg', 'This pink and green AKA inspired bracelet is sure to shine on any sorors wrist'), ('Ice', 25, '.\Images\ice.jpg', 'These beautiful blue bracelets are all unique in their own way. None of th beads are the exact same and that makes tehem all the more unique.'), 
('Earth', 25, '.\Images\earth.jpg', 'This green and earth toned bracelet is the perfect gift for your friend with a green thumb.'), ('placeholder', 25, '.\Images\2018-12-31.jpg', 'nothing rn');
GO
INSERT INTO Customers (FirstName, LastName, Username, Password, Address)
VALUES ('David', 'Benton', 'dbento', 'password', '1800 Pineville-Matthews Road Charlotte, NC 28270'),
('Carol', 'Patrick', 'cpatrick', 'password', '2698 Emerson Road Shreveport, LA 71115'), 
('Ellen', 'Libby', 'elibby', 'password', '4432 South Street Lynchburg, VA 24504' ),
('Brenda','Kent','bkent','password','1959 Burwell Heights Road Beaumont, TX 77701'),
('Laura','Rhodes','lrhodes','password','2059 Burning Memory Lane Philadelphia, PA 19135'),
('Karen','Mayes','kmayes','password','857 Angus Road New York, NY 10281');
GO

INSERT INTO Orders (CustomerID, SaleAmount, IsComplete)
VAlUES (1,25,1), (2,50,1), (3,75,1), (4,100,1), (5,25,1), (6,50,1);
GO

INSERT INTO OrderItem ( Quantity, ProductID, OrderID)
VALUES (1, 1, 1), (2, 2, 2), (3, 3, 3), (4, 4, 4), (2, 5, 5), (2,3,6);
GO 
﻿-- Seed the db with starting, default, or test values
-- Note: by default SQL Server won't allow you to insert PK values, so we know what they are by the 
-- order we've listed them in and knowing that PK's start at 1 and increment by 1 as we specified in our UP script.  
-- If you want to manually specify PK's you must first turn on identity insert for each table.
-- SET IDENTITY_INSERT [Buyer] ON;  
INSERT INTO [Buyer](FirstName,LastName,Email)
	VALUES
	('Jane','Stone','jstone@gmail.com'),
	('Tom','McMasters','tom@yahoo.com'),
	('Otto','Vanderwall','otto@otto.com');

INSERT INTO [Seller](FirstName,LastName,Email,Phone)
	VALUES
	('Gayle','Hardy','gayle@hotmail.com','234-523-9923'),
	('Lyle','Banks','lyle@hotmail.com','622-494-4782'),
	('Pearl','Greene','pearl@gmail.com','755-823-7245');

INSERT INTO [Item](Name,Description,Condition,SellerID)
	VALUES
	('Abraham Lincoln Hammer','A bench mallet fashioned from a broken rail-splitting maul in 1829 and owned by Abraham Lincoln','Lightly used',3),
	('Albert Einsteins Telescope','A brass telescope owned by Albert Einstein in Germany, circa 1927','Mint in box',1),
	('Bob Dylan Love Poems','Five versions of an original unpublished, handwritten, love poem by Bob Dylan','Over used',2);

INSERT INTO [Bid](ItemID,BuyerID,Price,TimeSubmitted)
	VALUES
	(1,3,250000,'12/04/2017 09:04:22'),
	(3,1,95000, '12/04/2017 08:44:03');

	
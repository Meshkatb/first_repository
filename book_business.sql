DROP DATABASE IF EXISTS `book_industry`; 
CREATE DATABASE IF NOT EXISTS `book_industry`; 
USE `book_industry`;
SET NAMES UTF8MB4;
SET character_set_client = UTF8MB4;


CREATE TABLE `Authors` (
 `AuthorID` int NOT NULL,
 `AuthorName` varchar (20) NOT NULL,
 PRIMARY KEY (`AuthorID`),
 INDEX `AuthorID` (`AuthorID` ASC)
 );
 
 
 CREATE TABLE `Publishers` (
 `PublisherID` int NOT NULL,
 `PublisherName` varchar (20) NOT NULL,
 PRIMARY KEY (`PublisherID`),
 INDEX `PublisherID` (`PublisherID` ASC)
 );
 
  CREATE TABLE `Editors` (
 `EditorID` int NOT NULL,
 `EditorName` varchar (20) NOT NULL,
 PRIMARY KEY (`EditorID`),
 INDEX `EditorID` (`EditorID` ASC)
 );
 
 CREATE TABLE `Books` (
 `BookID` int NOT NULL,
 `BookName` varchar (100) NOT NULL,
 `PublisherID` int NOT NULL,
 `AuthorID` int NOT NULL,
 `EditorID` int NULL,
 `Genre` varchar (20) NOT NULL,
 `Royalty` int NOT NULL,
 PRIMARY KEY (`BookID`),
 FOREIGN KEY (`PublisherID`) REFERENCES Publishers(PublisherID),
 FOREIGN KEY (`AuthorID`) REFERENCES Authors(AuthorID),
 FOREIGN KEY (`EditorID`) REFERENCES Editors(EditorID),
 INDEX `BookID` (`BookID` ASC),
 INDEX `PublisherID` (`PublisherID` ASC),
 INDEX `AuthorID` (`AuthorID` ASC),
 INDEX `EditorID` (`EditorID` ASC)
 );
 
 
 CREATE TABLE `Orders` (
 `OrderID` int NOT NULL,
 `BookID` int NOT NULL,
 PRIMARY KEY (`OrderID`),
 FOREIGN KEY (`BookID`) REFERENCES Books(BookID),
 INDEX `OrderID` (`OrderID` ASC),
 INDEX `BookID` (`BookID` ASC)
 );
 
  CREATE TABLE `Customer` (
 `CustomerID` int NOT NULL,
 `CustomerName` varchar (100) NOT NULL,
 `OrderID` int NULL,
 
 PRIMARY KEY (`CustomerID`),
 FOREIGN KEY (`OrderID`) REFERENCES Orders(OrderID),

 INDEX `CustomerID` (`CustomerID` ASC),
 INDEX `OrderID` (`OrderID` ASC)
 );
 
 





 
 
 


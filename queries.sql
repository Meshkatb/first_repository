select BookID from `Books` where AuthorID = 2;
select AuthorID from `Books` where BookID = 4;
select Royalty from `Books` where AuthorID = 2;
select BookID from `Books` where Genre = 'Action';
select BookID from `Books` where PublisherID = 4;
select EditorID from `Books` where BookID = 4;
select BookID from `Books` where EditorID = 2;
select BookID from `Orders` where OrderID = 11;

SELECT Orders.BookID FROM `Customer` INNER JOIN Orders ON Orders.OrderID=Customer.OrderID 
WHERE 
    Customer.CustomerID=3
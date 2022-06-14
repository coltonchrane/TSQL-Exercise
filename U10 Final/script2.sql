Use JoesBar
Select* From Customer/* Shows all the tables and information stored */
Select* From OrderDetail
Select * From Orders
Select*From Product
Select* From Product Supplier
Select * From Supplier
INSERT INTO /* Inserts a record */
	Customer
	VALUES('1','Colton','Chrane','555-555-5555','ctc@email.com','1234 street st','Abilene','TX','79601')
UPDATE Customers /* Edit record */
SET FName = 'Kim'
WHERE CustID = 1;
DELETE FROM Customer WHERE CustID = 1; /* Delete record */
SELECT Description,Retail From Product /* pulls types of liqour offered as well as price*/
SELECT [Order.Fname, Order.Lname, OrderDetail.OrderId, Product.Description] FROM Order FULL JOIN Product /* Creates a table of customer names and what tey order *\

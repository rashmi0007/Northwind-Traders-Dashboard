CREATE TABLE categories(categoryId INT PRIMARY KEY NOT NULL,categoryName VARCHAR(255) NOT NULL, description VARCHAR(255) NOT NULL)

CREATE TABLE shippers(shipperid INT PRIMARY KEY NOT NULL,companyName VARCHAR(255) NOT NULL)

CREATE TABLE products(productid INT PRIMARY KEY NOT NULL,productname VARCHAR(255) NOT NULL,quantityperunit VARCHAR(255) NOT NULL,unitprice
					 Numeric(8,2) NOT NULL,discontinued INT CHECK(discontinued IN ('0','1')) NOT NULL,categoryId INT NOT NULL)
					 
CREATE TABLE employees(employeeId INT PRIMARY KEY NOT NULL,employeeName VARCHAR(255) NOT NULL,title VARCHAR(255) NOT NULL,
					   city VARCHAR(155) NOT NULL,country VARCHAR(10) NOT NULL,reportsTo INT )
					   
CREATE TABLE customers(customerid VARCHAR(100) PRIMARY KEY NOT NULL,companyname VARCHAR(255) NOT NULL,contactname VARCHAR(255) NOT NULL,
					   contactTitle VARCHAR(155) NOT NULL,city VARCHAR(250) NOT NULL,country VARCHAR(250) NOT NULL)

					   
CREATE TABLE orders(orderid INT PRIMARY KEY NOT NULL,customerid VARCHAR(100) NOT NULL,employeeId INT NOT NULL,
					   orderDate DATE NOT NULL,requiredDate DATE NOT NULL,shippedDate DATE,
					shipperId INT NOT NULL,freight Numeric(8,2) NOT NULL)

CREATE TABLE order_details(orderid INT NOT NULL,productid INT NOT NULL,unitprice Numeric(8,2) NOT NULL,
						    quantity INT NOT NULL,discount NUMERIC(5,2) NOT NULL)



SELECT * FROM categories;
SELECT * FROM shippers;
SELECT * FROM products;
SELECT * FROM employees;
SELECT * FROM customers;
SELECT * FROM orders;
SELECT * FROM order_details;
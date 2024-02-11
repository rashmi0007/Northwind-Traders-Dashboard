CREATE MATERIALIZED VIEW combined_table_northwind
AS
SELECT o.orderid,o.customerid,o.employeeid,o.orderdate,o.requireddate,o.shippeddate,o.freight,od.productid,
od.unitprice AS orderplaced_unitprice,od.quantity,od.discount,css.companyname AS customerscompanyname,css.contactname,css.contacttitle,css.city AS customerscity,
css.country AS customerscountry,ps.productname,ps.quantityperunit,ps.unitprice AS current_unitprice,ps.discontinued,
ps.categoryid,cs.categoryname,cs.description,es.employeename,es.title,
es.city AS employeescity,es.country AS employeescountry,es.reportsto,ss.shipperid,ss.companyname AS shippingcompanyname
FROM orders o
INNER JOIN order_details od ON o.orderid=od.orderid
INNER JOIN employees es ON o.employeeid=es.employeeid
INNER JOIN customers css ON o.customerid=css.customerid
INNER JOIN shippers ss ON o.shipperid=ss.shipperid
INNER JOIN products ps ON od.productid=ps.productid
INNER JOIN categories cs ON ps.categoryid=cs.categoryid


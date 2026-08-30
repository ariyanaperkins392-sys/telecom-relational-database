# Telecom Relational Database

A relational telecommunications sales database designed in Microsoft Access using SQL to manage customers, companies, manufacturers, products, historical pricing, sales orders, and line items.

## Overview

This project demonstrates relational database design and SQL querying within a fictional telecommunications sales environment.

The database consists of eight related entities:

- Company
- Customer
- SalesManager
- Manufacturer
- Product
- ProductPrice
- SalesOrder
- LineItem

The design supports customer orders, manufacturer and product relationships, sales management, historical product pricing, and transactional order data.

## Technologies

- Microsoft Access
- SQL
- Relational Database Design
- Data Modeling
- Database Management

## Database Design

The database uses primary keys and foreign keys to establish relationships between customers, products, manufacturers, sales orders, line items, telecommunications companies, and sales managers.

### Historical Product Pricing

Product prices are stored separately from the Product table using the ProductPrice table.

The composite primary key consists of:

`product_no + start_date`

This allows multiple historical prices to exist for the same product without overwriting previous pricing information.

Historical prices contain an `end_date`, while the current product price uses a NULL end date.

### Transaction Price Preservation

The LineItem table contains `unit_price_at_order`.

This preserves the actual price charged during a transaction even if the product's price changes later.

## SQL Queries

The project includes SQL queries demonstrating:

- SELECT
- WHERE
- ORDER BY
- GROUP BY
- HAVING
- SUM
- COUNT
- INNER JOIN
- Multi-table queries

### GROUP BY Query

This query calculates the total number of units sold for each product.

```sql
SELECT
  product_no,
  SUM(quantity_ordered) AS total_units_sold
FROM LineItem
GROUP BY product_no;
```

### Multi-Table INNER JOIN

This query combines customer, sales order, telecommunications company, line item, and product data into a consolidated sales result.

```sql
SELECT
  SalesOrder.order_id,
  Customer.customer_name,
  Company.company_name,
  Product.product_name,
  LineItem.quantity_ordered,
  LineItem.unit_price_at_order,
  SalesOrder.order_total
FROM (((Customer
  INNER JOIN SalesOrder
    ON SalesOrder.customer_id = Customer.customer_id)
  INNER JOIN Company
    ON SalesOrder.company_name = Company.company_name)
  INNER JOIN LineItem
    ON LineItem.order_id = SalesOrder.order_id)
  INNER JOIN Product
    ON Product.product_no = LineItem.product_no;
```

## Product Price History

The ProductPrice table maintains historical and current prices for each product.

## What I Learned

This project strengthened my understanding of relational database design, SQL querying, primary and foreign keys, composite keys, referential integrity, aggregation, multi-table joins, and historical data modeling.

One of the most valuable design concepts was separating product pricing from the Product table so historical prices could be preserved rather than overwritten.

I also gained experience preserving transactional information by storing the product price associated with an order at the time of purchase.

## Future Improvements

If I were expanding this project today, I would:

- Rebuild the database using PostgreSQL
- Add indexes for frequently queried columns
- Create database views for commonly used analytical queries
- Connect the database to a REST API
- Build a frontend analytics dashboard
- Add automated testing and data validation

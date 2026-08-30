-- ==========================================
-- Telecom Relational Database
-- SQL Query Examples
-- ==========================================


-- 1. WHERE
-- Find sales orders shipping to Austin.

SELECT
  order_id,
  shipping_city,
  order_total
FROM SalesOrder
WHERE shipping_city = 'Austin';


-- 2. ORDER BY
-- Sort sales orders from highest to lowest total.

SELECT
  order_id,
  order_date,
  order_total
FROM SalesOrder
ORDER BY order_total DESC;


-- 3. GROUP BY
-- Calculate total units sold for each product.

SELECT
  product_no,
  SUM(quantity_ordered) AS total_units_sold
FROM LineItem
GROUP BY product_no;


-- 4. HAVING
-- Count orders by shipping city.

SELECT
  shipping_city,
  COUNT(order_id) AS orders_in_city
FROM SalesOrder
GROUP BY shipping_city
HAVING COUNT(order_id) >= 1;


-- 5. INNER JOIN
-- Combine customer, company, product,
-- line item, and sales order information.

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

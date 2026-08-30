CREATE TABLE Company (
  company_name TEXT(100) NOT NULL,
  company_address TEXT(200),
  company_phone TEXT(30),
  CONSTRAINT pk_company PRIMARY KEY (company_name)
);

CREATE TABLE Customer (
  customer_id TEXT(50) NOT NULL,
  customer_name TEXT(100),
  customer_phone TEXT(30),
  street TEXT(150),
  city TEXT(80),
  state TEXT(2),
  zip TEXT(10),
  CONSTRAINT pk_customer PRIMARY KEY (customer_id)
);

CREATE TABLE SalesManager (
  sales_manager_id TEXT(50) NOT NULL,
  sales_manager_name TEXT(100),
  sales_manager_phone TEXT(30),
  CONSTRAINT pk_salesmanager PRIMARY KEY (sales_manager_id)
);

CREATE TABLE Manufacturer (
  manufacturer_name TEXT(120) NOT NULL,
  manufacturer_address TEXT(200),
  manufacturer_phone TEXT(30),
  CONSTRAINT pk_manufacturer PRIMARY KEY (manufacturer_name)
);

CREATE TABLE Product (
  product_no TEXT(50) NOT NULL,
  product_name TEXT(120),
  product_description TEXT(255),
  manufacturer_name TEXT(120) NOT NULL,
  CONSTRAINT pk_product PRIMARY KEY (product_no),
  CONSTRAINT fk_product_manufacturer
    FOREIGN KEY (manufacturer_name)
    REFERENCES Manufacturer (manufacturer_name)
);

CREATE TABLE ProductPrice (
  product_no TEXT(50) NOT NULL,
  start_date DATETIME NOT NULL,
  unit_price CURRENCY NOT NULL,
  end_date DATETIME,
  CONSTRAINT pk_productprice
    PRIMARY KEY (product_no, start_date),
  CONSTRAINT fk_productprice_product
    FOREIGN KEY (product_no)
    REFERENCES Product (product_no)
);

CREATE TABLE SalesOrder (
  order_id TEXT(50) NOT NULL,
  order_date DATETIME,
  ship_date DATETIME,
  recipient_name TEXT(120),
  recipient_phone TEXT(30),
  shipping_street TEXT(150),
  shipping_city TEXT(80),
  shipping_state TEXT(2),
  shipping_zip TEXT(10),
  customer_id TEXT(50) NOT NULL,
  sales_manager_id TEXT(50) NOT NULL,
  company_name TEXT(100) NOT NULL,
  order_total CURRENCY,
  CONSTRAINT pk_salesorder PRIMARY KEY (order_id),
  CONSTRAINT fk_salesorder_customer
    FOREIGN KEY (customer_id)
    REFERENCES Customer (customer_id),
  CONSTRAINT fk_salesorder_salesmanager
    FOREIGN KEY (sales_manager_id)
    REFERENCES SalesManager (sales_manager_id),
  CONSTRAINT fk_salesorder_company
    FOREIGN KEY (company_name)
    REFERENCES Company (company_name)
);

CREATE TABLE LineItem (
  order_id TEXT(50) NOT NULL,
  product_no TEXT(50) NOT NULL,
  quantity_ordered INTEGER NOT NULL,
  unit_price_at_order CURRENCY NOT NULL,
  CONSTRAINT pk_lineitem
    PRIMARY KEY (order_id, product_no),
  CONSTRAINT fk_lineitem_order
    FOREIGN KEY (order_id)
    REFERENCES SalesOrder (order_id),
  CONSTRAINT fk_lineitem_product
    FOREIGN KEY (product_no)
    REFERENCES Product (product_no)
);

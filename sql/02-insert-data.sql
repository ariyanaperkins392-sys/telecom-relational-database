-- ==========================================
-- Telecom Relational Database
-- Sample Data Inserts
-- Microsoft Access SQL
-- ==========================================


-- ==========================================
-- 1. Company
-- ==========================================

INSERT INTO Company VALUES
('AT&T','208 S Akard St, Dallas, TX 75202','214-555-0101');

INSERT INTO Company VALUES
('Verizon','221 W 6th St, Austin, TX 78701','512-555-0102');

INSERT INTO Company VALUES
('T-Mobile','1301 Fannin St, Houston, TX 77002','713-555-0103');

INSERT INTO Company VALUES
('Cricket Wireless','600 Navarro St, San Antonio, TX 78205','210-555-0104');

INSERT INTO Company VALUES
('Boost Mobile','400 W Paisano Dr, El Paso, TX 79901','915-555-0105');


-- ==========================================
-- 2. Customer
-- ==========================================

INSERT INTO Customer VALUES
('C001','Brittany Hall','972-555-1101',
 '110 Congress Ave','Austin','TX','78701');

INSERT INTO Customer VALUES
('C002','Sasha Reed','469-555-1102',
 '200 N St Paul St','Dallas','TX','75201');

INSERT INTO Customer VALUES
('C003','Bill Carter','281-555-1103',
 '1001 Texas Ave','Houston','TX','77002');

INSERT INTO Customer VALUES
('C004','Tom Jenkins','830-555-1104',
 '300 Alamo Plaza','San Antonio','TX','78205');

INSERT INTO Customer VALUES
('C005','Caleb Morgan','956-555-1105',
 '1 Santa Fe St','El Paso','TX','79901');


-- ==========================================
-- 3. SalesManager
-- ==========================================

INSERT INTO SalesManager VALUES
('SM01','Keisha Grant','512-555-1201');

INSERT INTO SalesManager VALUES
('SM02','Marcus Reed','214-555-1202');

INSERT INTO SalesManager VALUES
('SM03','Elena Park','713-555-1203');

INSERT INTO SalesManager VALUES
('SM04','Darius Hill','210-555-1204');

INSERT INTO SalesManager VALUES
('SM05','Sofia Chen','915-555-1205');


-- ==========================================
-- 4. Manufacturer
-- ==========================================

INSERT INTO Manufacturer VALUES
('Apple','11500 Alterra Pkwy, Austin, TX 78758','512-555-2101');

INSERT INTO Manufacturer VALUES
('Samsung','500 W 2nd St, Austin, TX 78701','512-555-2102');

INSERT INTO Manufacturer VALUES
('Google','301 Congress Ave, Austin, TX 78701','512-555-2103');

INSERT INTO Manufacturer VALUES
('Motorola','100 Crescent Ct, Dallas, TX 75201','214-555-2104');

INSERT INTO Manufacturer VALUES
('OnePlus','909 Fannin St, Houston, TX 77010','713-555-2105');


-- ==========================================
-- 5. Product
-- ==========================================

INSERT INTO Product VALUES
('P001','iPhone 15','Smartphone - 128GB','Apple');

INSERT INTO Product VALUES
('P002','Galaxy S24','Smartphone - 256GB','Samsung');

INSERT INTO Product VALUES
('P003','Pixel 9','Smartphone - 128GB','Google');

INSERT INTO Product VALUES
('P004','Moto G Power','Smartphone - 128GB','Motorola');

INSERT INTO Product VALUES
('P005','OnePlus 12','Smartphone - 256GB','OnePlus');


-- ==========================================
-- 6. ProductPrice
-- ==========================================

-- Historical and current pricing for P001
INSERT INTO ProductPrice VALUES
('P001', #01/01/2025#, 749.00, #12/31/2025#);

INSERT INTO ProductPrice VALUES
('P001', #01/01/2026#, 799.00, NULL);

-- Historical and current pricing for P002
INSERT INTO ProductPrice VALUES
('P002', #01/01/2025#, 949.00, #12/31/2025#);

INSERT INTO ProductPrice VALUES
('P002', #01/01/2026#, 899.00, NULL);

-- Historical and current pricing for P003
INSERT INTO ProductPrice VALUES
('P003', #01/01/2025#, 649.00, #12/31/2025#);

INSERT INTO ProductPrice VALUES
('P003', #01/01/2026#, 699.00, NULL);

-- Historical and current pricing for P004
INSERT INTO ProductPrice VALUES
('P004', #01/01/2025#, 279.00, #12/31/2025#);

INSERT INTO ProductPrice VALUES
('P004', #01/01/2026#, 249.00, NULL);

-- Historical and current pricing for P005
INSERT INTO ProductPrice VALUES
('P005', #01/01/2025#, 799.00, #12/31/2025#);

INSERT INTO ProductPrice VALUES
('P005', #01/01/2026#, 749.00, NULL);


-- ==========================================
-- 7. SalesOrder
-- ==========================================

INSERT INTO SalesOrder VALUES
(
 'O1001',
 #02/01/2026#,
 #02/03/2026#,
 'Brittany Hall',
 '254-555-3101',
 '110 Congress Ave',
 'Austin',
 'TX',
 '78701',
 'C001',
 'SM01',
 'AT&T',
 799.00
);

INSERT INTO SalesOrder VALUES
(
 'O1002',
 #02/02/2026#,
 #02/04/2026#,
 'Sasha Reed',
 '817-555-3102',
 '200 N St Paul St',
 'Dallas',
 'TX',
 '75201',
 'C002',
 'SM02',
 'Verizon',
 899.00
);

INSERT INTO SalesOrder VALUES
(
 'O1003',
 #02/03/2026#,
 #02/05/2026#,
 'Bill Carter',
 '361-555-3103',
 '1001 Texas Ave',
 'Houston',
 'TX',
 '77002',
 'C003',
 'SM03',
 'T-Mobile',
 1398.00
);

INSERT INTO SalesOrder VALUES
(
 'O1004',
 #02/04/2026#,
 #02/06/2026#,
 'Tom Jenkins',
 '806-555-3104',
 '300 Alamo Plaza',
 'San Antonio',
 'TX',
 '78205',
 'C004',
 'SM04',
 'Cricket Wireless',
 747.00
);

INSERT INTO SalesOrder VALUES
(
 'O1005',
 #02/05/2026#,
 #02/07/2026#,
 'Caleb Morgan',
 '940-555-3105',
 '1 Santa Fe St',
 'El Paso',
 'TX',
 '79901',
 'C005',
 'SM05',
 'Boost Mobile',
 749.00
);


-- ==========================================
-- 8. LineItem
-- ==========================================

INSERT INTO LineItem VALUES
('O1001','P001',1,799.00);

INSERT INTO LineItem VALUES
('O1002','P002',1,899.00);

INSERT INTO LineItem VALUES
('O1003','P003',2,699.00);

INSERT INTO LineItem VALUES
('O1004','P004',3,249.00);

INSERT INTO LineItem VALUES
('O1005','P005',1,749.00);

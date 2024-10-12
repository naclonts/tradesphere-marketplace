-- Insert Companies
INSERT INTO companies (company_id, company_name, company_type, industry) VALUES
(1, 'Alpha Tech', 'buyer', 'Technology'),
(2, 'Beta Innovations', 'buyer', 'Healthcare'),
(3, 'Gamma Solutions', 'buyer', 'Finance'),
(4, 'Delta Enterprises', 'buyer', 'Retail'),
(5, 'Epsilon Logistics', 'buyer', 'Transportation'),
(6, 'Zeta Products', 'seller', 'Manufacturing'),
(7, 'Eta Goods', 'seller', 'Electronics'),
(8, 'Theta Services', 'seller', 'Consulting'),
(9, 'Iota Supplies', 'seller', 'Office Supplies'),
(10, 'Kappa Designs', 'both', 'Fashion');

-- Insert Users
INSERT INTO users (user_id, company_id, first_name, last_name, email, password_hash, role) VALUES
(1, 1, 'John', 'Doe', 'john.doe@alphatech.com', 'hashedpassword1', 'buyer'),
(2, 2, 'Jane', 'Smith', 'jane.smith@betainnovations.com', 'hashedpassword2', 'buyer'),
(3, 3, 'Mike', 'Johnson', 'mike.johnson@gammasolutions.com', 'hashedpassword3', 'buyer'),
(4, 4, 'Emily', 'Davis', 'emily.davis@deltaenterprises.com', 'hashedpassword4', 'buyer'),
(5, 5, 'Chris', 'Lee', 'chris.lee@epsilonlogistics.com', 'hashedpassword5', 'buyer'),
(6, 6, 'Sarah', 'Wilson', 'sarah.wilson@zetaproducts.com', 'hashedpassword6', 'seller'),
(7, 7, 'David', 'Brown', 'david.brown@etagoods.com', 'hashedpassword7', 'seller'),
(8, 8, 'Laura', 'Taylor', 'laura.taylor@thetservices.com', 'hashedpassword8', 'seller'),
(9, 9, 'Daniel', 'Moore', 'daniel.moore@iot Supplies.com', 'hashedpassword9', 'seller'),
(10, 10, 'Olivia', 'White', 'olivia.white@kappadesigns.com', 'hashedpassword10', 'seller');

-- Insert Addresses
INSERT INTO addresses (company_id, address_type, street_address, city, state, postal_code, country) VALUES
(1, 'billing', '123 Alpha St', 'Denver', 'CO', '80202', 'USA'),
(1, 'shipping', '456 Alpha Ave', 'Denver', 'CO', '80202', 'USA'),
(2, 'billing', '789 Beta Rd', 'Boulder', 'CO', '80301', 'USA'),
(2, 'shipping', '321 Beta Blvd', 'Boulder', 'CO', '80301', 'USA'),
(3, 'billing', '654 Gamma Ln', 'Aurora', 'CO', '80012', 'USA'),
(3, 'shipping', '987 Gamma Cir', 'Aurora', 'CO', '80012', 'USA'),
(4, 'billing', '147 Delta Dr', 'Fort Collins', 'CO', '80521', 'USA'),
(4, 'shipping', '258 Delta Ct', 'Fort Collins', 'CO', '80521', 'USA'),
(5, 'billing', '369 Epsilon Pkwy', 'Greeley', 'CO', '80631', 'USA'),
(5, 'shipping', '159 Epsilon Ter', 'Greeley', 'CO', '80631', 'USA'),
(6, 'billing', '753 Zeta Blvd', 'Pueblo', 'CO', '81003', 'USA'),
(6, 'shipping', '852 Zeta Rd', 'Pueblo', 'CO', '81003', 'USA'),
(7, 'billing', '951 Eta Ave', 'Colorado Springs', 'CO', '80903', 'USA'),
(7, 'shipping', '159 Eta St', 'Colorado Springs', 'CO', '80903', 'USA'),
(8, 'billing', '753 Theta Dr', 'Littleton', 'CO', '80120', 'USA'),
(8, 'shipping', '852 Theta Ct', 'Littleton', 'CO', '80120', 'USA'),
(9, 'billing', '159 Iota Pkwy', 'Broomfield', 'CO', '80020', 'USA'),
(9, 'shipping', '258 Iota Blvd', 'Broomfield', 'CO', '80020', 'USA'),
(10, 'billing', '369 Kappa Rd', 'Highlands Ranch', 'CO', '80126', 'USA'),
(10, 'shipping', '147 Kappa St', 'Highlands Ranch', 'CO', '80126', 'USA');

-- Insert Categories
INSERT INTO categories (category_name) VALUES
('Electronics'),
('Office Supplies'),
('Fashion'),
('Healthcare'),
('Technology'),
('Manufacturing'),
('Consulting');

-- Insert Products
INSERT INTO products (seller_company_id, product_name, description, price, currency, is_active) VALUES
(6, 'Laptop', 'High-performance laptop', 999.99, 'USD', TRUE),
(6, 'Smartphone', 'Latest model smartphone', 799.99, 'USD', TRUE),
(7, 'Office Chair', 'Ergonomic office chair', 199.99, 'USD', TRUE),
(7, 'Printer', 'High-quality laser printer', 299.99, 'USD', TRUE),
(8, 'Consultation Service', 'Expert consulting service', 150.00, 'USD', TRUE),
(9, 'Notebook', 'High-quality writing notebook', 10.99, 'USD', TRUE),
(10, 'Designer Shoes', 'Trendy fashion shoes', 129.99, 'USD', TRUE),
(10, 'Casual Shirt', 'Comfortable casual shirt', 39.99, 'USD', TRUE);
-- Insert Additional Products
INSERT INTO products (seller_company_id, product_name, description, price, currency, is_active) VALUES
(6, 'Wireless Mouse', 'Ergonomic wireless mouse with customizable buttons', 29.99, 'USD', TRUE),
(6, 'Mechanical Keyboard', 'Mechanical keyboard with RGB backlighting', 89.99, 'USD', TRUE),
(7, '4K Monitor', 'Ultra HD monitor with HDR support', 399.99, 'USD', TRUE),
(7, 'HDMI Cable', 'High-speed HDMI cable, 6 feet', 12.99, 'USD', TRUE),
(8, 'Projector', 'Portable mini projector for presentations', 199.99, 'USD', TRUE),
(8, 'Whiteboard', 'Magnetic whiteboard for office use', 49.99, 'USD', TRUE),
(9, 'Desk Organizer', 'Wooden desk organizer with compartments', 19.99, 'USD', TRUE),
(9, 'Shredder', 'High-capacity paper shredder', 150.00, 'USD', TRUE),
(10, 'Backpack', 'Stylish laptop backpack with multiple compartments', 79.99, 'USD', TRUE),
(10, 'Wristwatch', 'Elegant wristwatch for formal occasions', 249.99, 'USD', TRUE),
(6, 'USB-C Hub', 'Multi-port USB-C hub with HDMI output', 39.99, 'USD', TRUE),
(7, 'Office Plants', 'Live plants for office decoration', 25.00, 'USD', TRUE),
(8, 'Bluetooth Headphones', 'Noise-canceling Bluetooth headphones', 149.99, 'USD', TRUE),
(9, 'Power Bank', 'Portable power bank with fast charging', 34.99, 'USD', TRUE),
(10, 'Screen Cleaner', 'Specialized cleaner for screens and monitors', 9.99, 'USD', TRUE),
(6, 'External Hard Drive', '1TB external hard drive for backups', 59.99, 'USD', TRUE),
(7, 'Laptop Stand', 'Adjustable laptop stand for better ergonomics', 49.99, 'USD', TRUE),
(8, 'Smartwatch', 'Feature-rich smartwatch for fitness tracking', 199.99, 'USD', TRUE),
(9, 'Video Conferencing Camera', 'HD camera for video calls', 129.99, 'USD', TRUE),
(10, 'Digital Thermostat', 'Smart thermostat for energy efficiency', 199.99, 'USD', TRUE);


-- Insert Product Categories
INSERT INTO product_categories (product_id, category_id) VALUES
(1, 5),  -- Laptop -> Technology
(2, 5),  -- Smartphone -> Technology
(3, 2),  -- Office Chair -> Office Supplies
(4, 2),  -- Printer -> Office Supplies
(5, 7),  -- Consultation Service -> Consulting
(6, 1),  -- Notebook -> Electronics
(7, 3),  -- Designer Shoes -> Fashion
(8, 3);  -- Casual Shirt -> Fashion

-- Insert Inventory
INSERT INTO inventory (product_id, quantity, warehouse_location) VALUES
(1, 50, 'Warehouse A'),
(2, 100, 'Warehouse A'),
(3, 75, 'Warehouse B'),
(4, 30, 'Warehouse B'),
(5, 10, 'Warehouse C'),
(6, 150, 'Warehouse C'),
(7, 60, 'Warehouse D'),
(8, 120, 'Warehouse D');

-- Insert Orders
INSERT INTO orders (order_id, buyer_company_id, seller_company_id, order_date, status, total_amount, currency) VALUES
(1, 1, 6, '2024-09-01', 'confirmed', 1200.00, 'USD'),
(2, 1, 7, '2024-09-02', 'shipped', 400.00, 'USD'),
(3, 2, 8, '2024-09-03', 'delivered', 600.00, 'USD'),
(4, 2, 9, '2024-09-04', 'pending', 150.00, 'USD'),
(5, 3, 10, '2024-09-05', 'confirmed', 170.00, 'USD'),
(6, 4, 6, '2024-09-06', 'shipped', 800.00, 'USD'),
(7, 5, 7, '2024-09-07', 'delivered', 300.00, 'USD'),
(8, 1, 8, '2024-09-08', 'pending', 450.00, 'USD'),
(9, 3, 9, '2024-09-09', 'confirmed', 950.00, 'USD'),
(10, 4, 10, '2024-09-10', 'shipped', 50.00, 'USD'),
(11, 5, 6, '2024-09-11', 'confirmed', 300.00, 'USD'),
(12, 1, 7, '2024-09-12', 'shipped', 400.00, 'USD'),
(13, 2, 8, '2024-09-13', 'pending', 210.00, 'USD'),
(14, 3, 9, '2024-09-14', 'confirmed', 190.00, 'USD'),
(15, 4, 10, '2024-09-15', 'shipped', 830.00, 'USD'),
(16, 5, 6, '2024-09-16', 'delivered', 720.00, 'USD'),
(17, 1, 7, '2024-09-17', 'pending', 620.00, 'USD'),
(18, 2, 8, '2024-09-18', 'shipped', 340.00, 'USD'),
(19, 3, 9, '2024-09-19', 'delivered', 270.00, 'USD'),
(20, 4, 10, '2024-09-20', 'pending', 580.00, 'USD'),
(21, 5, 6, '2024-09-21', 'confirmed', 720.00, 'USD'),
(22, 1, 7, '2024-09-22', 'shipped', 620.00, 'USD'),
(23, 2, 8, '2024-09-23', 'pending', 210.00, 'USD'),
(24, 3, 9, '2024-09-24', 'confirmed', 190.00, 'USD'),
(25, 4, 10, '2024-09-25', 'shipped', 830.00, 'USD'),
(26, 5, 6, '2024-09-26', 'delivered', 1200.00, 'USD'),
(27, 1, 7, '2024-09-27', 'confirmed', 450.00, 'USD'),
(28, 2, 8, '2024-09-28', 'shipped', 340.00, 'USD'),
(29, 3, 9, '2024-09-29', 'delivered', 270.00, 'USD'),
(30, 4, 10, '2024-09-30', 'pending', 580.00, 'USD'),
(31, 5, 6, '2024-10-01', 'confirmed', 720.00, 'USD'),
(32, 1, 7, '2024-10-02', 'shipped', 620.00, 'USD'),
(33, 2, 8, '2024-10-03', 'pending', 210.00, 'USD'),
(34, 3, 9, '2024-10-04', 'confirmed', 190.00, 'USD'),
(35, 4, 10, '2024-10-05', 'shipped', 830.00, 'USD'),
(36, 5, 6, '2024-10-06', 'delivered', 1200.00, 'USD'),
(37, 1, 7, '2024-10-07', 'confirmed', 450.00, 'USD'),
(38, 2, 8, '2024-10-08', 'shipped', 340.00, 'USD'),
(39, 3, 9, '2024-10-09', 'delivered', 270.00, 'USD'),
(40, 4, 10, '2024-10-10', 'pending', 580.00, 'USD'),
(41, 5, 6, '2024-10-11', 'confirmed', 720.00, 'USD'),
(42, 1, 7, '2024-10-12', 'shipped', 620.00, 'USD'),
(43, 2, 8, '2024-10-13', 'pending', 210.00, 'USD'),
(44, 3, 9, '2024-10-14', 'confirmed', 190.00, 'USD'),
(45, 4, 10, '2024-10-15', 'shipped', 830.00, 'USD'),
(46, 5, 6, '2024-10-16', 'delivered', 1200.00, 'USD'),
(47, 1, 7, '2024-10-17', 'confirmed', 450.00, 'USD'),
(48, 2, 8, '2024-10-18', 'shipped', 340.00, 'USD'),
(49, 3, 9, '2024-10-19', 'delivered', 270.00, 'USD'),
(50, 4, 10, '2024-10-20', 'pending', 580.00, 'USD');

-- Insert Order Items
INSERT INTO order_items (order_id, product_id, quantity, unit_price, total_price) VALUES
(1, 1, 1, 999.99, 999.99),
(1, 2, 1, 799.99, 799.99),
(2, 3, 1, 199.99, 199.99),
(2, 4, 1, 299.99, 299.99),
(3, 5, 1, 150.00, 150.00),
(3, 6, 1, 10.99, 10.99),
(4, 7, 1, 129.99, 129.99),
(5, 8, 1, 39.99, 39.99),
(6, 1, 1, 999.99, 999.99),
(7, 2, 1, 799.99, 799.99),
(8, 3, 1, 199.99, 199.99),
(9, 4, 1, 299.99, 299.99),
(10, 5, 1, 150.00, 150.00),
(11, 6, 1, 10.99, 10.99),
(12, 7, 1, 129.99, 129.99),
(13, 8, 1, 39.99, 39.99),
(14, 1, 1, 999.99, 999.99),
(15, 2, 1, 799.99, 799.99),
(16, 3, 1, 199.99, 199.99),
(17, 4, 1, 299.99, 299.99),
(18, 5, 1, 150.00, 150.00),
(19, 6, 1, 10.99, 10.99),
(20, 7, 1, 129.99, 129.99),
(21, 8, 1, 39.99, 39.99),
(22, 1, 1, 999.99, 999.99),
(23, 2, 1, 799.99, 799.99),
(24, 3, 1, 199.99, 199.99),
(25, 4, 1, 299.99, 299.99),
(26, 5, 1, 150.00, 150.00),
(27, 6, 1, 10.99, 10.99),
(28, 7, 1, 129.99, 129.99),
(29, 8, 1, 39.99, 39.99),
(30, 1, 1, 999.99, 999.99),
(31, 2, 1, 799.99, 799.99),
(32, 3, 1, 199.99, 199.99),
(33, 4, 1, 299.99, 299.99),
(34, 5, 1, 150.00, 150.00),
(35, 6, 1, 10.99, 10.99),
(36, 7, 1, 129.99, 129.99),
(37, 8, 1, 39.99, 39.99),
(38, 1, 1, 999.99, 999.99),
(39, 2, 1, 799.99, 799.99),
(40, 3, 1, 199.99, 199.99),
(41, 4, 1, 299.99, 299.99),
(42, 5, 1, 150.00, 150.00),
(43, 6, 1, 10.99, 10.99),
(44, 7, 1, 129.99, 129.99),
(45, 8, 1, 39.99, 39.99),
(46, 1, 1, 999.99, 999.99),
(47, 2, 1, 799.99, 799.99),
(48, 3, 1, 199.99, 199.99),
(49, 4, 1, 299.99, 299.99),
(50, 5, 1, 150.00, 150.00);

-- Insert Invoices
INSERT INTO invoices (invoice_id, order_id, invoice_date, due_date, status, total_amount, currency) VALUES
(1, 1, '2024-09-01', '2024-09-15', 'paid', 1200.00, 'USD'),
(2, 2, '2024-09-02', '2024-09-16', 'paid', 400.00, 'USD'),
(3, 3, '2024-09-03', '2024-09-17', 'paid', 600.00, 'USD'),
(4, 4, '2024-09-04', '2024-09-18', 'unpaid', 150.00, 'USD'),
(5, 5, '2024-09-05', '2024-09-19', 'paid', 170.00, 'USD'),
(6, 6, '2024-09-06', '2024-09-20', 'paid', 800.00, 'USD'),
(7, 7, '2024-09-07', '2024-09-21', 'paid', 300.00, 'USD'),
(8, 8, '2024-09-08', '2024-09-22', 'unpaid', 450.00, 'USD'),
(9, 9, '2024-09-09', '2024-09-23', 'paid', 950.00, 'USD'),
(10, 10, '2024-09-10', '2024-09-24', 'paid', 50.00, 'USD'),
(11, 11, '2024-09-11', '2024-09-25', 'paid', 300.00, 'USD'),
(12, 12, '2024-09-12', '2024-09-26', 'paid', 400.00, 'USD'),
(13, 13, '2024-09-13', '2024-09-27', 'paid', 600.00, 'USD'),
(14, 14, '2024-09-14', '2024-09-28', 'unpaid', 200.00, 'USD'),
(15, 15, '2024-09-15', '2024-09-29', 'paid', 300.00, 'USD'),
(16, 16, '2024-09-16', '2024-09-30', 'paid', 150.00, 'USD'),
(17, 17, '2024-09-17', '2024-10-01', 'unpaid', 180.00, 'USD'),
(18, 18, '2024-09-18', '2024-10-02', 'paid', 270.00, 'USD'),
(19, 19, '2024-09-19', '2024-10-03', 'paid', 400.00, 'USD'),
(20, 20, '2024-09-20', '2024-10-04', 'unpaid', 500.00, 'USD'),
(21, 21, '2024-09-21', '2024-10-05', 'paid', 600.00, 'USD'),
(22, 22, '2024-09-22', '2024-10-06', 'paid', 700.00, 'USD'),
(23, 23, '2024-09-23', '2024-10-07', 'paid', 800.00, 'USD'),
(24, 24, '2024-09-24', '2024-10-08', 'unpaid', 200.00, 'USD'),
(25, 25, '2024-09-25', '2024-10-09', 'paid', 900.00, 'USD'),
(26, 26, '2024-09-26', '2024-10-10', 'unpaid', 210.00, 'USD'),
(27, 27, '2024-09-27', '2024-10-11', 'paid', 290.00, 'USD'),
(28, 28, '2024-09-28', '2024-10-12', 'paid', 350.00, 'USD'),
(29, 29, '2024-09-29', '2024-10-13', 'unpaid', 240.00, 'USD'),
(30, 30, '2024-09-30', '2024-10-14', 'paid', 600.00, 'USD'),
(31, 31, '2024-10-01', '2024-10-15', 'paid', 720.00, 'USD');

-- Insert Order Items
INSERT INTO order_items (order_id, product_id, quantity, unit_price, total_price) VALUES
(1, 1, 1, 999.99, 999.99),
(1, 2, 1, 799.99, 799.99),
(2, 3, 1, 199.99, 199.99),
(2, 4, 1, 299.99, 299.99),
(3, 5, 1, 150.00, 150.00),
(3, 6, 1, 10.99, 10.99),
(4, 7, 1, 129.99, 129.99),
(5, 8, 1, 39.99, 39.99),
(6, 1, 1, 999.99, 999.99),
(7, 2, 1, 799.99, 799.99),
(8, 3, 1, 199.99, 199.99),
(9, 4, 1, 299.99, 299.99),
(10, 5, 1, 150.00, 150.00),
(11, 6, 1, 10.99, 10.99),
(12, 7, 1, 129.99, 129.99),
(13, 8, 1, 39.99, 39.99),
(14, 1, 1, 999.99, 999.99),
(15, 2, 1, 799.99, 799.99),
(16, 3, 1, 199.99, 199.99),
(17, 4, 1, 299.99, 299.99),
(18, 5, 1, 150.00, 150.00),
(19, 6, 1, 10.99, 10.99),
(20, 7, 1, 129.99, 129.99),
(21, 8, 1, 39.99, 39.99),
(22, 1, 1, 999.99, 999.99),
(23, 2, 1, 799.99, 799.99),
(24, 3, 1, 199.99, 199.99),
(25, 4, 1, 299.99, 299.99),
(26, 5, 1, 150.00, 150.00),
(27, 6, 1, 10.99, 10.99),
(28, 7, 1, 129.99, 129.99),
(29, 8, 1, 39.99, 39.99),
(30, 1, 1, 999.99, 999.99),
(31, 2, 1, 799.99, 799.99),
(32, 3, 1, 199.99, 199.99),
(33, 4, 1, 299.99, 299.99),
(34, 5, 1, 150.00, 150.00),
(35, 6, 1, 10.99, 10.99),
(36, 7, 1, 129.99, 129.99),
(37, 8, 1, 39.99, 39.99),
(38, 1, 1, 999.99, 999.99),
(39, 2, 1, 799.99, 799.99),
(40, 3, 1, 199.99, 199.99),
(41, 4, 1, 299.99, 299.99),
(42, 5, 1, 150.00, 150.00),
(43, 6, 1, 10.99, 10.99),
(44, 7, 1, 129.99, 129.99),
(45, 8, 1, 39.99, 39.99),
(46, 1, 1, 999.99, 999.99),
(47, 2, 1, 799.99, 799.99),
(48, 3, 1, 199.99, 199.99),
(49, 4, 1, 299.99, 299.99),
(50, 5, 1, 150.00, 150.00);


-- Insert Payments
INSERT INTO payments (payment_id, invoice_id, payment_date, amount_paid, payment_method, transaction_id) VALUES
(1, 1, '2024-09-10', 1200.00, 'Credit Card', 'TXN1001'),
(2, 2, '2024-09-15', 400.00, 'Bank Transfer', 'TXN1002'),
(3, 3, '2024-09-20', 600.00, 'PayPal', 'TXN1003'),
(5, 5, '2024-09-10', 170.00, 'Credit Card', 'TXN1005'),
(6, 6, '2024-09-20', 800.00, 'Bank Transfer', 'TXN1006'),
(7, 7, '2024-09-15', 300.00, 'PayPal', 'TXN1007'),
(9, 9, '2024-09-25', 950.00, 'Credit Card', 'TXN1009'),
(10, 10, '2024-09-15', 50.00, 'Bank Transfer', 'TXN1010'),
(11, 11, '2024-09-20', 300.00, 'PayPal', 'TXN1011'),
(12, 12, '2024-09-25', 400.00, 'Credit Card', 'TXN1012'),
(13, 13, '2024-09-30', 600.00, 'Bank Transfer', 'TXN1013'),
(15, 15, '2024-10-01', 300.00, 'PayPal', 'TXN1015'),
(16, 16, '2024-10-01', 150.00, 'Credit Card', 'TXN1016'),
(18, 18, '2024-10-02', 270.00, 'Bank Transfer', 'TXN1018'),
(19, 19, '2024-10-02', 400.00, 'PayPal', 'TXN1019'),
(21, 21, '2024-10-05', 600.00, 'Credit Card', 'TXN1021'),
(22, 22, '2024-10-06', 700.00, 'Bank Transfer', 'TXN1022'),
(23, 23, '2024-10-07', 800.00, 'PayPal', 'TXN1023'),
(25, 25, '2024-10-09', 900.00, 'Credit Card', 'TXN1025'),
(26, 26, '2024-10-05', 210.00, 'PayPal', 'TXN1026'),
(27, 27, '2024-10-11', 290.00, 'Bank Transfer', 'TXN1027'),
(28, 28, '2024-10-12', 350.00, 'Credit Card', 'TXN1028'),
(30, 30, '2024-10-14', 600.00, 'PayPal', 'TXN1030'),
(31, 31, '2024-10-15', 720.00, 'Credit Card', 'TXN1031');


-- Insert Shipments
INSERT INTO shipments (shipment_id, order_id, shipment_date, delivery_date, carrier, tracking_number, status) VALUES
(1, 1, '2024-09-02', '2024-09-05', 'FedEx', 'FDX123456789', 'delivered'),
(2, 2, '2024-09-03', '2024-09-06', 'UPS', 'UPS987654321', 'delivered'),
(3, 3, '2024-09-04', '2024-09-07', 'DHL', 'DHL112233445', 'delivered'),
(4, 4, NULL, NULL, NULL, NULL, 'pending'), -- Order 4 is pending, no shipment
(5, 5, '2024-09-06', '2024-09-09', 'FedEx', 'FDX223344556', 'delivered'),
(6, 6, '2024-09-07', '2024-09-10', 'UPS', 'UPS334455667', 'delivered'),
(7, 7, '2024-09-08', '2024-09-11', 'DHL', 'DHL445566778', 'delivered'),
(8, 8, NULL, NULL, NULL, NULL, 'pending'), -- Order 8 is pending, no shipment
(9, 9, '2024-09-10', '2024-09-13', 'FedEx', 'FDX556677889', 'delivered'),
(10, 10, '2024-09-11', '2024-09-14', 'UPS', 'UPS667788990', 'delivered'),
(11, 11, '2024-09-12', '2024-09-15', 'DHL', 'DHL778899001', 'delivered'),
(12, 12, '2024-09-13', '2024-09-16', 'FedEx', 'FDX998877665', 'delivered'),
(13, 13, NULL, NULL, NULL, NULL, 'pending'), -- Order 13 is pending, no shipment
(14, 14, '2024-09-15', '2024-09-18', 'UPS', 'UPS223344556', 'shipped'),
(15, 15, '2024-09-16', '2024-09-19', 'DHL', 'DHL554433221', 'shipped'),
(16, 16, '2024-09-17', '2024-09-20', 'FedEx', 'FDX332211445', 'shipped'),
(17, 17, NULL, NULL, NULL, NULL, 'pending'), -- Order 17 is pending, no shipment
(18, 18, '2024-09-18', '2024-09-21', 'UPS', 'UPS445566778', 'shipped'),
(19, 19, '2024-09-19', '2024-09-22', 'DHL', 'DHL223344556', 'shipped'),
(20, 20, NULL, NULL, NULL, NULL, 'pending'), -- Order 20 is pending, no shipment
(21, 21, '2024-09-21', '2024-09-24', 'FedEx', 'FDX665544332', 'shipped'),
(22, 22, '2024-09-22', '2024-09-25', 'UPS', 'UPS998877665', 'shipped'),
(23, 23, '2024-09-23', '2024-09-26', 'DHL', 'DHL332211445', 'shipped'),
(24, 24, NULL, NULL, NULL, NULL, 'pending'), -- Order 24 is pending, no shipment
(25, 25, '2024-09-25', '2024-09-28', 'FedEx', 'FDX998877665', 'shipped'),
(26, 26, '2024-09-26', '2024-09-29', 'UPS', 'UPS998877665', 'shipped'),
(27, 27, '2024-09-27', '2024-09-30', 'DHL', 'DHL998877665', 'shipped'),
(28, 28, NULL, NULL, NULL, NULL, 'pending'), -- Order 28 is pending, no shipment
(29, 29, '2024-09-29', '2024-10-02', 'FedEx', 'FDX998877665', 'shipped'),
(30, 30, '2024-09-30', '2024-10-03', 'UPS', 'UPS998877665', 'shipped'),
(31, 31, '2024-10-01', '2024-10-04', 'DHL', 'DHL998877665', 'shipped'),
(32, 32, '2024-10-02', '2024-10-05', 'FedEx', 'FDX998877665', 'shipped'),
(33, 33, NULL, NULL, NULL, NULL, 'pending'), -- Order 33 is pending, no shipment
(34, 34, '2024-10-04', '2024-10-08', 'UPS', 'UPS998877665', 'shipped'),
(35, 35, '2024-10-05', '2024-10-09', 'DHL', 'DHL998877665', 'shipped'),
(36, 36, '2024-10-06', '2024-10-10', 'FedEx', 'FDX998877665', 'shipped'),
(37, 37, '2024-10-07', '2024-10-11', 'UPS', 'UPS998877665', 'shipped'),
(38, 38, '2024-10-08', '2024-10-12', 'DHL', 'DHL998877665', 'shipped'),
(39, 39, NULL, NULL, NULL, NULL, 'pending'), -- Order 39 is pending, no shipment
(40, 40, '2024-10-10', '2024-10-15', 'FedEx', 'FDX998877665', 'shipped'),
(41, 41, '2024-10-11', '2024-10-16', 'UPS', 'UPS998877665', 'shipped'),
(42, 42, '2024-10-12', '2024-10-17', 'DHL', 'DHL998877665', 'shipped'),
(43, 43, NULL, NULL, NULL, NULL, 'pending'), -- Order 43 is pending, no shipment
(44, 44, '2024-10-14', '2024-10-19', 'FedEx', 'FDX998877665', 'shipped'),
(45, 45, '2024-10-15', '2024-10-20', 'UPS', 'UPS998877665', 'shipped'),
(46, 46, '2024-10-16', '2024-10-21', 'DHL', 'DHL998877665', 'shipped'),
(47, 47, '2024-10-17', '2024-10-22', 'FedEx', 'FDX998877665', 'shipped'),
(48, 48, '2024-10-18', '2024-10-23', 'UPS', 'UPS998877665', 'shipped'),
(49, 49, '2024-10-19', '2024-10-24', 'DHL', 'DHL998877665', 'shipped'),
(50, 50, NULL, NULL, NULL, NULL, 'pending'); -- Order 50 is pending, no shipment

-- Insert Reviews
INSERT INTO reviews (review_id, product_id, user_id, rating, comment, review_date) VALUES
(1, 1, 1, 5, 'Excellent laptop, very fast and reliable.', '2024-09-06'),
(2, 2, 2, 4, 'Smartphone has great features but battery life could be better.', '2024-09-07'),
(3, 3, 3, 5, 'Ergonomic chair is comfortable for long hours.', '2024-09-08'),
(4, 4, 4, 4, 'Printer works great, easy setup.', '2024-09-09'),
(5, 5, 5, 5, 'Consultation service was helpful and insightful.', '2024-09-10'),
(6, 6, 6, 4, 'Notebook quality is top-notch.', '2024-09-11'),
(7, 7, 7, 3, 'Designer shoes are stylish but sizing was inconsistent.', '2024-09-12'),
(8, 8, 8, 4, 'Casual shirt is comfortable and fits well.', '2024-09-13'),
(9, 9, 9, 5, 'Great office supplies, will order again!', '2024-09-14'),
(10, 10, 10, 4, 'Good quality shoes, but a bit pricey.', '2024-09-15');

-- Insert Messages
INSERT INTO messages (message_id, sender_user_id, receiver_user_id, subject, body, sent_at) VALUES
(1, 1, 6, 'Order Inquiry', 'Hi, I have a question about my recent order.', '2024-10-01'),
(2, 2, 7, 'Shipping Delay', 'My shipment is delayed. Can you provide an update?', '2024-10-02'),
(3, 3, 8, 'Product Availability', 'Is the laptop still available in stock?', '2024-10-03'),
(4, 4, 9, 'Invoice Issue', 'There seems to be an issue with my invoice.', '2024-10-04'),
(5, 5, 10, 'Feedback', 'Great service! Looking forward to more collaborations.', '2024-10-05');



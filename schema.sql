-- companies table
CREATE TABLE companies (
    company_id SERIAL PRIMARY KEY,
    company_name VARCHAR(100) NOT NULL,
    company_type VARCHAR(10) CHECK (company_type IN ('buyer', 'seller', 'both')) NOT NULL,
    industry VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- users table 
CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    company_id INTEGER NOT NULL REFERENCES companies(company_id),
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    role VARCHAR(20) CHECK (role IN ('buyer', 'seller', 'admin')) NOT NULL,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- addresses table
CREATE TABLE addresses (
    address_id SERIAL PRIMARY KEY,
    company_id INTEGER NOT NULL REFERENCES companies(company_id),
    address_type VARCHAR(10) CHECK (address_type IN ('billing', 'shipping', 'both')) NOT NULL,
    street_address VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL,
    state VARCHAR(50),
    postal_code VARCHAR(20),
    country VARCHAR(50) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- categories table
CREATE TABLE categories (
    category_id SERIAL PRIMARY KEY,
    category_name VARCHAR(50) UNIQUE NOT NULL,
    parent_category_id INTEGER REFERENCES categories(category_id)
);

-- products table 
CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    seller_company_id INTEGER NOT NULL REFERENCES companies(company_id),
    product_name VARCHAR(100) NOT NULL,
    description TEXT,
    price DECIMAL(12, 2) NOT NULL,
    currency VARCHAR(3) DEFAULT 'USD',
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- product_categories table (many-to-many relationship between products and categories)
CREATE TABLE product_categories (
    product_id INTEGER NOT NULL REFERENCES products(product_id),
    category_id INTEGER NOT NULL REFERENCES categories(category_id),
    PRIMARY KEY (product_id, category_id)
);

-- inventory table 
CREATE TABLE inventory (
    inventory_id SERIAL PRIMARY KEY,
    product_id INTEGER NOT NULL REFERENCES products(product_id),
    quantity INTEGER NOT NULL,
    warehouse_location VARCHAR(100),
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- orders table 
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    buyer_company_id INTEGER NOT NULL REFERENCES companies(company_id),
    seller_company_id INTEGER NOT NULL REFERENCES companies(company_id),
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(20) CHECK (status IN ('pending', 'confirmed', 'shipped', 'delivered', 'cancelled')) NOT NULL,
    total_amount DECIMAL(12, 2) NOT NULL,
    currency VARCHAR(3) DEFAULT 'USD',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- order_items table
CREATE TABLE order_items (
    order_item_id SERIAL PRIMARY KEY,
    order_id INTEGER NOT NULL REFERENCES orders(order_id),
    product_id INTEGER NOT NULL REFERENCES products(product_id),
    quantity INTEGER NOT NULL,
    unit_price DECIMAL(12, 2) NOT NULL,
    total_price DECIMAL(12, 2) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- invoices table 
CREATE TABLE invoices (
    invoice_id SERIAL PRIMARY KEY,
    order_id INTEGER NOT NULL REFERENCES orders(order_id),
    invoice_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    due_date TIMESTAMP NOT NULL,
    status VARCHAR(20) CHECK (status IN ('unpaid', 'paid', 'overdue')) NOT NULL,
    total_amount DECIMAL(12, 2) NOT NULL,
    currency VARCHAR(3) DEFAULT 'USD',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- payments table 
CREATE TABLE payments (
    payment_id SERIAL PRIMARY KEY,
    invoice_id INTEGER NOT NULL REFERENCES invoices(invoice_id),
    payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    amount_paid DECIMAL(12, 2) NOT NULL,
    payment_method VARCHAR(50) NOT NULL,
    transaction_id VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- shipments table
CREATE TABLE shipments (
    shipment_id SERIAL PRIMARY KEY,
    order_id INTEGER NOT NULL REFERENCES orders(order_id),
    shipment_date TIMESTAMP,
    delivery_date TIMESTAMP,
    carrier VARCHAR(50),
    tracking_number VARCHAR(100),
    status VARCHAR(20) CHECK (status IN ('pending', 'shipped', 'in_transit', 'delivered', 'returned')) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- reviews table 
CREATE TABLE reviews (
    review_id SERIAL PRIMARY KEY,
    product_id INTEGER NOT NULL REFERENCES products(product_id),
    user_id INTEGER NOT NULL REFERENCES users(user_id),
    rating INTEGER CHECK (rating BETWEEN 1 AND 5) NOT NULL,
    comment TEXT,
    review_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- messages table 
CREATE TABLE messages (
    message_id SERIAL PRIMARY KEY,
    sender_user_id INTEGER NOT NULL REFERENCES users(user_id),
    receiver_user_id INTEGER NOT NULL REFERENCES users(user_id),
    subject VARCHAR(100),
    body TEXT NOT NULL,
    sent_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    is_read BOOLEAN DEFAULT FALSE
);


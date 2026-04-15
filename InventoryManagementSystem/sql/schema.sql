-- Inventory Management System Database Schema
-- Run this script in MySQL to set up the database

CREATE DATABASE IF NOT EXISTS inventory_db;
USE inventory_db;

CREATE TABLE IF NOT EXISTS products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    quantity INT NOT NULL DEFAULT 0,
    price DECIMAL(10, 2) NOT NULL DEFAULT 0.00,
    description VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Sample data
INSERT INTO products (name, category, quantity, price, description) VALUES
('Laptop', 'Electronics', 25, 899.99, 'High performance laptop with 16GB RAM'),
('Wireless Mouse', 'Electronics', 150, 29.99, 'Ergonomic wireless mouse'),
('Office Chair', 'Furniture', 40, 249.99, 'Adjustable ergonomic office chair'),
('Notebook', 'Stationery', 500, 4.99, 'A4 size ruled notebook - 200 pages'),
('Printer', 'Electronics', 15, 349.99, 'All-in-one color laser printer');

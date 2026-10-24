CREATE DATABASE IF NOT EXISTS hairas_store;
USE hairas_store;

CREATE TABLE IF NOT EXISTS products (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(120) NOT NULL,
  category VARCHAR(60) NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  rating DECIMAL(2,1) DEFAULT 4.8,
  image VARCHAR(255),
  description TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO products (name, category, price, rating, image, description) VALUES
('Facial Tissue Box (200 Pulls)', 'Facial Tissues', 145, 4.7, 'tissue', 'Soft, gentle daily care.'),
('Kitchen Towel Roll (2 Ply)', 'Kitchen Towels', 260, 4.6, 'roll', 'Strong and absorbent.'),
('Soft Toilet Rolls (4 Pack)', 'Toilet Rolls', 190, 4.8, 'rolls', 'Comfortable everyday essential.'),
('Dinner Napkins (100 Sheets)', 'Table Napkins', 120, 4.6, 'napkin', 'Clean, simple and reliable.');

USE zeptosales;
CREATE TABLE categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(100) UNIQUE NOT NULL
);
INSERT INTO categories (category_name)
SELECT DISTINCT category
FROM zepto_v2;
CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    name TEXT,
    weightInGms INT,
    mrp INT,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);
INSERT INTO products (name, weightInGms, mrp, category_id)
SELECT DISTINCT
    z.name,
    z.weightInGms,
    z.mrp,
    c.category_id
FROM zepto_v2 z
JOIN categories c
ON z.category = c.category_name;

CREATE TABLE pricing (
    pricing_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    discountPercent INT,
    discountedSellingPrice INT,
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
INSERT INTO pricing (product_id, discountPercent, discountedSellingPrice)
SELECT DISTINCT
    p.product_id,
    z.discountPercent,
    z.discountedSellingPrice
FROM zepto_v2 z
JOIN products p
ON z.name = p.name;
CREATE TABLE inventory (
    inventory_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    availableQuantity INT,
    outOfStock TEXT,
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
INSERT INTO inventory (product_id, availableQuantity, outOfStock)
SELECT DISTINCT
    p.product_id,
    z.availableQuantity,
    z.outOfStock
FROM zepto_v2 z
JOIN products p
ON z.name = p.name;
SELECT * FROM categories LIMIT 5;
SELECT * FROM products LIMIT 5;
SELECT * FROM pricing LIMIT 5;
SELECT * FROM inventory LIMIT 5;







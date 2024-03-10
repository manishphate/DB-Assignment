CREATE TABLE IF NOT EXISTS product (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    desc TEXT NOT NULL,
    SKU VARCHAR(50) NOT NULL,
    category_id INT NOT NULL,
    inventory_id INT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    discount_id INT NOT NULL,
    created_at TIMESTAMP NOT NULL,
    modified_at TIMESTAMP NOT NULL,
    deleted_at TIMESTAMP NOT NULL,
    FOREIGN KEY (category_id) REFERENCES product_category(id),
    FOREIGN KEY (inventory_id) REFERENCES product_inventory(id),
    FOREIGN KEY (discount_id) REFERENCES discount(id)
);


CREATE TABLE IF NOT EXISTS product_category (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    desc TEXT NOT NULL,
    created_at TIMESTAMP NOT NULL,
    modified_at TIMESTAMP NOT NULL,
    deleted_at TIMESTAMP NOT NULL
);


CREATE TABLE IF NOT EXISTS product_inventory (
    id INT PRIMARY KEY,
    quantity INT NOT NULL,
    created_at TIMESTAMP NOT NULL,
    modified_at TIMESTAMP NOT NULL,
    deleted_at TIMESTAMP NOT NULL
);


CREATE TABLE IF NOT EXISTS discount (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    desc TEXT NOT NULL,
    discount_percent DECIMAL(5, 2) NOT NULL,
    active BOOLEAN NOT NULL,
    created_at TIMESTAMP NOT NULL,
    modified_at TIMESTAMP NOT NULL,
    deleted_at TIMESTAMP NOT NULL
);


-- Inserting data into product table:
INSERT INTO product (id, name, desc, SKU, category_id, inventory_id, price, discount_id, created_at, modified_at, deleted_at)
VALUES (1, 'Product 1', 'Description of Product 1', 'SKU_1', 1, 1, 99.99, 1, NOW(), NOW(), NULL);

-- Selecting data from product table:
SELECT * FROM product;

-- Updating data in product table:
UPDATE product SET price = 79.99 WHERE id = 1;

-- Deleting data from product table:
DELETE FROM product WHERE id = 1;

-- Joining product table with product_category table:
SELECT p.*, pc.name AS category_name 
FROM product p 
JOIN product_category pc ON p.category_id = pc.id;

-- Joining product table with product_inventory table:
SELECT p.*, pi.quantity AS inventory_quantity 
FROM product p 
JOIN product_inventory pi ON p.inventory_id = pi.id;

-- Joining product table with discount table:
SELECT p.*, d.name AS discount_name 
FROM product p 
JOIN discount d ON p.discount_id = d.id;

-- Selecting products with active discounts:
SELECT p.* 
FROM product p 
JOIN discount d ON p.discount_id = d.id 
WHERE d.active = TRUE;

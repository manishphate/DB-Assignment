CREATE TABLE IF NOT EXISTS product (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    desc TEXT NOT NULL,
    SKU VARCHAR(255) NOT NULL,
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
    name VARCHAR(255) NOT NULL,
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
    name VARCHAR(255) NOT NULL,
    desc TEXT NOT NULL,
    discount_percent DECIMAL(5, 2) NOT NULL,
    active BOOLEAN NOT NULL,
    created_at TIMESTAMP NOT NULL,
    modified_at TIMESTAMP NOT NULL,
    deleted_at TIMESTAMP NOT NULL
);
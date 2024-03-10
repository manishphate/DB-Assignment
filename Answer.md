Q1. Explain the relationship between the "Product" and "Product_Category" entities from the above diagram.

the relationship between the "Product" and "Product_Category" entities is established through a foreign key constraint.

* In the "Product" table, there's a column named category_id
* This category_id column is designated as a foreign key referencing the id column in the Product_Category table.

	FOREIGN KEY (category_id) REFERENCES product_category(id)


This means that each entry in the Product table's category_id column must correspond to an existing id in the Product_Category table.

the relationship between Product and Product_Category

1. Each product in the Product table is associated with a specific category represented by its id.
2. The category_id in the Product table acts as a link to the corresponding category in the Product_Category table.
3. This establishes a one-to-many relationship where one product category (in the Product_Category table) can be associated with multiple products (in the Product table), but each product can only be associated with one category.

the relationship between Product and Product_Category is a one-to-many relationship, where one product category can have many associated products, and each product belongs to one specific product category.

<!-- ------------------------------------------------------------------------------------------------------- -->
<!-- ------------------------------------------------------------------------------------------------------- -->

Q2. How could you ensure that each product in the "Product" table has a valid category assigned to it?

To ensure that each product in the "Product" table has a valid category assigned to it, you can use foreign key constraints.

1. Foreign Key Constraint: Ensure that the category_id column in the "Product" table references the id column in the "Product_Category" table.
2. Referential Integrity: This ensures that a value cannot be inserted into the category_id column of the "Product" table unless it matches an existing id in the "Product_Category" table. This prevents orphaned records.
3. NOT NULL Constraint: Make sure that the category_id column in the "Product" table does not allow NULL values, so every product must have a category assigned to it.
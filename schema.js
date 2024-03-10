app.post('/product', (req, res) => {

    const createTableQuery = `
        CREATE TABLE IF NOT EXISTS  product (
        id INT PRIMARY KEY,
        name VARCHAR NOT NULL,
        desc TEXT NOT NULL,
        SKU VARCHAR NOT NULL,
        category_id INT NOT NULL,
        inventory_id INT NOT NULL,
        price DECIMAL NOT NULL,
        discount_id INT NOT NULL,
        created_at TIMESTAMP NOT NULL,
        modified_at TIMESTAMP NOT NULL,
        deleted_at TIMESTAMP NOT NULL
    )`;

    db.query(createTableQuery, (err) => {
        if (err) {
            console.error('Table creation error: ' + err.message);
            return;
        }
        console.log('Table created successfully');
    });
    
    const sql = 'INSERT INTO product (`id`,`name`,`desc`,`SKU`,`category_id`,`inventory_id`,`price`,`discount_id`,`created_at`,`modified_at`,`deleted_at`) VALUES (?)';
    const values = [
        req.body.id,
        req.body.name,
        req.body.desc,
        req.body.SKU,
        req.body.category_id,
        req.body.inventory_id,
        req.body.price,
        req.body.discount_id,
        req.body.created_at,
        req.body.modified_at,
        req.body.deleted_at
    ]
    db.query(sql, [values], (err, data) => {
        if (err) {
            return res.json("Error");
        }
        return res.json(data);
    })
})

// ///////////////////////////////////////////////////////



app.post('/product_category', (req, res) => {

    const createTableQuery = `
        CREATE TABLE IF NOT EXISTS  product_category (
        id INT PRIMARY KEY,
        name VARCHAR NOT NULL,
        desc TEXT NOT NULL,
        created_at TIMESTAMP NOT NULL,
        modified_at TIMESTAMP NOT NULL,
        deleted_at TIMESTAMP NOT NULL
    )`;

    db.query(createTableQuery, (err) => {
        if (err) {
            console.error('Table creation error: ' + err.message);
            return;
        }
        console.log('Table created successfully');
    });
    
    const sql = 'INSERT INTO product_category (`id`,`name`,`desc`,`created_at`,`modified_at`,`deleted_at`) VALUES (?)';
    const values = [
        req.body.id,
        req.body.name,
        req.body.desc,
        req.body.created_at,
        req.body.modified_at,
        req.body.deleted_at
    ]
    db.query(sql, [values], (err, data) => {
        if (err) {
            return res.json("Error");
        }
        return res.json(data);
    })
})

// ////////////////////////////////////////////////////////

app.post('/product_inventory', (req, res) => {

    const createTableQuery = `
        CREATE TABLE IF NOT EXISTS  product_inventory (
        id INT PRIMARY KEY,
        quantity INT NOT NULL,
        created_at TIMESTAMP NOT NULL,
        modified_at TIMESTAMP NOT NULL,
        deleted_at TIMESTAMP NOT NULL
    )`;

    db.query(createTableQuery, (err) => {
        if (err) {
            console.error('Table creation error: ' + err.message);
            return;
        }
        console.log('Table created successfully');
    });
    
    const sql = 'INSERT INTO product_inventory (`id`,`quantity`,`created_at`,`modified_at`,`deleted_at`) VALUES (?)';
    const values = [
        req.body.id,
        req.body.quantity,
        req.body.created_at,
        req.body.modified_at,
        req.body.deleted_at
    ]
    db.query(sql, [values], (err, data) => {
        if (err) {
            return res.json("Error");
        }
        return res.json(data);
    })
})

// ///////////////////////////////////////////////////////

app.post('/discount', (req, res) => {

    const createTableQuery = `
        CREATE TABLE IF NOT EXISTS  discount (
        id INT PRIMARY KEY,
        name VARCHAR NOT NULL,
        desc TEXT NOT NULL,
        discount_percent DECIMAL NOT NULL,
        active BOOLEAN NOT NULL,
        created_at TIMESTAMP NOT NULL,
        modified_at TIMESTAMP NOT NULL,
        deleted_at TIMESTAMP NOT NULL
    )`;

    db.query(createTableQuery, (err) => {
        if (err) {
            console.error('Table creation error: ' + err.message);
            return;
        }
        console.log('Table created successfully');
    });
    
    const sql = 'INSERT INTO discount (`id`,`name`,`desc`,`discount_percent`,`active`,`created_at`,`modified_at`,`deleted_at`) VALUES (?)';
    const values = [
        req.body.id,
        req.body.name,
        req.body.desc,
        req.body.discount_percent,
        req.body.active,
        req.body.created_at,
        req.body.modified_at,
        req.body.deleted_at
    ]
    db.query(sql, [values], (err, data) => {
        if (err) {
            return res.json("Error");
        }
        return res.json(data);
    })
})


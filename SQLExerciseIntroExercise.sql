-- find all products 
SELECT * FROM bestbuy.products;

-- find all products that cost $1400
SELECT * FROM bestbuy.products WHERE products.Price = 1400;

-- find all products that cost $11.99 or $13.99
SELECT * FROM bestbuy.products WHERE products.Price = 11.99 OR products.Price = 13.99;

-- find all products that do NOT cost 11.99 - using NOT
SELECT * FROM bestbuy.products WHERE NOT products.Price = 11.99;

-- find all products and sort them by price greatest to least
SELECT * FROM bestbuy.products ORDER BY products.Price DESC;

-- find all employees who dont have a middle intial
SELECT * FROM bestbuy.employees WHERE employees.MiddleInitial IS NULL;

-- find all distinct product prices
SELECT DISTINCT bestbuy.products.Price FROM bestbuy.products;

-- find all employees whose first name starts with letter 'j'
SELECT * FROM bestbuy.employees WHERE employees.FirstName LIKE 'j%';

-- find all Macbooks
SELECT * FROM bestbuy.products WHERE products.Name = 'Macbook';

-- find all products that are on sale 
SELECT * FROM bestbuy.products WHERE products.OnSale = 1;

-- find the average price of all products
SELECT AVG(bestbuy.products.Price) FROM bestbuy.products;

-- find all products find all Geek Squad emplyoees who dont have a middle initial
SELECT * FROM bestbuy.employees WHERE employees.Title = 'Geek Squad' AND employees.MiddleInitial IS NULL;

-- find all products  from the products table whose stock level is in the range -- of 500 to 1200.
-- order by price from least to greatest (use BETWEEN keyword)
SELECT * from bestbuy.products WHERE products.StockLevel BETWEEN 500 AND 1200 ORDER BY products.Price;


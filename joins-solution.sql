-- 1. Get all customers and their addresses
SELECT * FROM "customers"
JOIN "addresses" ON "addresses"."customer_id" = "customers" ."id"
ORDER BY "addresses"."id";
-- 2. Get all orders and their line items
SELECT * FROM "orders"
JOIN "line_items" ON "line_items"."order_id" = "orders"."id"
ORDER BY "orders"."id";
-- 3. Which warehouses have cheetos
SELECT "products"."id", "products"."description", "warehouse_product"."product_id", "warehouse_product"."warehouse_id", "warehouse"."id", "warehouse"."warehouse"
FROM "warehouse_product"
JOIN "products" ON "warehouse_product"."product_id" = "products"."id"
JOIN "warehouse" ON "warehouse_product"."warehouse_id"="warehouse"."id"
WHERE "description" = 'cheetos';
-- 4. Which warehouses have diet pepsi
SELECT "products"."id", "products"."description", "warehouse_product"."product_id", "warehouse_product"."warehouse_id", "warehouse"."id", "warehouse"."warehouse"
FROM "warehouse_product"
JOIN "products" ON "warehouse_product"."product_id" = "products"."id"
JOIN "warehouse" ON "warehouse_product"."warehouse_id"="warehouse"."id"
WHERE "description" = 'diet pepsi';
-- 5. Get the number of orders for each customer
SELECT "customers"."id", "customers"."first_name", "addresses"."customer_id", "addresses"."id", "orders"."id", "orders"."address_id"
FROM "addresses"
JOIN "customers" ON "customers"."id" = "addresses"."customer_id"
JOIN "orders" ON "orders"."address_id"="addresses"."id";
-- 6. How many customers do we have
SELECT COUNT(*) FROM "customers";
-- 7. How many products do we carry
SELECT COUNT(*) FROM "products";
-- 8. What is the total available on-hand quantity of pepsi

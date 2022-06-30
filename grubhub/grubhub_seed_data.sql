INSERT INTO addresses (id, line_1, city, state, zipcode, restaurant) VALUES (1, '6232 Guiseppe Courts', 'Jamartown', 'Maryland', '49028', False);
INSERT INTO addresses (id, line_1, city, state, zipcode, restaurant) VALUES (2, '704 Cecil Mountain', 'West Jon', 'South Dakota', '91578', False);
INSERT INTO addresses (id, line_1, city, state, zipcode, restaurant) VALUES (3, '41613 Huel Ranch', 'Loycefort', 'Florida', '12109', True);
INSERT INTO addresses (id, line_1, city, state, zipcode, restaurant) VALUES (4, '1397 Braden Shoals', 'New Karine', 'New York', '03913', True);

--INSERT INTO users (id, username, password, email, address_id, first_name, last_name, phone) VALUES (1, 'sing4thestarz', 'r0ckSt@r', 'rocknroll@hotmail.com', 2, 'Ashley', 'Mayberry');
INSERT INTO users (id, username, password, email, address_id, first_name, last_name, phone) VALUES (2, 'bumblebee', 'P@ssW0rd', 'joe@gmail.com', 1, 'Joe', 'Barnabee', '205-765-2323');

INSERT INTO restaurants (name, address_id, phone) VALUES ('Royal Palm', 4, '555-717-6342');
INSERT INTO restaurants (name, address_id, phone) VALUES ('Chic-fil-a', 3, '635-798-1342');


INSERT INTO orders (user_id, time_ordered, delivered, restaurant_id) VALUES (2, '2016-06-22 19:10:25-07', True, 1);
--INSERT INTO orders (user_id, time_ordered, delivered, restaurant_id) VALUES (1, '2016-06-23 20:10:25-07', False, 2);


INSERT INTO menu_items (name, restaurant_id, description, price) VALUES ('Chicken Nuggets', 2, 'lightly breaded chicken bits', 4.32);
INSERT INTO menu_items (name, restaurant_id, description, price) VALUES ('Buttered Chicken', 1, 'Classic Indian Dish', 10.75);

INSERT INTO order_menu_items (order_id, menu_item_id, quantity) VALUES (1, 1, 3);
--INSERT INTO order_menu_items (order_id, menu_item_id, quantity) VALUES (2, 1, 1);


SELECT setval('addresses_id_seq', (SELECT MAX(id) FROM addresses));
SELECT setval('orders_id_seq', (SELECT MAX(id) FROM orders));
SELECT setval('users_id_seq', (SELECT MAX(id) FROM users));
SELECT setval('order_menu_items_id_seq', (SELECT MAX(id) FROM order_menu_items));
SELECT setval('menu_items_id_seq', (SELECT MAX(id) FROM menu_items));
SELECT setval('restaurants_id_seq', (SELECT MAX(id) FROM restaurants));

--commented ones didn't work

--questions:
-- learned the hard way the order on your seed data MATTERS A LOT
-- what is your advice on if you keep making small errors say I put "addresses" as column id instead of "address_id" and I don't want to delete the whole table
--or I have my seed data but then b/c one user didn't work two other items didn't work as well b/c it required user id

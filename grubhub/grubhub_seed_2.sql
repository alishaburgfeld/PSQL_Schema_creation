INSERT INTO users (id, username, password, email, address_id, first_name, last_name) VALUES (1, 'sing4thestarz', 'r0ckSt@r', 'rocknroll@hotmail.com', 2, 'Ashley', 'Mayberry');

INSERT INTO orders (user_id, time_ordered, delivered, restaurant_id) VALUES (1, '2016-06-23 20:10:25-07', False, 2);

INSERT INTO order_menu_items (order_id, menu_item_id, quantity) VALUES (2, 1, 1);


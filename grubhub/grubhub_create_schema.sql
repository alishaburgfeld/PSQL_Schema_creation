DROP TABLE IF EXISTS addresses;
CREATE TABLE addresses (
  id           serial PRIMARY KEY,
  line_1       varchar(255) NOT NULL,
  city         varchar(100) NOT NULL,
  state        varchar(200) NOT NULL,             
  zipcode      integer NOT NULL,
  restaurant   boolean NOT NULL
);

DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
  id           serial PRIMARY KEY,
  user_id      integer REFERENCES users (id) NOT NULL,
  time_ordered timestamptz NOT NULL,
  delivered    boolean NOT NULL,
  restaurant_id integer REFERENCES restaurants (id) NOT NULL
);
-- wanted to add an orders total which would add up all the prices of the menu items

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id           serial PRIMARY KEY,
  username     varchar unique NOT NULL,
  password     varchar NOT NULL, 
  email        varchar unique NOT NULL,
  address_id   integer REFERENCES addresses (id) NOT NULL,
  first_name   varchar NOT NULL,
  last_name    varchar NOT NULL,
  phone        varchar
);


DROP TABLE IF EXISTS order_menu_items;
CREATE TABLE order_menu_items (
  id            serial PRIMARY KEY,
  order_id      integer REFERENCES orders (id) NOT NULL,
  menu_item_id  integer REFERENCES menu_items (id) NOT NULL,
  quantity      integer NOT NULL
);

-- could make a user addresses and a restaurants addresses, or just a user/restuarant column
DROP TABLE IF EXISTS restaurants;
CREATE TABLE restaurants (
    id          serial PRIMARY KEY,
    name        varchar NOT NULL,
    address_id  integer REFERENCES addresses (id) NOT NULL,  
    phone       varchar NOT NULL
);

DROP TABLE IF EXISTS menu_items;
CREATE TABLE menu_items (
    id              serial PRIMARY KEY,
    name            varchar NOT NULL,
    restaurant_id   integer REFERENCES restaurants (id) NOT NULL,
    description     text NOT NULL,
    price           decimal NOT NULL
);

--orders and restaurants didn't work
GrubHub Online Ordering:

## Orders

id serial pk
user_id FK >- Users.id
time_ordered timestamp
delivered boolean

## Order_menu_items

order id FK >- orders.id
menuitem_id FK >- MenuItems.id
quantity integer

## Restaurants

id serial pk
address varchar
phone varchar

## MenuItems

id serial pk
description text
price decimal

## Users

id serial pk
username varchar unique
password varchar
email varchar unique
address varchar
first_name varchar
last_name varchar

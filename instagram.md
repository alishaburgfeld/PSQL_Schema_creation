Instagram:

## Follows

follower FK >- Users.id
content_owner FK >- Users.id
#how would you pair those into one?

## Comments

id serial pk
description text
use_id FK >- Users.id
time_posted datetime

## Posts

id serial pk
description text
use_id FK >- Users.id
time_posted datetime
comment null

## Users

id serial pk
username varchar unique
password varchar
email varchar unique
address FK >- Addresses.id
first_name varchar
last_name varchar

## Likes

post_id FK >-Posts.id null
comment_id FK >-Posts.id null
user_id FK >- Users.id

## Addresses

id serial pk
user_id FK >- Users.id
street varchar
street2 varchar
city varchar
state varchar
zip_code integer
country varchar

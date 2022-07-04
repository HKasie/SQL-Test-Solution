CREATE TABLE Customer
(
customer_id int not null,
first_name varchar(100) not null,
last_name varchar(100) not null,
age_band varchar(50) not null,
county varchar(100) not null,
city varchar(100) not null
)

CREATE TABLE Magazine
(
mag_code varchar(10) not null,
brand varchar(100) not null,
category varchar(100) not null,
frequency varchar(50) not null
)

CREATE TABLE Calendar
(
[date] date not null,
[year] int not null,
[month] int not null,
[day of month] int not null
)

CREATE TABLE Subscription
(
subs_id int not null,
mag_code varchar(10) not null,
customer_id int not null,
start_data date not null,
end_date date,
start_issue int,
end_issue int,
total_price_paid real
)
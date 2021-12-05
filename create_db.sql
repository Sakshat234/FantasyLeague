drop table if exists orders cascade;
drop table if exists customers cascade;

create table customers (
    id          integer primary key,
    name        varchar(32),
    age         integer,
    city        varchar(32),
    state       char(2),
    zipcode     char(5)
);

create table orders (
    order_id        integer primary key,
    order_date      varchar(32),
    customer_id     integer references customers (id),
    order_amount    integer
);

-- cat customers.csv | psql -U NET_ID -d NET_ID_db -c "COPY customers from STDIN CSV HEADER"
-- cat orders.csv | psql -U NET_ID -d NET_ID_db -c "COPY orders from STDIN CSV HEADER"

-- insert into customers values (1,'Clarence',32,'Waterloo','IA',50703);
-- insert into customers values (2,'Nichole',25,'Colorado Springs','CO',80904);
-- insert into customers values (3,'Peter',64,'Pawpaw','IL',61353);
-- insert into customers values (4,'Jason',29,'Amarillo','TX',79109);
-- insert into customers values (5,'John',41,'Grand Rapids','MI',49503);
-- insert into customers values (6,'Robert',25,'Baltimore','MD',21217);
-- insert into customers values (7,'Darren',52,'New York','NY',10013);

-- insert into orders values (101,'2019-9-18',2,150);
-- insert into orders values (102,'2019-9-18',6,320);
-- insert into orders values (103,'2019-11-15',2,151);
-- insert into orders values (104,'2020-3-23',1,60);

create table salespeople (
	salespeople_id SERIAL primary key,
	first_name VARCHAR (1000),
	last_name varchar(1000),
	num_of_invoices numeric(5,2),
	date_began date
);

create table customers(
	customers_id serial primary key,
	first_name varchar(1000),
	last_name varchar(1000),
	date_entered date,
	num_of_invoice numeric(5,2),
	total_sales_inv numeric(5,2),
	total_service_inv numeric(5,2)
);

create table mechanic(
	mechanic_id serial primary key,
	service_id_num numeric(5,2),
	date_hired date,
	specialty varchar(3000),
	full_part_time varchar(3000)
);

create table cars(
	cars_id serial primary key,
	cars_model varchar(3000),
	cars_make varchar(3000),
	cars_base_price numeric(5,2)
);

create table service(
	service_id serial primary key,
	car_issue varchar(5000),
	car_resolution varchar(5000),
	parts_needed varchar(5000),
	warranty varchar(5000),
	car_price numeric(5,2),
	service_date date,
	cars_id integer,
	mechanic_id integer,
	foreign key (cars_id) references cars(cars_id),
	foreign key (mechanic_id) references mechanic(mechanic_id)
);

create table mechanics(
	mechanic_id serial primary key,
	service_date date,
	date_hired date,
	specialty_area varchar(3000),
	car_model date,
	date_completed varchar(3000),
	service_id integer,
	cars_id integer,
	foreign key (cars_id) references cars(cars_id),
	foreign key (service_id) references service(service_id)
);

create table customer(
	customer_id serial primary key,
	first_name varchar(1000),
	last_name varchar(1000),
	payment_method varchar(1000),
	date_entered date,
	date_of_invoice date,
	salespeople_id integer,
	cars_id integer,
	customers_id integer,
	foreign key (cars_id) references cars(cars_id),
	foreign key (customers_id) references customers(customers_id),
	foreign key (salespeople_id) references salespeople(salespeople_id)
);

create table invoice(
	invoice_id serial primary key,
	cars_make varchar(4000),
	cars_model varchar(4000),
	cars_price numeric(5,2),
	payment_method varchar(4000),
	exp_date date,
	cars_id integer,
	customer_id integer,
	salespeople_id integer,
	foreign key (cars_id) references cars(cars_id),
	foreign key (salespeople_id) references salespeople(salespeople_id),
	foreign key (customer_id) references customer(customer_id)
);




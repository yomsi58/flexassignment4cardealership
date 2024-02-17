create or replace function add_customer(
	customerid Integer,
	firstname varchar,
	lastname varchar,
	paymentmeth varchar,
	dateentered date,
	dateofinv date,
	salespID numeric,
	carsID numeric,
	customersid numeric
)
returns void
as $MAIN$
begin
	insert into customer(
		customer_id,
		first_name,
		last_name,
		payment_method,
		date_entered,
		date_of_invoice,
		salespeople_id,
		cars_id,
		customers_id
	)
	values(
		customerid,
		firstname,
		lastname,
		paymentmeth,
		dateentered,
		dateofinv,
		salespID,
		carsID,
		customersid);
end;
$MAIN$
language plpgsql;

--=============================================================

create or replace function add_customers(
	customerid Integer,
	firstname varchar,
	lastname varchar,
	dateentered date,
	numofInvoice numeric,
	totalSales numeric,
	totalService numeric
)
returns void
as $MAIN$
begin
	insert into customers(
		customers_id,
		first_name,
		last_name,
		date_entered,
		num_of_invoice,
		total_sales_inv,
		total_service_inv
	)
	values(
		customerid,
		firstname,
		lastname,
		dateentered,
		numofInvoice,
		totalSales,
		totalService
	);
end;
$MAIN$
language plpgsql;

--=============================================================

create or replace function add_cars(
	carsid Integer,
	carsmodel varchar,
	carsmake varchar,
	carsbaseprice numeric
)
returns void
as $MAIN$
begin
	insert into cars(
		cars_id,
		cars_model,
		cars_make,
		cars_base_price
	)
	values(
		carsid,
		carsmodel,
		carsmake,
		carsbaseprice
	);
end;
$MAIN$
language plpgsql;

--=============================================================

create or replace function add_sales(
	salesid Integer,
	firstname varchar,
	lastname varchar,
	numofinvoices numeric,
	datebegan date
)
returns void
as $MAIN$
begin
	insert into salespeople(
		salespeople_id,
		first_name,
		last_name,
		num_of_invoices,
		date_began
	)
	values(
		salesid,
		firstname,
		lastname,
		numofinvoices,
		datebegan
	);
end;
$MAIN$
language plpgsql;


--=============================================================

select add_sales(3, 'Reed', 'Richards', 4, current_date)

select add_cars(42, 'Corolla', 'Toyota', 103.90);

select add_customers(1, 'Eric', 'Brooks', current_date, 4, 2, 2);

select add_customer(1, 'Eric', 'Brooks', '409', current_date, current_date, 3, 42, 1);

select * from customers;

select * from customer;

drop function if exists add_customers;

delete from customers where customers_id = 1;


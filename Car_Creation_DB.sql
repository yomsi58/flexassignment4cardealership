CREATE TABLE "salesperson" (
  "salesperson_id" SERIAL,
  "customer_id" INT,
  "serial_id" INT,
  PRIMARY KEY ("salesperson_id")
);

ALTER table  salesperson 
ADD first_name VARCHAR(50),
ADD last_name VARCHAR(50);

 CREATE TABLE "customer" (
  "customer_id" SERIAL,
  "serial_id" INT,
  "invoice_id" INT,
  "first_name" VARCHAR(100),
  "last_name" VARCHAR(100),
  "address" VARCHAR(150),
  "billing_info" VARCHAR(150),
  "phone" VARCHAR(20),
  "email" VARCHAR(150),
  PRIMARY KEY ("customer_id")
);

CREATE TABLE "car" (
  "serial_id" SERIAL,
  "customer_id" INT,
  "salesperson_id" INT,
  "service_id" INT,
  "color" VARCHAR(150),
  "vin" VARCHAR(50),
  PRIMARY KEY ("serial_id")
);


CREATE TABLE "invoice" (
  "invoice_id" SERIAL,
  "customer_id" INT,
  "serial_id" INT,
  "salesperson_id" INT,
  "service_id" INT,
  "mechanic_id" INT, 
  "parts_id" INT,
  PRIMARY KEY ("invoice_id")
);

CREATE TABLE "service" (
  "service_id" SERIAL,
  "serial_id" INT,
  "parts_id" INT,
  "mechanic_id" INT, 
  PRIMARY KEY ("service_id")
);

ALTER TABLE service
ADD service_name VARCHAR(50);

CREATE TABLE "mechanic" (
  "mechanic_id" SERIAL,
  "service_id" INT,
  "serial_id" INT,
  PRIMARY KEY ("mechanic_id")
);

CREATE TABLE "parts" (
  "parts_id" SERIAL,
  "service_id" INT,
  "serial_id" INT,
  PRIMARY KEY ("parts_id")
);

ALTER TABLE parts
ADD part_name VARCHAR(50);



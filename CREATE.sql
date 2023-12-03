create table salesperson(
	salesperson_id SERIAL primary key,
	full_name VARCHAR(100)
);

create table customer(
	customer_id SERIAL primary key,
	full_name VARCHAR(100)
);

create table car(
	car_id SERIAL primary key,
	car_model VARCHAR(100),
	salesperson_id INTEGER not NULL,
	customer_id INTEGER not NULL,
	foreign key (salesperson_id) references salesperson(salesperson_id),
    foreign key (customer_id) references customer(customer_id)	
);

create table invoice(
	invoice_number SERIAL primary key,
	car_id INTEGER not NULL,
	invoice_date DATE default CURRENT_DATE,
	foreign key (car_id) references car(car_id)
);

create table ServiceTicket (
    service_ticket_id SERIAL primary key,
    car_id INTEGER not NULL,
    date_of_service DATE default CURRENT_DATE,
    foreign key (car_id) references car(car_id)
);

create table ServiceHistory (
    service_history_id SERIAL primary key,
    car_id INTEGER not NULL,
    foreign key (car_id) references car(car_id)
);

create table mechanic (
    mechanic_id SERIAL primary key,
    full_name VARCHAR(100)
);

create table CarMechanic (
    car_id INTEGER not NULL,
    mechanic_id INTEGER not NULL,
    foreign key (car_id) references car(car_id),
    foreign key (mechanic_id) references Mechanic(mechanic_id),
    primary key (car_id, mechanic_id)
);

create table Part (
    part_id SERIAL primary key,
    part_name VARCHAR(100),
    part_cost NUMERIC(5,2),
    car_id INTEGER not NULL,
    foreign key (car_id) references car(car_id)
);

alter table part add column service_ticket_id INTEGER;
alter table part add foreign key (service_ticket_id) references ServiceTicket(service_ticket_id);





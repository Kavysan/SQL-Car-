insert into salesperson (
	salesperson_id,
	full_name
) values (
	1,
	'Kavya Santha'
)

insert into salesperson (
	salesperson_id,
	full_name
) values (
	2,
	'Oviya Santha'
)

insert into customer (
	customer_id,
	full_name
) values (
	1,
	'Santha Kumar Chitty'
)

insert into customer (
	customer_id,
	full_name
) values (
	2,
	'Viji Kuppu'
)

insert into car(
	car_id,
	car_model,
	salesperson_id,
	customer_id
) values (
	1,
	'Honda City',
	1,
	1
)

insert into car(
	car_id,
	car_model,
	salesperson_id,
	customer_id
) values (
	2,
	'Volvo XC60',
	2,
	2
)


insert into car(
	car_id,
	car_model,
	salesperson_id,
	customer_id
) values (
	3,
	'Honda Civic',
	1,
	2
)


insert into invoice(
	invoice_number,
	car_id
) values (
	1,
	1
)

insert into invoice(
	invoice_number,
	car_id
) values (
	2,
	3
)

insert into ServiceTicket (service_ticket_id, car_id) values (1, 1), (2, 3)
insert into ServiceTicket (service_ticket_id, car_id) values (3, 2)


insert into ServiceHistory (service_history_id,car_id) values (1,1), (2,3), (3,2)

insert into mechanic (mechanic_id, full_name) values (1,'Rachel Green'), (2,'Emma Watson')

insert into CarMechanic (car_id, mechanic_id) values (1, 1), (1, 2), (2, 1), (2, 2)

insert into Part (part_id, part_name, part_cost, car_id) VALUES (100,'Brake Pad', 25.99, 1), (250,'Oil Filter', 15.50, 2)

create or replace function insert_salesperson(id INTEGER,names VARCHAR)
returns void as $$
begin
    insert into salesperson (salesperson_id, full_name) values (id,names);
end;
$$ language plpgsql;



select insert_salesperson(5,'Gautham Raj')
select insert_salesperson(7,'Aravind Sankar');

create or replace function insert_customer(id INTEGER,names VARCHAR)
returns void as $$
begin
    insert into customer (customer_id, full_name) values (id,names);
end;
$$ language plpgsql;

select insert_customer(5,'Dulanjana')
select insert_customer(7,'Poornima');

select * from customer












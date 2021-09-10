--Artist Section
insert into artist (
  name
) 
values (
  'NF'
), (
  'Eminem'
), (
  'Brendan James'
)

select * from artist
order by name limit 5;

-- Extra Credit
select * from artist
order by name desc limit 10;

select * from artist
where name like 'Black%';

select * from artist
where name like '%Black%';

--Employee Section
select first_name, last_name, city from employee
where city = 'Calgary';


select employee_id from employee
where first_name = 'Nancy' and last_name = 'Edwards';

select * from employee
where reports_to = 2;


select count(*) from employee
where city = 'Lethbridge';

-- Extra Credit
select * from employee
order by birth_date desc limit 1;

select * from employee
order by birth_date limit 1;

--Invoice Section
select count(*) from invoice
where billing_country = 'USA';

select max(total) from invoice;

select min(total) from invoice;

select total from invoice
where total >= 5;

select count(*) from invoice
where total <= 5;

select sum(total) from invoice;

--Extra Credit
 select count (*) from invoice
where billing_state in ('CA', 'TX', 'AZ');

select avg(total) from invoice;

--Join section
select *
from invoice i
join invoice_line il on il.invoice_id = i.invoice_id
where il.unit_price > 0.99;

select i.invoice_date, c.first_name, c.last_name, i.total
from invoice i
join customer c on i.customer_id = c.customer_id;

select c.first_name, c.last_name, e.first_name, e.last_name
from customer c
join employee e on c.support_rep_id = e.employee_id;

select alb.title, art.name
from album alb
join artist art on alb.artist_id = art.artist_id;

--Extra Credit
select pt.track_id
from playlist_track pt
join playlist p on p.playlist_id = pt.playlist_id
where p.name = 'Music';



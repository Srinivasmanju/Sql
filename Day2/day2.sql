delete from dept where dep_id=103;

drop table dept;

update student_details set marks=100 where id='1';

select * from student_details;

alter table student_details add results varchar(10);

alter table student_details drop results;

alter table student_details modify results int;

alter table student_details modify results varchar(10);

select * from student_details;

select * from student_details where results='fail';

select * from student_details s, dept d where s.results= 'fail' and s.dep_id= d.dep_id;

insert into sec values ('A sec','Bangalore',1234567898);
insert into sec values ('Bangalore',1234567856);

select * from sec;

select * from salary;

insert into salary(name,salary) values('srinivas',30000),('sujan',40000),('rahul',50000);

insert into salary values(1,'srinivas',30000)
;

create table sales(
salesid int not null primary key,
salesname varchar(20),
address varchar(20)
);
create table sales(
salesid int not null primary key,
salesname varchar(20),
address varchar(20)
);

create table order_sales(
id int primary key,
productname varchar(15),
address varchar(15),
salesid int,
constraint FK_ORDER foreign key (salesid) references sales(salesid) );

select * from sales;
select * from order_sales;

delete from sales where salesid=1; /* cannot delete as it is connect to foriegn key */

select distinct  salesname, id, productname from sales s , order_sales o where s.salesid= o.salesid and s.salesname= 'vedh';
select * from sales s , order_sales o where s.salesid= o.salesid and s.salesname= 'vedh';

select s.salesid,s.salesname,s.address,p.id, p.productname from sales s inner join order_sales p on s.salesid=p.salesid;

select * from sales s inner join order_sales p on s.salesid=p.salesid;

select * from order_sales where salesid= (select salesid from sales where salesname= 'vedh');

select s.salesid,s.salesname,s.address,p.id, p.productname from sales s left join order_sales p on s.salesid=p.salesid;

select * from sales s left join order_sales p on s.salesid=p.salesid;
select s.salesid,s.salesname,s.address,p.id, p.productname from sales s right join order_sales p on s.salesid=p.salesid;

select * from sales s right join order_sales p on s.salesid=p.salesid;
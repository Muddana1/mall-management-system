create database mall_management_system;

USE mall_management_system;  
CREATE USER praneeth WITH PASSWORD = 'praneeth';
Create user praneeth for login praneeth;
GO  
CREATE SCHEMA mall_management AUTHORIZATION praneeth

GO   

CREATE ROLE mall_management  AUTHORIZATION praneeth
GRANT SELECT, DELETE 
   ON SCHEMA::schema_name
   TO praneeth;
   SELECT *
FROM master.sys.sysusers;
    -----employee table-----

	create table employee(
	employee_id   varchar (255)  not null,
	employee_name varchar(255)  not null,
	employee_email varchar(255)  not null,
	employee_phone  int  not null,
	dep_id    varchar(255)   not null,
	constraint employee_id_pk primary key(employee_id),
	constraint dep_id_fk foreign key(dep_id) references department(dep_id));
	



	   ----department table-----

	   create table mall_management_system.department  (
	   dep_id varchar(255)  not null,
	   dep_name varchar(255)   not null,
	   employee_id varchar(255)  not null,
	   employee_login varchar(255) not null,
	   constraint dep_id_pk primary key(dep_id),
	   constraint employee_id_fk foreign key(employee_id) references employee(employee_id));

	  
	   create table admin(
    admin_id  varchar(255) not null,
	admin_pass varchar(255) not null,
	dep_id varchar(255)   not null,
	employee_login  varchar(255) not null,
	constraint admin_id_pk primary key(admin_id),
	constraint dep_id_fk foreign key(dep_id) references department(dep_id));

	-------------login table-------
	create table login(
	login_id varchar(255) not null,
	login_pass varchar(20) not null,
	employee_email varchar(255) not null,
	admin_id varchar(255) not null,
	constraint login_id_pk primary key(login_id),
	constraint admin_id_fk foreign key(admin_id)references admin(admin_id));

	---------shopd table-------

	create table shop(
	shop_name varchar(255) not null,
	shop_id varchar(255) not null,
	shop_address varchar(500) not null,
	employee_id varchar(255) not null,
	constraint shop_name_pk primary key(shop_name));
	

	----------coustmer table---------

    create table coustmer(
	coustmer_name varchar(255) not null,
	coustmer_email varchar(255) not null,
	coustmer_phone int not null,
	shop_name varchar(255) not null,
	constraint shop_name_fk foreign key(shop_name)references shop(shop_name));

    ---------registration table------------

	create table registration(
	employee_id   varchar (255)  not null,
	employee_name varchar(255)  not null,
	employee_email varchar(255)  not null,
	employee_phone  int  not null,
	);




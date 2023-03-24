CREATE TABLE category (
	category_id Varchar(30) not null Primary key,
	category VARCHAR(30) not null );
	
CREATE TABLE subcategory (
	subcategory_id Varchar(30) not null Primary Key,
	sub_category Varchar(100) not null);
	
CREATE TABLE contact (
	contact_id int not null Primary Key,
	first_name Varchar(30) not null,
	last_name Varchar(30) not null,
	email Varchar(100) not null);
	
Create Table campaign(
	cf_id int not null,
	contact_id int not null,
	company_name Varchar(100) not null,
	description Varchar(100) not null,
	goal float not null,
	pledged float not null,
	outcome Varchar(30) not null,
	backers_count int not null,
	country Varchar(30) not null,
	currency Varchar(30) not null,
	launched_date Date not null,
	end_date Date not null,
	category_id Varchar(30) not null,
	subcategory_id Varchar(30) not null,
	Constraint pk_camp Primary Key (cf_id, contact_id),
	Foreign Key (contact_id) References contact(contact_id),
	Foreign Key (category_id) References category(category_id),
	Foreign Key (subcategory_id) References subcategory(subcategory_id)
	)

select * from category;
select * from subcategory;
select * from contact;
select * from campaign;
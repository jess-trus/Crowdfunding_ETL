CREATE TABLE contacts (
	contact_id integer PRIMARY KEY,
 	first_name varchar(30),
	last_name varchar(30),
	email varchar(50)
);
--next table
CREATE TABLE subcategory (
	subcategory_id varchar(20) PRIMARY KEY,
	subcategory varchar(20)
);

--next table
CREATE TABLE category (
	id varchar(20) PRIMARY KEY,
	category varchar(20)	
);

--next table
CREATE TABLE campaign (
	cf_id integer,
	contact_id int,
	company_name varchar(50),
	description text,	
	goal real,
	pledged real,
	outcome varchar(20),
	backers_count integer,
	country varchar(10),
	currency varchar(20),
	launch_date date,
	end_date date,
	category_id varchar(10),
	subcategory_id varchar(10),
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id),
	FOREIGN KEY (category_id) REFERENCES category(id)
);
 	SELECT* FROM campaign;
	SELECT* FROM category;
	SELECT* FROM subcategory;
	SELECT* FROM contacts;
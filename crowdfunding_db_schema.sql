-- Deletes pre-exisitng table of the same name to avoid conflicts
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS sub_category;
DROP TABLE IF EXISTS campaigns;

-- Creates contacts table
CREATE TABLE contacts (
	contact_id INT PRIMARY KEY NOT NULL,
	first_name VARCHAR(60) NOT NULL,
	last_name VARCHAR(60) NOT NULL,
	email VARCHAR(60) NOT NULL
);

-- Crates category table
CREATE TABLE category (
	category_id VARCHAR(4) PRIMARY KEY NOT NULL,
	category VARCHAR(30) NOT NULL
	
);

-- creates sub-category table
CREATE TABLE sub_category (
	subcategory_id VARCHAR(10) PRIMARY KEY NOT NULL,
	subcategory VARCHAR(30) NOT NULL
);

--Creates campaigns table
CREATE TABLE campaigns (
	cf_id INT PRIMARY KEY NOT NULL, 
	contact_id INT NOT NULL, 
	company_name VARCHAR(60) NOT NULL,
	description VARCHAR(200) NOT NULL,
	goal FLOAT NOT NULL,
	pledged FLOAT NOT NULL,
	outcome VARCHAR(60) NOT NULL,
	backers_count INT NOT NULL,
	country VARCHAR(2) NOT NULL,
	currency VARCHAR(3) NOT NULL,
	launched_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR(4) NOT NULL,
	subcategory_id VARCHAR(10) NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES sub_category(subcategory_id)
);

-- Selects and displays each table to confirm import success
SELECT *
FROM contacts;

SELECT *
FROM category;

SELECT *
FROM sub_category;

SELECT *
FROM campaigns;
------------------------------------------------------------------------------------------
-- >>> SCHEMA TO CREATE DATABASE FROM CROWDFUNDING CSVs CREATED IN ETL_Mini_Project <<< --
------------------------------------------------------------------------------------------


-- DROP TABLES IF THEY ALREADY EXIST

DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS subcategory;
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS campaign;


-- CREATE CATEGORY TABLE

CREATE TABLE category (
    category_id VARCHAR (150)  PRIMARY KEY  NOT NULL,
    category VARCHAR (150)  NOT NULL
);


-- CREATE SUBCATEGORY TABLE

CREATE TABLE subcategory (
    subcategory_id VARCHAR (150)   PRIMARY KEY   NOT NULL,
    subcategory VARCHAR (150)  NOT NULL
);


-- CREATE CONTACTS TABLE

CREATE TABLE contacts (
    contact_id INT   PRIMARY KEY   NOT NULL,
    first_name VARCHAR (50)  NOT NULL,
    last_name VARCHAR (50)  NOT NULL,
    email VARCHAR (100)  NOT NULL
);


-- CREATE CAMPAIGN TABLE

CREATE TABLE campaign (
    cf_id INT   PRIMARY KEY   NOT NULL,
    contact_id INT NOT NULL,
    company_name VARCHAR (150)  NOT NULL,
    description VARCHAR (150)  NOT NULL,
    goal FLOAT  NOT NULL,
    pledged FLOAT   NOT NULL,
    backers_count INT   NOT NULL,
    country VARCHAR (150)  NOT NULL,
    currency VARCHAR (50)  NOT NULL,
    launch_date date   NOT NULL,
    end_date date   NOT NULL,
    category_id VARCHAR (50)  NOT NULL,
    subcategory_id VARCHAR (100)  NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);


-- VIEW ALL CREATED TABLES FOR VERIFICATION
SELECT * FROM contacts;
SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM campaign;
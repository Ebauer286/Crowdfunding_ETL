-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/


CREATE TABLE category (
    category_id VARCHAR(30) PRIMARY KEY  NOT NULL,
    category VARCHAR(30)   NOT NULL
);

CREATE TABLE subcategory (
    subcategory_id VARCHAR(30) PRIMARY KEY  NOT NULL,
    subcategory VARCHAR(30)   NOT NULL
);

CREATE TABLE contacts (
    contact_id int PRIMARY KEY  NOT NULL,
    first_name VARCHAR(40)   NOT NULL,
    last_name VARCHAR(40)   NOT NULL,
    email VARCHAR(60)   NOT NULL

);


-- https://www.postgresql.org/docs/current/datatype-datetime.html
CREATE TABLE camgaigns (
    cf_id int PRIMARY KEY  NOT NULL,
    contact_id int   NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    company_name VARCHAR(60)   NOT NULL,
    description VARCHAR(60)   NOT NULL,
    goal real   NOT NULL,
    pledged real   NOT NULL,
    outcome VARCHAR(30)   NOT NULL,
    backers_count int   NOT NULL,
    country VARCHAR(30)   NOT NULL,
    currency VARCHAR(30)   NOT NULL,
    launch_date timestamp   NOT NULL,
    end_date timestamp   NOT NULL,
    category_id VARCHAR(30)   NOT NULL,
	FOREIGN KEY (category_id) REFERENCES category(category_id),
    subcategory_id VARCHAR(30)   NOT NULL,
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)

);



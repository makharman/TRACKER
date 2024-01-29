CREATE TABLE accounts (
    id SERIAL PRIMARY KEY,
    username VARCHAR(150) NOT NULL UNIQUE,
    email VARCHAR(254) NOT NULL,
    password VARCHAR(128) NOT NULL,
    last_login timestamp DEFAULT current_timestamp,
    date_joined timestamp DEFAULT current_timestamp
);

CREATE TABLE userprofile (
    id SERIAL PRIMARY KEY,
    user_id INTEGER UNIQUE,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    email VARCHAR(255),
    date_of_birth DATE,
    address VARCHAR(255),
    phone_number VARCHAR(20),
    gender VARCHAR(10),
    is_active BOOLEAN NOT NULL,
    last_login timestamp DEFAULT current_timestamp,
    date_joined timestamp DEFAULT current_timestamp,
    
    CONSTRAINT fk_accounts_user FOREIGN KEY (user_id) REFERENCES accounts(id) ON DELETE CASCADE
);

CREATE TABLE expenses_expensecategory (
    id serial PRIMARY KEY,
    name varchar(255) NOT NULL
);

CREATE TABLE expense (
    id SERIAL PRIMARY KEY,
    spent_amount NUMERIC NOT NULL,
    description TEXT NOT NULL,
    category_id INTEGER NOT NULL,
    date DATE NOT NULL,
    user_id INTEGER NOT NULL,
    
    CONSTRAINT fk_expense_category FOREIGN KEY (category_id) REFERENCES expenses_expensecategory(id) ON DELETE CASCADE,
    CONSTRAINT fk_expense_user FOREIGN KEY (user_id) REFERENCES userprofile(id) ON DELETE CASCADE
);

CREATE TABLE expenses_incomecategory (
    id serial PRIMARY KEY,
    name varchar(255) NOT NULL
);

CREATE TABLE income (
    id SERIAL PRIMARY KEY,
    earned_amount NUMERIC NOT NULL,
    description TEXT NOT NULL,
    category_id INTEGER NOT NULL,
    date DATE NOT NULL,
    user_id INTEGER NOT NULL,
    
    CONSTRAINT fk_income_category FOREIGN KEY (category_id) REFERENCES expenses_incomecategory(id) ON DELETE CASCADE,
    CONSTRAINT fk_income_user FOREIGN KEY (user_id) REFERENCES userprofile(id) ON DELETE CASCADE
);
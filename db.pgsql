
INSERT INTO accounts (username, email, password) 
VALUES ('makh.arman', 'a.makhanbet17@gmail.com', 'password1'),
       ('do1ot', 'sugir.dulat@gmail.com', 'password2'),
       ('omirzak', 'alibi1999@gmail.com', 'password3');


INSERT INTO userprofile (user_id, first_name, last_name, email, date_of_birth, address, phone_number, gender, is_active) 
VALUES (1, 'Arman', 'Makhanbet', 'a.makhanbet17@gmail.com', '1990-01-01', '123 Main St', '8-705-537-7298', 'Male', true),
       (2, 'Dulat', 'Sugir', 'sugir.dulat@gmail.com', '1985-05-15', '456 Oak St', '8-705-687-7599', 'Male', true),
       (3, 'Alibi', 'Omirzak', 'alibi1999@gmail.com', '1995-08-22', '789 Maple St', '8-706-887-7287', 'Male', true);

INSERT INTO expenses_expensecategory (name) 
VALUES ('Shopping'), ('Transport'), ('Entertainment');

INSERT INTO expense (spent_amount, description, category_id, date, user_id) 
VALUES (50.00, 'T-shirt', 1, '2024-01-27', 1),
       (30.00, 'Taxi', 2, '2024-01-26', 2),
       (20.00, 'Movie night', 3, '2024-01-25', 3);

INSERT INTO expenses_incomecategory (name) 
VALUES ('Salary'), ('Freelance'), ('Investments');

INSERT INTO income (earned_amount, description, category_id, date, user_id) 
VALUES (3000.00, 'Monthly salary', 1, '2024-01-31', 1),
       (500.00, 'Freelance project', 2, '2024-01-28', 2),
       (1000.00, 'Dividend income', 3, '2024-01-30', 3);

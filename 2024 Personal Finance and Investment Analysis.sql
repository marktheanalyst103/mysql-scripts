# CREATING A DATABASE
create database personal_finance;
use personal_finance;


# CREATING TABLES AND INSERTING SAMPLE DATA
# Income Table
create table income 

	(income_id INT PRIMARY KEY AUTO_INCREMENT,
    income_source VARCHAR(255), 
    income_amount DECIMAL (10,2),
    income_date DATE
    ); 

select * from income; -- To check if the table has been created

insert into income (income_source, income_amount, income_date)
values
	('Concentrix Company', 6802, '2024-03-01'),
	('Concentrix Company', 8311, '2024-03-15'),
    ('Concentrix Company', 9044, '2024-03-27'),
    ('Concentrix Company', 9916, '2024-04-12'),
    ('Concentrix Company', 10760, '2024-04-26'),
    ('Concentrix Company', 8096, '2024-05-10'),
    ('Concentrix Company', 17995, '2024-05-24'),
    ('Concentrix Company', 10520, '2024-06-07'),
    ('Concentrix Company', 8151, '2024-06-21'),
    ('Concentrix Company', 2500, '2024-06-25'),
	('Concentrix Company', 6376, '2024-07-05'),
    ('Amazon Company', 20761, '2024-07-12'),
    ('Amazon Company', 10213, '2024-07-31'),
    ('Concentrix Company', 5119, '2024-08-01'),
    ('Amazon Company', 8926, '2024-08-28'),
    ('EMA Company', 4650, '2024-12-18')
;

select * from income; -- To check if the data has been inserted correctly

# Expense Table
create table expenses
	(expense_id INT PRIMARY KEY AUTO_INCREMENT,
    expense_category VARCHAR(255), 
    expense_amount DECIMAL (10,2),
    expense_date DATE
    )
;

select * from expenses;

insert into expenses (expense_category, expense_amount, expense_date)
values
('Other', 99, '2024-01-01'),
('Physical', 60, '2024-01-06'),
('Rent', 3300, '2024-01-06'),
('Physical', 60, '2024-01-09'),
('Physical', 60, '2024-01-10'),
('Physical', 554, '2024-01-11'),
('Physical', 490, '2024-01-11'),
('Physical', 60, '2024-01-12'),
('Physical', 155, '2024-01-12'),
('Physical', 60, '2024-01-13'),
('Social', 405, '2024-01-14'),
('Spiritual', 15, '2024-01-14'),
('Physical', 60, '2024-01-15'),
('Travel', 130, '2024-01-15'),
('Physical', 120, '2024-01-15'),
('Physical', 60, '2024-01-16'),
('Physical', 95, '2024-01-17'),
('Social', 99, '2024-01-17'),
('Physical', 40, '2024-01-17'),
('Physical', 25, '2024-01-18'),
('Physical', 20, '2024-01-18'),
('Travel', 200, '2024-01-18'),
('Social', 205, '2024-01-18'),
('Physical', 1315, '2024-01-18'),
('Physical', 170, '2024-01-18'),
('Physical', 582, '2024-01-18'),
('Physical', 25, '2024-01-20'),
('Travel', 15, '2024-01-20'),
('Physical', 230, '2024-01-20'),
('Physical', 50, '2024-01-20'),
('Physical', 20, '2024-01-20'),
('Physical', 30, '2024-01-20'),
('Physical', 150, '2024-01-20'),
('Physical', 100, '2024-01-20'),
('Physical', 150, '2024-01-20'),
('Physical', 100, '2024-01-20'),
('Physical', 80, '2024-01-20'),
('Physical', 80, '2024-01-20'),
('Travel', 15, '2024-01-21'),
('Travel', 20, '2024-01-21'),
('Travel', 15, '2024-01-21'),
('Travel', 15, '2024-01-21'),
('Physical', 150, '2024-01-21'),
('Travel', 15, '2024-01-21'),
('Other', 18, '2024-01-22'),
('Physical', 225, '2024-01-22'),
('Other', 25, '2024-01-25'),
('Physical', 175, '2024-01-25'),
('Physical', 408, '2024-01-25'),
('Travel', 17, '2024-01-28'),
('Physical', 379, '2024-01-28'),
('Other', 18, '2024-01-28'),
('Physical', 265, '2024-01-28'),
('Physical', 526, '2024-01-30'),
('Physical', 160, '2024-01-30'),
('Physical', 1343, '2024-01-31'),
('Rent', 5571, '2024-02-01'),
('Physical', 579, '2024-02-02'),
('Physical', 50, '2024-02-02'),
('Spiritual', 17, '2024-02-04'),
('Physical', 150, '2024-02-04'),
('Spiritual', 17, '2024-02-04'),
('Physical', 179, '2024-02-04'),
('Physical', 75, '2024-02-04'),
('Social', 70, '2024-02-04'),
('Other', 15, '2024-02-04'),
('Physical', 300, '2024-02-08'),
('Physical', 35, '2024-02-08'),
('Physical', 155, '2024-02-09'),
('Physical', 17, '2024-02-09'),
('Spiritual', 15, '2024-02-12'),
('Physical', 562, '2024-02-12'),
('Travel', 19, '2024-02-12'),
('Physical', 20, '2024-02-12'),
('Physical', 155, '2024-02-13'),
('Social', 499, '2024-02-14'),
('Physical', 170, '2024-02-14'),
('Physical', 295, '2024-02-15'),
('Physical', 40, '2024-02-15'),
('Physical', 14, '2024-02-16'),
('Physical', 503, '2024-02-16'),
('Physical', 435, '2024-02-16'),
('Spiritual', 19, '2024-02-18'),
('Physical', 127, '2024-02-18'),
('Physical', 60, '2024-02-18'),
('Travel', 18, '2024-02-18'),
('Physical', 25, '2024-02-18'),
('Physical', 170, '2024-02-19'),
('Physical', 40, '2024-02-19'),
('Physical', 35, '2024-02-20'),
('Physical', 173, '2024-02-20'),
('Physical', 25, '2024-02-21'),
('Physical', 25, '2024-02-21'),
('Other', 500, '2024-02-21'),
('Physical', 10, '2024-02-22'),
('Physical', 18, '2024-02-22'),
('Physical', 119, '2024-02-23'),
('Social', 154, '2024-02-23'),
('Physical', 50, '2024-02-23'),
('Physical', 25, '2024-02-23'),
('Social', 13, '2024-02-25'),
('Physical', 50, '2024-02-25'),
('Physical', 45, '2024-02-26'),
('Physical', 81, '2024-02-26'),
('Physical', 75, '2024-02-27'),
('Physical', 85, '2024-02-27'),
('Physical', 74, '2024-02-28'),
('Physical', 50, '2024-02-28'),
('Physical', 70, '2024-02-29'),
('Physical', 45, '2024-02-29'),
('Physical', 1685, '2024-03-01'),
('Rent', 4847, '2024-03-01'),
('Rent', 1000, '2024-03-01'),
('Rent', 50, '2024-03-01'),
('Physical', 60, '2024-03-01'),
('Physical', 160, '2024-03-01'),
('Jhea', 160, '2024-03-01'),
('Jhea', 30, '2024-03-01'),
('Physical', 200, '2024-03-01'),
('Social', 78, '2024-03-01'),
('Physical', 55, '2024-03-02'),
('Physical', 15, '2024-03-02'),
('Physical', 25, '2024-03-02'),
('Physical', 25, '2024-03-02'),
('Physical', 25, '2024-03-02'),
('Physical', 505, '2024-03-02'),
('Physical', 1786, '2024-03-02'),
('Physical', 278, '2024-03-02'),
('Spiritual', 20, '2024-03-03'),
('Physical', 804, '2024-03-03'),
('Travel', 14, '2024-03-03'),
('Physical', 20, '2024-03-03'),
('Physical', 65, '2024-03-04'),
('Physical', 58, '2024-03-05'),
('Physical', 150, '2024-03-05'),
('Physical', 65, '2024-03-06'),
('Physical', 50, '2024-03-06'),
('Physical', 60, '2024-03-07'),
('Physical', 50, '2024-03-07'),
('Physical', 278, '2024-03-07'),
('Physical', 179, '2024-03-08'),
('Jhea', 159, '2024-03-08'),
('Physical', 140, '2024-03-08'),
('Physical', 278, '2024-03-09'),
('Physical', 35, '2024-03-09'),
('Physical', 206, '2024-03-09'),
('Travel', 20, '2024-03-10'),
('Physical', 620, '2024-03-10'),
('Travel', 18, '2024-03-10'),
('Physical', 2050, '2024-03-10'),
('Jhea', 75, '2024-03-11'),
('Jhea', 15, '2024-03-11'),
('Jhea', 144, '2024-03-11'),
('Physical', 70, '2024-03-11'),
('Physical', 78, '2024-03-12'),
('Other', 10010, '2024-03-13'),
('Travel', 70, '2024-03-13'),
('Travel', 65, '2024-03-13'),
('Other', 25, '2024-03-13'),
('Jhea', 65, '2024-03-13'),
('Physical', 70, '2024-03-13'),
('Jhea', 70, '2024-03-14'),
('Jhea', 50, '2024-03-14'),
('Physical', 15, '2024-03-14'),
('Physical', 35, '2024-03-14'),
('Physical', 255, '2024-03-14'),
('Physical', 150, '2024-03-14'),
('Physical', 60, '2024-03-15'),
('Social', 240, '2024-03-15'),
('Physical', 75, '2024-03-15'),
('Jhea', 75, '2024-03-15'),
('Social', 78, '2024-03-15'),
('Physical', 15, '2024-03-16'),
('Physical', 20, '2024-03-17'),
('Physical', 100, '2024-03-17'),
('Physical', 212, '2024-03-17'),
('Physical', 546, '2024-03-17'),
('Physical', 25, '2024-03-17'),
('Physical', 14, '2024-03-17'),
('Physical', 67, '2024-03-18'),
('Physical', 123, '2024-03-18'),
('Physical', 176, '2024-03-19'),
('Physical', 65, '2024-03-19'),
('Physical', 60, '2024-03-20'),
('Physical', 70, '2024-03-20'),
('Jhea', 75, '2024-03-20'),
('Physical', 16, '2024-03-20'),
('Physical', 60, '2024-03-21'),
('Physical', 50, '2024-03-21'),
('Jhea', 166, '2024-03-22'),
('Physical', 165, '2024-03-22'),
('Jhea', 25, '2024-03-22'),
('Physical', 185, '2024-03-22'),
('Jhea', 25, '2024-03-23'),
('Spiritual', 17, '2024-03-24'),
('Travel', 16, '2024-03-24'),
('Physical', 835, '2024-03-24'),
('Physical', 17, '2024-03-25'),
('Other', 186, '2024-03-25'),
('Physical', 65, '2024-03-27'),
('Jhea', 262, '2024-03-27'),
('Physical', 260, '2024-03-27'),
('Jhea', 26, '2024-03-27'),
('Travel', 13, '2024-03-27'),
('Physical', 315, '2024-03-27'),
('Physical', 42, '2024-03-28'),
('Physical', 35, '2024-03-28'),
('Physical', 100, '2024-03-28'),
('Physical', 50, '2024-03-29'),
('Physical', 42, '2024-03-29'),
('Physical', 87, '2024-03-29'),
('Jhea', 50, '2024-03-29'),
('Physical', 99, '2024-03-30'),
('Jhea', 129, '2024-03-30'),
('Jhea', 23, '2024-03-30'),
('Physical', 113, '2024-04-01'),
('Physical', 100, '2024-04-01'),
('Physical', 250, '2024-04-01'),
('Physical', 70, '2024-04-02'),
('Rent', 6409, '2024-04-02'),
('Physical', 474, '2024-04-03'),
('Physical', 62, '2024-04-03'),
('Physical', 89, '2024-04-03'),
('Jhea', 128, '2024-04-03'),
('Jhea', 60, '2024-04-04'),
('Physical', 70, '2024-04-04'),
('Physical', 119, '2024-04-04'),
('Jhea', 99, '2024-04-04'),
('Jhea', 25, '2024-04-04'),
('Jhea', 25, '2024-04-05'),
('Physical', 62, '2024-04-06'),
('Physical', 50, '2024-04-06'),
('Physical', 20, '2024-04-06'),
('Physical', 62, '2024-04-07'),
('Physical', 198, '2024-04-07'),
('Physical', 1349, '2024-04-07'),
('Physical', 65, '2024-04-08'),
('Physical', 50, '2024-04-08'),
('Physical', 250, '2024-04-08'),
('Physical', 166, '2024-04-08'),
('Physical', 65, '2024-04-09'),
('Physical', 92, '2024-04-09'),
('Physical', 254, '2024-04-09'),
('Physical', 67, '2024-04-10'),
('Physical', 120, '2024-04-10'),
('Physical', 67, '2024-04-11'),
('Physical', 120, '2024-04-11'),
('Jhea', 25, '2024-04-11'),
('Physical', 99, '2024-04-11'),
('Physical', 120, '2024-04-11'),
('Jhea', 25, '2024-04-12'),
('Other', 120, '2024-04-12'),
('Physical', 67, '2024-04-13'),
('Physical', 50, '2024-04-13'),
('Physical', 65, '2024-04-14'),
('Other', 85, '2024-04-14'),
('Jhea', 15, '2024-04-14'),
('Travel', 15, '2024-04-14'),
('Physical', 67, '2024-04-15'),
('Jhea', 116, '2024-04-15'),
('Physical', 100, '2024-04-15'),
('Physical', 217, '2024-04-15'),
('Physical', 62, '2024-04-16'),
('Physical', 20, '2024-04-16'),
('Physical', 62, '2024-04-17'),
('Social', 200, '2024-04-17'),
('Jhea', 116, '2024-04-18'),
('Physical', 100, '2024-04-18'),
('Jhea', 35, '2024-04-18'),
('Physical', 50, '2024-04-18'),
('Physical', 240, '2024-04-18'),
('Physical', 154, '2024-04-18'),
('Physical', 50, '2024-04-19'),
('Physical', 67, '2024-04-20'),
('Physical', 92, '2024-04-20'),
('Physical', 65, '2024-04-20'),
('Physical', 62, '2024-04-21'),
('Physical', 60, '2024-04-21'),
('Social', 60, '2024-04-21'),
('Jhea', 13, '2024-04-21'),
('Spiritual', 13, '2024-04-21'),
('Physical', 62, '2024-04-23'),
('Physical', 150, '2024-04-23'),
('Jhea', 200, '2024-04-23'),
('Physical', 105, '2024-04-24'),
('Physical', 90, '2024-04-24'),
('Social', 60, '2024-04-24'),
('Physical', 65, '2024-04-24'),
('Jhea', 65, '2024-04-24'),
('Physical', 300, '2024-04-25'),
('Physical', 70, '2024-04-25'),
('Physical', 44, '2024-04-25'),
('Physical', 50, '2024-04-26'),
('Physical', 20, '2024-04-26'),
('Physical', 20, '2024-04-26'),
('Physical', 62, '2024-04-27'),
('Physical', 92, '2024-04-27'),
('Physical', 65, '2024-04-29'),
('Spiritual', 13, '2024-04-29'),
('Jhea', 13, '2024-04-29'),
('Physical', 165, '2024-04-29'),
('Jhea', 165, '2024-04-29'),
('Travel', 25, '2024-04-29'),
('Physical', 35, '2024-04-30'),
('Physical', 50, '2024-04-30'),
('Other', 205, '2024-04-30'),
('Rent', 4903.5, '2024-05-01'),
('Physical', 92, '2024-05-01'),
('Physical', 150, '2024-05-01'),
('Travel', 13, '2024-05-01'),
('Jhea', 13, '2024-05-01'),
('Travel', 35, '2024-05-01'),
('Jhea', 35, '2024-05-01'),
('Physical', 245, '2024-05-03'),
('Physical', 50, '2024-05-03'),
('Physical', 25, '2024-05-03'),
('Physical', 10, '2024-05-03'),
('Jhea', 60, '2024-05-03'),
('Physical', 35, '2024-05-04'),
('Physical', 3, '2024-05-04'),
('Physical', 67, '2024-05-04'),
('Physical', 143, '2024-05-04'),
('Travel', 26, '2024-05-05'),
('Spiritual', 13, '2024-05-05'),
('Physical', 60, '2024-05-05'),
('Physical', 67, '2024-05-05'),
('Physical', 100, '2024-05-05'),
('Jhea', 322, '2024-05-05'),
('Physical', 295, '2024-05-06'),
('Physical', 260, '2024-05-06'),
('Other', 15, '2024-05-06'),
('Physical', 20, '2024-05-06'),
('Physical', 92, '2024-05-06'),
('Other', 99, '2024-05-06'),
('Physical', 67, '2024-03-07'),
('Physical', 50, '2024-03-07'),
('Physical', 67, '2024-05-08'),
('Physical', 620, '2024-05-08'),
('Travel', 25, '2024-05-09'),
('Physical', 199, '2024-05-09'),
('Jhea', 236, '2024-05-09'),
('Travel', 30, '2024-05-09'),
('Travel', 23, '2024-05-09'),
('Physical', 68, '2024-05-11'),
('Spiritual', 150, '2024-05-12'),
('Spiritual', 500, '2024-05-12'),
('Travel', 50, '2024-05-12'),
('Physical', 54, '2024-05-12'),
('Physical', 83, '2024-05-14'),
('Physical', 125, '2024-05-14'),
('Physical', 67, '2024-05-15'),
('Physical', 100, '2024-05-15'),
('Physical', 25, '2024-05-15'),
('Physical', 50, '2024-05-16'),
('Physical', 25, '2024-05-16'),
('Physical', 25, '2024-05-16'),
('Physical', 40, '2024-05-16'),
('Physical', 115, '2024-05-17'),
('Physical', 150, '2024-05-17'),
('Jhea', 185, '2024-05-17'),
('Jhea', 150, '2024-05-17'),
('Physical', 25, '2024-05-17'),
('Physical', 77, '2024-05-18'),
('Physical', 75, '2024-05-18'),
('Physical', 156, '2024-05-18'),
('Physical', 67, '2024-05-19'),
('Physical', 84, '2024-05-19'),
('Physical', 261, '2024-05-19'),
('Physical', 255, '2024-05-19'),
('Physical', 140, '2024-05-19'),
('Physical', 40, '2024-05-19'),
('Spiritual', 20, '2024-05-19'),
('Physical', 67, '2024-05-20'),
('Physical', 93, '2024-05-20'),
('Physical', 72, '2024-05-21'),
('Physical', 40, '2024-05-21'),
('Physical', 67, '2024-05-22'),
('Other', 135, '2024-05-22'),
('Physical', 275, '2024-05-22'),
('Physical', 95, '2024-05-23'),
('Physical', 155, '2024-05-24'),
('Physical', 236, '2024-05-24'),
('Physical', 80, '2024-05-25'),
('Jhea', 45, '2024-05-25'),
('Travel', 200, '2024-05-26'),
('Physical', 120, '2024-05-26'),
('Physical', 65, '2024-05-26'),
('Jhea', 65, '2024-05-27'),
('Physical', 50, '2024-05-27'),
('Physical', 25, '2024-05-27'),
('Physical', 890, '2024-05-27'),
('Physical', 67, '2024-05-28'),
('Physical', 75, '2024-05-28'),
('Physical', 100, '2024-05-28'),
('Physical', 442, '2024-05-28'),
('Physical', 30, '2024-05-29'),
('Physical', 65, '2024-05-29'),
('Physical', 132, '2024-05-30'),
('Physical', 100, '2024-05-31'),
('Physical', 211, '2024-06-01'),
('Rent', 5059, '2024-06-01'),
('Physical', 67, '2024-06-01'),
('Physical', 125, '2024-06-01'),
('Travel', 36, '2024-06-02'),
('Physical', 1700, '2024-06-02'),
('Travel', 36, '2024-06-02'),
('Jhea', 310, '2024-06-02'),
('Physical', 207, '2024-06-02'),
('Physical', 100, '2024-06-02'),
('Physical', 257, '2024-06-02'),
('Physical', 201, '2024-06-03'),
('Other', 99, '2024-06-03'),
('Physical', 341, '2024-06-03'),
('Physical', 299, '2024-06-03'),
('Physical', 161, '2024-06-03'),
('Physical', 67, '2024-06-03'),
('Physical', 65, '2024-06-03'),
('Jhea', 60, '2024-06-03'),
('Social', 65, '2024-06-03'),
('Jhea', 50, '2024-06-03'),
('Physical', 75, '2024-06-03'),
('Physical', 67, '2024-06-04'),
('Physical', 50, '2024-06-04'),
('Physical', 65, '2024-06-04'),
('Physical', 18, '2024-06-04'),
('Other', 253, '2024-06-04'),
('Physical', 67, '2024-06-05'),
('Physical', 75, '2024-06-05'),
('Physical', 71, '2024-06-06'),
('Physical', 78, '2024-06-07'),
('Physical', 120, '2024-06-07'),
('Physical', 75, '2024-06-08'),
('Jhea', 45, '2024-06-08'),
('Physical', 274, '2024-06-08'),
('Physical', 71, '2024-06-09'),
('Physical', 45, '2024-06-09'),
('Physical', 67, '2024-06-10'),
('Physical', 106, '2024-06-10'),
('Physical', 50, '2024-06-12'),
('Social', 130, '2024-06-12'),
('Physical', 67, '2024-06-13'),
('Physical', 75, '2024-06-13'),
('Family', 101, '2024-06-13'),
('Physical', 77, '2024-06-14'),
('Physical', 1261, '2024-06-14'),
('Physical', 190, '2024-06-14'),
('Physical', 75, '2024-06-14'),
('Physical', 27, '2024-06-14'),
('Other', 254, '2024-06-14'),
('Family', 100, '2024-06-15'),
('Family', 1500, '2024-06-16'),
('Physical', 67, '2024-06-16'),
('Physical', 75, '2024-06-16'),
('Spiritual', 12, '2024-06-16'),
('Spiritual', 5, '2024-06-16'),
('Physical', 62, '2024-06-17'),
('Physical', 67, '2024-06-18'),
('Physical', 100, '2024-06-19'),
('Family', 100, '2024-06-20'),
('Physical', 75, '2024-06-20'),
('Physical', 320, '2024-06-20'),
('Physical', 62, '2024-06-21'),
('Physical', 45, '2024-06-21'),
('Physical', 140, '2024-06-21'),
('Physical', 120, '2024-06-21'),
('Physical', 62, '2024-06-22'),
('Physical', 50, '2024-06-22'),
('Physical', 508, '2024-06-23'),
('Physical', 67, '2024-06-23'),
('Physical', 75, '2024-06-23'),
('Family', 101, '2024-06-23'),
('Physical', 187, '2024-06-24'),
('Physical', 450, '2024-06-24'),
('Physical', 174, '2024-06-25'),
('Physical', 25, '2024-06-25'),
('Travel', 84, '2024-06-26'),
('Physical', 205, '2024-06-26'),
('Physical', 224, '2024-06-26'),
('Travel', 84, '2024-06-26'),
('Other', 18, '2024-06-27'),
('Physical', 40, '2024-06-29'),
('Physical', 75, '2024-06-30'),
('Social', 13, '2024-07-01'),
('Physical', 55, '2024-07-01'),
('Physical', 75, '2024-07-01'),
('Rent', 4808, '2024-07-01'),
('Physical', 30, '2024-07-02'),
('Physical', 10, '2024-07-02'),
('Physical', 75, '2024-07-02'),
('Physical', 174, '2024-07-02'),
('Physical', 10, '2024-07-03'),
('Physical', 25, '2024-07-03'),
('Physical', 25, '2024-07-03'),
('Family', 101, '2024-07-03'),
('Physical', 55, '2024-07-04'),
('Physical', 65, '2024-07-04'),
('Physical', 25, '2024-07-04'),
('Physical', 70, '2024-07-05'),
('Physical', 976, '2024-07-05'),
('Family', 1680, '2024-07-05'),
('Other', 585, '2024-07-05'),
('jhea', 32, '2024-07-06'),
('Social', 26, '2024-07-06'),
('Physical', 75, '2024-07-06'),
('Other', 15, '2024-07-06'),
('Physical', 308, '2024-07-06'),
('Physical', 55, '2024-07-09'),
('Physical', 85, '2024-07-09'),
('Physical', 55, '2024-07-10'),
('Family', 101, '2024-07-11'),
('Physical', 80, '2024-07-11'),
('Physical', 162, '2024-07-11'),
('Physical', 65, '2024-07-12'),
('Physical', 35, '2024-07-12'),
('Physical', 80, '2024-07-13'),
('Other', 978, '2024-07-14'),
('Physical', 96, '2024-07-15'),
('Family', 101, '2024-07-15'),
('Family', 101, '2024-07-15'),
('Physical', 238, '2024-07-15'),
('Physical', 65, '2024-07-16'),
('Physical', 26, '2024-07-16'),
('Physical', 50, '2024-07-16'),
('Other', 592.58, '2024-07-16'),
('Physical', 45, '2024-07-17'),
('Physical', 65, '2024-07-19'),
('Physical', 80, '2024-07-20'),
('Physical', 711, '2024-07-20'),
('Physical', 194, '2024-07-20'),
('Physical', 25, '2024-07-20'),
('jhea', 100, '2024-07-21'),
('Physical', 70, '2024-07-23'),
('Physical', 270, '2024-07-23'),
('Physical', 159, '2024-07-23'),
('jhea', 291, '2024-07-23'),
('Physical', 70, '2024-07-24'),
('Physical', 85, '2024-07-24'),
('Physical', 195, '2024-07-24'),
('Physical', 60, '2024-07-25'),
('Physical', 85, '2024-07-26'),
('Physical', 65, '2024-07-27'),
('Physical', 605, '2024-07-27'),
('jhea', 60, '2024-07-27'),
('Social', 60, '2024-07-27'),
('Family', 101, '2024-07-27'),
('Physical', 35, '2024-07-30'),
('Rent', 4821, '2024-07-31'),
('Physical', 340, '2024-07-31'),
('jhea', 891, '2024-07-31'),
('Physical', 50, '2024-08-01'),
('Other', 99, '2024-08-01'),
('Physical', 160, '2024-08-02'),
('Physical', 190, '2024-08-04'),
('Other', 367, '2024-08-04'),
('Physical', 743, '2024-08-04'),
('Family', 101, '2024-08-05'),
('Physical', 388, '2024-08-06'),
('jhea', 15, '2024-08-07'),
('Physical', 620, '2024-08-07'),
('Physical', 350, '2024-08-07'),
('Physical', 217, '2024-08-09'),
('Physical', 388, '2024-08-09'),
('Physical', 74, '2024-08-10'),
('jhea', 65, '2024-08-11'),
('Physical', 14, '2024-08-11'),
('Physical', 295, '2024-08-11'),
('Family', 101, '2024-08-12'),
('Physical', 120, '2024-08-13'),
('Physical', 65, '2024-08-13'),
('Social', 65, '2024-08-13'),
('jhea', 60, '2024-08-13'),
('Physical', 202, '2024-08-14'),
('Physical', 90, '2024-08-14'),
('Other', 13, '2024-08-14'),
('Spiritual', 290, '2024-08-14'),
('jhea', 290, '2024-08-14'),
('Physical', 85, '2024-08-14'),
('Physical', 135, '2024-08-14'),
('jhea', 135, '2024-08-14'),
('Physical', 75, '2024-08-15'),
('Travel', 78, '2024-08-16'),
('Physical', 2400, '2024-08-16'),
('Physical', 250, '2024-08-19'),
('Physical', 892, '2024-08-20'),
('Other', 80, '2024-08-21'),
('Physical', 25, '2024-08-21'),
('Physical', 65, '2024-08-21'),
('Physical', 100, '2024-08-22'),
('Physical', 26, '2024-08-24'),
('Physical', 300, '2024-08-24'),
('jhea', 26, '2024-08-24'),
('Social', 34, '2024-08-25'),
('jhea', 30, '2024-08-25'),
('Physical', 200, '2024-08-25'),
('Physical', 130, '2024-08-25'),
('Physical', 75, '2024-08-26'),
('Family', 101, '2024-08-26'),
('Physical', 120, '2024-08-26'),
('Physical', 360, '2024-08-27'),
('Rent', 5200, '2024-08-28'),
('jhea', 388, '2024-08-29'),
('Physical', 120, '2024-08-30'),
('Physical', 122, '2024-08-30'),
('Physical', 170, '2024-08-30'),
('Travel', 68, '2024-08-31'),
('Physical', 375, '2024-08-31'),
('Rent', -6600, '2024-08-31'),
('Physical', 75, '2024-09-01'),
('Physical', 462, '2024-09-01'),
('Travel', 44, '2024-09-01'),
('Travel', 20, '2024-09-01'),
('Family', 1188, '2024-09-01'),
('Family', 101, '2024-09-02'),
('Travel', 20, '2024-09-02'),
('Travel', 30, '2024-09-02'),
('Travel', 30, '2024-09-02'),
('Travel', 20, '2024-09-02'),
('Travel', 1950, '2024-09-02'),
('Travel', 150, '2024-09-02'),
('Physical', 25, '2024-09-02'),
('Travel', 150, '2024-09-02'),
('jhea', 165, '2024-09-03'),
('Physical', 45, '2024-09-03'),
('Family', 2700, '2024-09-04'),
('Family', 645, '2024-09-04'),
('Family', 50, '2024-09-04'),
('Family', 5000, '2024-09-04'),
('Physical', 599, '2024-09-05'),
('Physical', 499, '2024-09-05'),
('jhea', 314, '2024-09-05'),
('Family', 101, '2024-09-06'),
('jhea', 20, '2024-09-06'),
('jhea', 300, '2024-09-06'),
('jhea', 50, '2024-09-06'),
('Physical', 473, '2024-09-06'),
('Other', 101, '2024-09-07'),
('jhea', 100, '2024-09-08'),
('Family', 101, '2024-09-09'),
('jhea', 10, '2024-09-10'),
('jhea', 200, '2024-09-10'),
('jhea', 30, '2024-09-10'),
('jhea', 235, '2024-09-10'),
('jhea', 30, '2024-09-10'),
('jhea', 400, '2024-09-10'),
('jhea', 216, '2024-09-10'),
('jhea', 268.25, '2024-09-13'),
('jhea', 50, '2024-09-13'),
('Other', 50, '2024-09-13'),
('Physical', 255, '2024-09-13'),
('jhea', 400, '2024-09-14'),
('Family', 150, '2024-09-15'),
('jhea', 150, '2024-09-15'),
('jhea', 80, '2024-09-16'),
('Family', 101, '2024-09-16'),
('Family', 60, '2024-09-16'),
('Family', 100, '2024-09-26'),
('Family', 100, '2024-10-01'),
('Physical', 100, '2024-10-06'),
('Physical', 246, '2024-10-10'),
('jhea', 50, '2024-10-10'),
('jhea', 68, '2024-10-10'),
('Physical', 300, '2024-10-10'),
('Physical', 620, '2024-10-10'),
('Physical', 320, '2024-10-10'),
('Physical', 300, '2024-10-12'),
('Physical', 50, '2024-10-12'),
('jhea', 100, '2024-10-12'),
('jhea', 100, '2024-10-12'),
('Family', 120, '2024-10-13'),
('jhea', 60, '2024-10-14'),
('jhea', 85, '2024-10-14'),
('jhea', 25, '2024-10-14'),
('Physical', 150, '2024-10-14'),
('jhea', 55, '2024-10-14'),
('jhea', 95, '2024-10-14'),
('jhea', 330, '2024-10-15'),
('Other', -1300, '2024-10-16'),
('jhea', 550, '2024-10-19'),
('jhea', 360, '2024-10-19'),
('Physical', 28, '2024-10-24'),
('Physical', 15, '2024-10-24'),
('Physical', 67, '2024-10-25'),
('Family', 27, '2024-10-25'),
('Physical', 203, '2024-10-26'),
('Family', 4000, '2024-10-26'),
('Family', 300, '2024-10-27'),
('Social', 176, '2024-10-30'),
('Social', 300, '2024-11-01'),
('jhea', 503, '2024-11-02'),
('jhea', 99, '2024-11-02'),
('jhea', 72, '2024-11-02'),
('jhea', 85, '2024-11-03'),
('jhea', 50, '2024-11-04'),
('Family', 200, '2024-11-07'),
('Social', 260, '2024-11-08'),
('Social', 78, '2024-11-09'),
('Social', 55, '2024-11-09'),
('Spiritual', 50, '2024-11-09'),
('Social', 25, '2024-11-09'),
('Physical', 50, '2024-11-09'),
('Spiritual', 20, '2024-11-09'),
('Spiritual', 10, '2024-11-11'),
('Social', 178, '2024-11-11'),
('Physical', 90, '2024-11-12'),
('Physical', 295, '2024-11-12'),
('Physical', 382, '2024-11-14'),
('Physical', 230, '2024-11-15'),
('jhea', 102, '2024-11-15'),
('Social', 99, '2024-11-17'),
('Spiritual', 100, '2024-11-17'),
('Family', 100, '2024-11-18'),
('Social', 120, '2024-11-18'),
('Family', 100, '2024-11-26'),
('Family', 2000, '2024-11-26'),
('Physical', 188, '2024-11-28'),
('jhea', 105, '2024-11-29'),
('jhea', 10, '2024-11-29'),
('jhea', 51, '2024-11-29'),
('jhea', 658, '2024-11-30'),
('jhea', 13, '2024-11-30'),
('jhea', 80, '2024-12-01'),
('jhea', 1560, '2024-12-02'),
('Physical', 100, '2024-12-06'),
('Social', 160, '2024-12-07'),
('Physical', 170, '2024-12-07'),
('Physical', 206, '2024-12-07'),
('Family', 1399, '2024-12-11'),
('Family', 450, '2024-12-11'),
('Family', 75, '2024-12-11'),
('Family', 75, '2024-12-12'),
('Family', 1021.18, '2024-12-14'),
('Other', 1500, '2024-12-14'),
('jhea', 1500, '2024-12-14'),
('Physical', 207, '2024-12-14'),
('Physical', 250, '2024-12-14'),
('Physical', 379, '2024-12-14'),
('Physical', 777, '2024-12-14'),
('Physical', 163, '2024-12-14'),
('Physical', 1355, '2024-12-14'),
('Physical', 537, '2024-12-14'),
('Physical', 243, '2024-12-14'),
('jhea', 229, '2024-12-14'),
('Family', 64, '2024-12-19'),
('Family', 140, '2024-12-23'),
('Family', 28, '2024-12-23'),
('Family', 15, '2024-12-23'),
('Family', 150, '2024-12-23'),
('jhea', 400, '2024-12-23'),
('Family', 400, '2024-12-23'),
('Family', 50, '2024-12-23'),
('Family', 160, '2024-12-23'),
('jhea', 283, '2024-12-23'),
('Family', 388, '2024-12-23'),
('Family', 137, '2024-12-23'),
('Family', 407, '2024-12-23'),
('Travel', 36, '2024-12-23'),
('Family', 23, '2024-12-23'),
('Physical', 21, '2024-12-23'),
('Travel', 40, '2024-12-23'),
('Physical', 2400, '2024-12-23'),
('jhea', 100, '2024-12-23'),
('jhea', 720, '2024-12-23'),
('Family', 300, '2024-12-25'),
('jhea', 102, '2024-12-26'),
('jhea', 301, '2024-12-28'),
('Travel', 1200, '2024-12-28'),
('Travel', 165, '2024-12-29'),
('Travel', 150, '2024-12-29'),
('Spiritual', 600, '2024-12-29'),
('Spiritual', 100, '2024-12-29'),
('Spiritual', 100, '2024-12-29'),
('Spiritual', 500, '2024-12-29'),
('Spiritual', 500, '2024-12-29'),
('Spiritual', 500, '2024-12-29'),
('Spiritual', 500, '2024-12-29'),
('Spiritual', 500, '2024-12-29'),
('Social', 300, '2024-12-29'),
('Spiritual', 278, '2025-12-30'),
('Physical', 547, '2025-12-31'),
('Physical', 309, '2025-12-31'),
('Family', 1500, '2025-12-31'),
('Spiritual', 100, '2025-12-31'),
('Spiritual', 100, '2025-12-31'),
('Spiritual', 100, '2025-12-31'),
('Spiritual', 200, '2025-12-31')
;

select * from expenses;

# Investment Table 
create table investments
	(investment_id INT PRIMARY KEY AUTO_INCREMENT,
    investment_category VARCHAR(255), 
    investment_amount DECIMAL (10,2),
    investment_return DECIMAL (10,2),
    investment_date DATE
    )
;

select * from investments;

insert into investments (investment_category, investment_amount, investment_return, investment_date)
values
('Pag-ibig Contribution', 105, 110.25, '2024-01-11'),
('Pag-ibig Contribution', 1005, 1055.25, '2024-01-11'),
('Banks', 20, 21, '2024-07-11'),
('Banks', 25, 26.25, '2024-07-11'),
('Banks', 10, 10.5, '2024-07-12'),
('Lending', 500, 525, '2024-12-25'),
('Lending', 300, 315, '2024-12-25'),
('Lending', 350, 367.5, '2024-12-25')
;

select * from investments;


# Savings Table
create table savings
	(saving_id INT PRIMARY KEY AUTO_INCREMENT,
    saving_category VARCHAR(255), 
    saving_amount DECIMAL (10,2),
    saving_return DECIMAL (10,2),
    saving_date DATE
    )
;

select * from savings;

insert into savings (saving_category, saving_amount, saving_return, saving_date)
values
('Emergency Fund', 28, 29.4, '2024-01-30'),
('Emergency Fund', 20, 21, '2024-01-30'),
('Emergency Fund', 15, 15.75, '2024-02-02'),
('Emergency Fund', 17, 17.85, '2024-02-02'),
('Emergency Fund', 13, 13.65, '2024-02-06'),
('Emergency Fund', 13, 13.65, '2024-02-06'),
('Emergency Fund', 15, 15.75, '2024-02-12'),
('Emergency Fund', 26, 27.3, '2024-07-01'),
('Emergency Fund', 26, 27.3, '2024-07-02'),
('Emergency Fund', 26, 27.3, '2024-07-03'),
('Emergency Fund', 40, 42, '2024-07-04'),
('Emergency Fund', 13, 13.65, '2024-07-04'),
('Emergency Fund', 26, 27.3, '2024-07-05'),
('Emergency Fund', 26, 27.3, '2024-07-09'),
('Emergency Fund', 26, 27.3, '2024-07-10'),
('Emergency Fund', 26, 27.3, '2024-07-11'),
('Emergency Fund', 26, 27.3, '2024-07-12'),
('Emergency Fund', 26, 27.3, '2024-07-13'),
('Emergency Fund', 26, 27.3, '2024-07-17'),
('Emergency Fund', 26, 27.3, '2024-07-18'),
('Emergency Fund', 26, 27.3, '2024-07-19'),
('Emergency Fund', 26, 27.3, '2024-07-20'),
('Emergency Fund', 26, 27.3, '2024-07-23'),
('Emergency Fund', 26, 27.3, '2024-07-23'),
('Emergency Fund', 26, 27.3, '2024-07-24'),
('Emergency Fund', 26, 27.3, '2024-07-25'),
('Emergency Fund', 26, 27.3, '2024-07-26'),
('Emergency Fund', 26, 27.3, '2024-07-27'),
('Emergency Fund', 26, 27.3, '2024-07-30'),
('Emergency Fund', 26, 27.3, '2024-08-06'),
('Other', 25, 26.25, '2024-03-01'),
('Other', 25, 26.25, '2024-03-15'),
('Other', 25, 26.25, '2024-03-27'),
('Other', 25, 26.25, '2024-04-26'),
('Other', 25, 26.25, '2024-05-10'),
('Other', 10, 10.5, '2024-05-12'),
('Other', 35, 36.75, '2024-05-29'),
('Other', 25, 26.25, '2024-06-08'),
('Other', 40, 42, '2024-06-11'),
('Other', 10, 10.5, '2024-06-14'),
('Other', 18, 18.9, '2024-06-16'),
('Other', 37, 38.85, '2024-07-09'),
('Other', 39, 40.95, '2024-07-23'),
('Other', 20, 21, '2024-07-30'),
('Other', 10, 10.5, '2024-07-30'),
('Other', 25, 26.25, '2024-08-01'),
('Other', 10, 10.5, '2024-08-28'),
('Other', 10, 10.5, '2024-10-04'),
('Other', 10, 10.5, '2024-10-04'),
('Other', 10, 10.5, '2024-10-31'),
('Other', 50, 52.5, '2024-11-15'),
('School Fund', 160, 168, '2024-01-26'),
('School Fund', 65, 68.25, '2024-02-02'),
('School Fund', 75, 78.75, '2024-02-12'),
('School Fund', 10, 10.5, '2024-02-12'),
('School Fund', 80, 84, '2024-02-12'),
('School Fund', 50, 52.5, '2024-02-12'),
('School Fund', 45, 47.25, '2024-02-13'),
('School Fund', 260, 273, '2024-03-01'),
('School Fund', 720, 756, '2024-03-03'),
('School Fund', 1115, 1170.75, '2024-03-07'),
('School Fund', 40, 42, '2024-03-10'),
('School Fund', 335, 351.75, '2024-03-22'),
('School Fund', 254, 266.7, '2024-04-20'),
('School Fund', 10, 10.5, '2024-08-03'),
('School Fund', 7087, 7441.35, '2024-09-01'),
('School Fund', 691, 725.55, '2024-09-01'),
('School Fund', 2598, 2727.9, '2024-09-09'),
('School Fund', 2058, 2160.9, '2024-09-09'),
('School Fund', 750, 787.5, '2024-09-17'),
('School Fund', 550, 577.5, '2024-09-17'),
('School Fund', 450, 472.5, '2024-09-19'),
('School Fund', 50, 52.5, '2024-09-19'),
('School Fund', 20, 21, '2024-09-29'),
('School Fund', 660, 693, '2024-11-05'),
('School Fund', 99, 103.95, '2024-12-07'),
('School Fund', 1058, 1110.9, '2024-12-28'),
('Vacation Fund', 500, 525, '2024-04-30'),
('Vacation Fund', 1945, 2042.25, '2025-12-31')
;

select * from savings;	


# Debts Table
create table debts
	(debt_id INT PRIMARY KEY AUTO_INCREMENT,
    debt_category VARCHAR(255), 
    debt_amount DECIMAL (10,2),
    debt_return DECIMAL (10,2),
    debt_date DATE
    )
;

select * from debts;

insert into debts (debt_category, debt_amount, debt_return, debt_date)
values
('Credit Card Debt', 250, 262.5, '2024-01-14'),
('Credit Card Debt', 65, 68.25, '2024-03-13'),
('Credit Card Debt', 13, 13.65, '2024-03-27'),
('Debt from Family/Friends', 300, 315, '2024-01-12'),
('Debt from Family/Friends', 500, 525, '2024-01-21'),
('Debt from Family/Friends', 75, 78.75, '2024-03-15'),
('Debt from Family/Friends', 119, 124.95, '2024-03-22'),
('Debt from Family/Friends', 75, 78.75, '2024-04-14'),
('Others', 80, 84, '2024-01-19'),
('Others', 62, 65.1, '2024-01-19'),
('Personal Loans', 229, 240.45, '2024-02-04'),
('Personal Loans', 15, 15.75, '2024-03-03'),
('Personal Loans', 15, 15.75, '2024-03-03'),
('Personal Loans', 100, 105, '2024-03-12')
;

select * from debts;


## FINANCIAL ANALYSIS QUERIES
# TOTAL MONTHLY INCOME VS EXPENSES
# Expenses per Month
select 
	date_format (expense_date, '%Y-%m') as monthly_report,
    sum(expense_amount) as total_expenses
from expenses
group by monthly_report
;

# Income per month
select
	date_format(income_date, '%Y-%m') as monthly_report,
    sum(income_amount) as total_income
from income
group by monthly_report
;

# Monthly Income and Expenses: Joining and Combining Data
SELECT 
    income.monthly_report,
    income.total_income, 
    expenses.total_expenses
FROM
    (SELECT 
        DATE_FORMAT(income_date, '%Y-%m') AS monthly_report,
        SUM(income_amount) AS total_income
     FROM income
     GROUP BY monthly_report) AS income
LEFT JOIN
    (SELECT 
        DATE_FORMAT(expense_date, '%Y-%m') AS monthly_report,
        SUM(expense_amount) AS total_expenses
     FROM expenses
     GROUP BY monthly_report) AS expenses
ON income.monthly_report = expenses.monthly_report
;

# EXPENSE BREAKDOWN BY CATEGORY
select 
	expense_category, sum(expense_amount) as total_expenses
from expenses
group by expense_category
;


# INVESTMENT RETURNS (ROI CALCULATION)
select
	investment_category, investment_amount, investment_return, 
    FORMAT(((investment_return - investment_amount) / investment_amount)*100,2) as roi_percentage  -- TO FORMAT RIGHT AWAY THE RESULT
from investments
;


# DEBT SUMMARY WITH INTEREST CALCULATION
select 
	debt_category, debt_amount, debt_return,
	(debt_return - debt_amount) as debt_interest
from debts
;


# SUM FOR EACH TABLE
select 
	(select SUM(income_amount) from income) as total_income,
    (select SUM(expense_amount) from expenses) as total_expense,
    (select SUM(investment_amount) from investments) as total_investment,
    (select SUM(saving_amount) from savings) as total_saving,
    (select SUM(debt_amount) from debts) as total_debt
;

# TOTAL NETWORTH CALCULATION
select
	(select SUM(income_amount) from income)
	- (select SUM(expense_amount) from expenses)
    + (select SUM(investment_amount) from investments) 
    + (select SUM(saving_amount) from savings) 
    - (select SUM(debt_amount) from debts) as net_worth
;


## AUTOMATE REPORTS WITH VIEWS & STORED PROCEDURES
# Creating a VIEW for the Monthly Financial Overview
CREATE VIEW monthly_financial_summary AS
SELECT 
    monthly_report,  -- [IT WILL EXIST BECAUSE OF THE SUBQUERIES BELOW]
    SUM(total_income) AS total_income, -- [THIS ALSO WORKS BECAUSE IT SUMS UP THE VALUES FROM THE DIFFERENT UNION ALL RESULTS BELOW]
    SUM(total_expense) AS total_expense, -- [...THESE ARE CALLED OUTER QUERIES]
    SUM(total_investment) AS total_investment, -- [...THEY ARE ALIASES DEFINED INSIDE EACH SELECT STATEMENT OF THE UNION ALL QUERY]
    SUM(total_saving) AS total_saving,
    SUM(total_debt) AS total_debt
FROM (
    -- Income
    SELECT DATE_FORMAT(income_date, '%Y-%m') AS monthly_report, 
           SUM(income_amount) AS total_income, 
           0 AS total_expense, 
           0 AS total_investment, 
           0 AS total_saving, 
           0 AS total_debt
    FROM income 
    GROUP BY monthly_report

    UNION ALL

    -- Expenses
    SELECT DATE_FORMAT(expense_date, '%Y-%m') AS monthly_report,  
           0 AS total_income, 
           SUM(expense_amount) AS total_expense, 
           0 AS total_investment, 
           0 AS total_saving, 
           0 AS total_debt
    FROM expenses 
    GROUP BY monthly_report

    UNION ALL

    -- Investments
    SELECT DATE_FORMAT(investment_date, '%Y-%m') AS monthly_report,  
           0 AS total_income, 
           0 AS total_expense, 
           SUM(investment_amount) AS total_investment, 
           0 AS total_saving, 
           0 AS total_debt
    FROM investments
    GROUP BY monthly_report

    UNION ALL

    -- Savings
    SELECT DATE_FORMAT(saving_date, '%Y-%m') AS monthly_report,  
           0 AS total_income, 
           0 AS total_expense, 
           0 AS total_investment, 
           SUM(saving_amount) AS total_saving, 
           0 AS total_debt
    FROM savings
    GROUP BY monthly_report    

    UNION ALL

    -- Debts
    SELECT DATE_FORMAT(debt_date, '%Y-%m') AS monthly_report,  
           0 AS total_income, 
           0 AS total_expense, 
           0 AS total_investment, 
           0 AS total_saving, 
           SUM(debt_amount) AS total_debt
    FROM debts
    GROUP BY monthly_report    
) AS financial_data  
GROUP BY monthly_report
;

select * from monthly_financial_summary;


# STORED PROCEDURE FOR FINANCIAL HEALTH BY ONE MONTH

DELIMITER // 
	-- Used to change the default delimiter ";" to "//"
CREATE PROCEDURE GetFinancialHealth(IN month_year VARCHAR(7))
BEGIN
    SELECT 
        (SELECT SUM(income_amount) FROM income WHERE DATE_FORMAT(income_date, '%Y-%m') = month_year) AS total_income,
        (SELECT SUM(expense_amount) FROM expenses WHERE DATE_FORMAT(expense_date, '%Y-%m') = month_year) AS total_expenses,
        (SELECT SUM(investment_amount) FROM investments WHERE DATE_FORMAT(investment_date, '%Y-%m') = month_year) AS total_investments,
        (SELECT SUM(saving_amount) FROM savings WHERE DATE_FORMAT(saving_date, '%Y-%m') = month_year) AS total_savings,
        (SELECT SUM(debt_amount) FROM debts WHERE DATE_FORMAT(debt_date, '%Y-%m') = month_year) AS total_debts;
END //
DELIMITER ;
	-- changing the delimiter back to its default ";" again 

CALL GetFinancialHealth('2024-01'); -- Checking if the code works
CALL GetFinancialHealth('2024-03');


-- STORED PROCEDURE FOR FINANCIAL HEALTH OVER MULTIPLE MONTHS
DELIMITER //
CREATE PROCEDURE GetFinancialHealth2(IN start_month VARCHAR(7), IN end_month VARCHAR(7))
BEGIN
    SELECT 
        month_year,
        SUM(total_income) AS total_income,
        SUM(total_expenses) AS total_expenses,
        SUM(total_investments) AS total_investments,
        SUM(total_savings) AS total_savings,
        SUM(total_debts) AS total_debts
    FROM (
        SELECT 
            DATE_FORMAT(income_date, '%Y-%m') AS month_year,
            SUM(income_amount) AS total_income,
            0 AS total_expenses,
            0 AS total_investments,
            0 AS total_savings,
            0 AS total_debts
        FROM income
        WHERE DATE_FORMAT(income_date, '%Y-%m') BETWEEN start_month AND end_month
        GROUP BY month_year
        
        UNION ALL 
        
        SELECT 
            DATE_FORMAT(expense_date, '%Y-%m') AS month_year, 
            0 AS total_income,
            SUM(expense_amount) AS total_expenses,
            0 AS total_investments,
            0 AS total_savings,
            0 AS total_debts
        FROM expenses
        WHERE DATE_FORMAT(expense_date, '%Y-%m') BETWEEN start_month AND end_month
        GROUP BY month_year
                
        UNION ALL 
        
        SELECT 
            DATE_FORMAT(investment_date, '%Y-%m') AS month_year, 
            0 AS total_income, 
            0 AS total_expenses, 
            SUM(investment_amount) AS total_investments,
            0 AS total_savings,
            0 AS total_debts
        FROM investments
        WHERE DATE_FORMAT(investment_date, '%Y-%m') BETWEEN start_month AND end_month
        GROUP BY month_year
        
        UNION ALL 
        
        SELECT 
            DATE_FORMAT(saving_date, '%Y-%m') AS month_year, 
            0 AS total_income, 
            0 AS total_expenses,
            0 AS total_investments,
            SUM(saving_amount) AS total_savings,
            0 AS total_debts
        FROM savings
        WHERE DATE_FORMAT(saving_date, '%Y-%m') BETWEEN start_month AND end_month
        GROUP BY month_year
        
        UNION ALL 
        
        SELECT 
            DATE_FORMAT(debt_date, '%Y-%m') AS month_year, 
            0 AS total_income, 
            0 AS total_expenses, 
            0 AS total_investments,
            0 AS total_savings,
            SUM(debt_amount) AS total_debts
        FROM debts
        WHERE DATE_FORMAT(debt_date, '%Y-%m') BETWEEN start_month AND end_month
        GROUP BY month_year
    ) AS financial_data
    GROUP BY month_year
    ORDER BY month_year;
END //
DELIMITER ;

CALL GetFinancialHealth2('2024-01', '2024-01');
CALL GetFinancialHealth2('2024-01', '2024-03');	



# FOR PORTFOLIO PRESENTATION
CALL GetFinancialHealth2('2024-01', '2024-12');

select expense_category, SUM(expense_amount) as total_expenses
from expenses
group by expense_category 
order by total_expenses desc
;

select
	SUM(investment_return) as total_return,
    SUM(investment_amount) as total_investment,
    SUM(investment_return) - SUM(investment_amount) as ROI,
    FORMAT(((SUM(investment_return) - SUM(investment_amount)) /  SUM(investment_amount)) * 100,2) as ROI_percentage
from investments
;

select 
    SUM(debt_return) as total_debt_return,
    SUM(debt_amount) as total_debt_amount,
    SUM(debt_return) - SUM(debt_amount) as interest,
    FORMAT(((SUM(debt_return) - SUM(debt_amount)) /  SUM(debt_amount)) * 100,2) as interest_percentage
from debts
;

select
	(select SUM(income_amount) from income)
	- (select SUM(expense_amount) from expenses)
    + (select SUM(investment_amount) from investments) 
    + (select SUM(saving_amount) from savings) 
    - (select SUM(debt_amount) from debts) as net_worth
;

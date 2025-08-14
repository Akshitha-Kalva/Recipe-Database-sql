-- create table for recipes
create table recipes (
    id integer primary key auto_increment,
    name varchar(100),
    ingredients text,
    cooking_time int -- in minutes
);

-- insert some sample recipes
insert into recipes (name, ingredients, cooking_time) values
('Veg Fried Rice', 'Rice, Carrot, Beans, Soy Sauce', 20),
('Chicken Curry', 'Chicken, Onion, Tomato, Spices', 40),
('Pasta Salad', 'Pasta, Tomato, Cucumber, Dressing', 15),
('Omelette', 'Eggs, Onion, Tomato, Green Chilli', 10),
('Grilled Sandwich', 'Bread, Cheese, Tomato, Butter', 8);

-- find recipes with cooking time under 30 minutes
select name, cooking_time
from recipes
where cooking_time < 30;

-- search recipes containing 'Tomato'
select name, ingredients
from recipes
where ingredients like '%Tomato%';
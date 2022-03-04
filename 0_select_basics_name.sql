
-- 0.0 Modify it to show the population of Germany
Select name,population from world where name in ('sweden', 'norway', 'denmark');

-- 0.1 Show the name and the population for 'Sweden', 'Norway' and 'Denmark'.
Select name,area from world where area between 200000 and 250000;

-- 0.2 Show the name and the extension where the capital is an extension of name of the country.
select name, replace(capital, name, '') from world where capital like concat(name, '_%')

-- 1.15 Find the capital and the name where the capital is an extension of name of the country.
select capital,name from world where capital like concat('%', name, '_%')

-- 1.13 Find the capital and the name where the capital includes the name of the country.
Select capital, name  from world where capital like concat('%',name,'%')

-- 1.12 Find the country where the capital is the country plus "City".
select name from world where capital = concat(name, ' City')

-- 1.11 Find the country where the name is the capital city.
select name from world where name = capital

-- 1.10 Find the countries that have exactly four characters.
select name from world where name like '____'

-- 1.09 Find the countries that have two "o" characters separated by two others.
select name from world where name like '%o__o%'

-- 1.08 Find the countries that have "t" as the second character.
select name from world where name like '_t%'

-- 1.07 Find the countries that have three or more a in the name
SELECT name FROM world  WHERE name LIKE '%a%a%a%'

-- 1.06 Find the country that has oo in the name
Select name from world where name like '%oo%';

-- 1.05 Find the countries that start with C and end with ia
Select name from world where name like 'C%ia';

-- 1.04 Find the countries that end with land
Select name from world where name like '%land'

-- 1.03 Find the countries that contain the letter x
Select name from world where name like '%x%'

-- 1.02 Find the countries that end with y
Select name from world where name like '%y';


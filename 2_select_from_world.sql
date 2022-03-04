-- 2.13 Find the country that has all the vowels and no spaces in its name
select name from world where name not like '% %'
                         and name like '%a%'
                         and name like '%e%'
                         and name like '%i%'
                         and name like '%o%'
                         and name like '%u%'

-- Show the name and the capital where the first letters of each match.
-- 2.12 Don't include countries where the name and the capital are the same word
select name,capital from world where Left(name,1) = Left(capital,1) and name <> capital

-- 2.11 Show the name and capital where the name and the capital have the same number of characters
select name, capital from world where Length(name) = Length(capital)

-- 2.10 Show per-capita GDP for the trillion dollar countries to the nearest $1000
select name, round(gdp/population,-3) from world where gdp > 1000000000000

-- 2.09 For South America show population in millions and GDP in billions both to 2 decimal places
select name, Round(population/1000000,2), Round(gdp/1000000000,2) from world where continent = 'South America'

-- 2.08 Exclusive OR (XOR). Show the countries that are big by area (more than 3 million) or
-- big by population (more than 250 million) but not both
select name, population, area from world where (population > 250000000 and area < 3000000)
                                            or (population < 250000000 and area > 3000000)

-- 2.07 Show the countries that are big by area or big by population. Show name, population and area
select name, population, area from world where population > 250000000 or area > 3000000

-- 2.06 Show the countries which have a name that includes the word 'United'
select name from world where name like '%United%'

-- 2.05 Show the name and population for France, Germany, Italy
select name, population from world where name in ('France', 'Germany', 'Italy')

-- 2.04 Show the name and population in millions for the countries of the continent 'South America'.
-- Divide the population by 1000000 to get population in millions
select name, population/1000000 from world where continent = 'South America'

-- 2.03 Give the name and the per capita GDP for those countries with a population of at least 200 million
select name, gdp/population from world where population > 200000000

-- 2.02 Show the name for the countries that have a population of at least 200 million
select name from world where population > 200000000

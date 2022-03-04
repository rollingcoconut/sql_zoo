-- 4.10 Some countries have populations more than three times that of all of their neighbours (in the same continent). Give the countries and continents
select name, continent from world c1
where population >=
      ALL(select 3 * population from world c2
      where c1.continent = c2.continent and c1.name <> c2.name)

-- 4.09 Find the continents where all countries have a population <= 25000000. Then find the names of the countries associated with these continents. Show name, continent and population
select name, continent, population from world c1
where 25000000 > ALL(select population from world c2 where c1.continent = c2.continent)

-- 4.08 List each continent and the name of the country that comes first alphabetically
select continent, name from world c1
where name <= ALL(select name from world c2 where c1.continent = c2.continent)

-- 4.07 Find the largest country (by area) in each continent, show the continent, the name and the area
select  continent, name, area from world c1
where area >= ALL(select area from world c2 where c1.continent = c2.continent)

-- 4.06 Which countries have a GDP greater than every country in Europe?
select name from world
where gdp > (select max(gdp) from world where continent = 'Europe')

-- 4.05 Show the name and the population of each country in Europe. Show the population as a percentage of the population of Germany
select name, concat(round(population/(select population from world where name = 'Germany') * 100), '%')
from world where continent = 'Europe'

-- 4.04 Which country has a population that is more than Canada but less than Poland? Show the name and the population
select name, population from world
where population > (select population from world where name = 'Canada')
  and population < (select population from world where name = 'Poland')

-- 4.03 List the name and continent of countries in the continents containing either Argentina or Australia. Order by name of the country
select name, continent from world
where continent in (select continent from world where name in ('Argentina', 'Australia'))
order by name

-- 4.02 Show the countries in Europe with a per capita GDP greater than 'United Kingdom'
select name from world
where continent = 'Europe' and gdp/population >
                               (select gdp/population from world where name = 'United Kingdom')

-- 4.01 List each country name where the population is larger than that of 'Russia'
select name from world
where population > (select population from world where name = 'Russia')

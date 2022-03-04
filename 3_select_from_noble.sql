-- 3.14 Show the 1984 winners and subject ordered by subject and winner name;
-- list Chemistry and Physics last
select winner,subject from nobel where yr = 1984
order by subject in ('Physics', 'Chemistry'), subject, winner

-- 3.13 List the winners, year and subject where the winner starts with Sir.
-- Show the the most recent first, then by name order
Select winner, yr, subject from nobel where winner like 'Sir%' order by yr desc, winner

-- 3.12 Find all details of the prize won by EUGENE O'NEILL
select * from nobel where winner = 'EUGENE O''NEILL';

-- 3.11 Find all details of the prize won by PETER GRÜNBERG
select * from nobel where winner like 'PETER GRÜNBERG'

-- 3.10 Show year, subject, and name of people who won a 'Medicine' prize in an early year (before 1910, not including 1910)
-- together with winners of a 'Literature' prize in a later year (after 2004, including 2004)
select yr, subject, winner from nobel
where (subject = 'Medicine' and yr < 1910) or
    (subject = 'Literature' and yr >= 2004)

-- 3.09 Show the year, subject, and name of winners for 1980 excluding Chemistry and Medicine
select yr, subject, winner from nobel where subject not in ('Chemistry', 'Medicine')  and yr = 1980

-- 3.08 Show the year, subject, and name of Physics winners for 1980 together with the Chemistry winners for 1984
select yr, subject, winner from nobel where (subject = 'Physics' and yr = 1980) or (subject = 'Chemistry' and yr = 1984)

-- 3.07 Show the winners with first name John
select winner from nobel where winner like 'John%'

-- 3.05 Show all details (yr, subject, winner) of the Literature prize winners for 1980 to 1989 inclusive
Select yr, subject, winner from nobel where subject = 'Literature' and yr >= 1980 and yr <= 1989

-- 3.04 Give the name of the 'Peace' winners since the year 2000, including 2000
Select winner from nobel where yr >= 2000 and subject = 'Peace'

-- 3.03 Show the year and subject that won 'Albert Einstein' his prize
select yr, subject from nobel where winner = 'Albert Einstein'

-- 3.02 Show who won the 1962 prize for Literature
select winner from nobel where yr = 1962 and subject = 'Literature'

-- 3.01 Change the query shown so that it displays Nobel prizes for 1950
select yr, subject, winner from nobel where yr = 1950


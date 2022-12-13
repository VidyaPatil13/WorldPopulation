/*-------------------------------- Challanges -------------------------------------------*/

/* We need country with highest population */
-- We use max() function
select country, population 
from cia_factbook 
where population = 
(select max(population) from cia_factbook);

/* We need to find out Country with least population */
-- We use min() function
select country, population 
from cia_factbook 
where population = 
(select min(population) from cia_factbook);

/* We need to find out country having the highest population growth */
-- We use max() functin on population growth rate
select country, population_growth_rate 
from cia_factbook 
where population_growth_rate = 
(select max(population_growth_rate) from cia_factbook);


/* Here we need country with high density population */
-- high density using order by and limit
select country, area, population, (population/area) 
as population_density 
from cia_factbook 
order by (population/area)
desc limit 1;

--  high density by max() function
select country, area, population,(population/area) 
as population_density
from cia_factbook
where (population/area) = 
(select max(population/area) from cia_factbook);
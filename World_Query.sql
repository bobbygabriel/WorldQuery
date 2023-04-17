use `world`;

-- Retrieve all of the information from city --
select * from City;

-- Retrieve all of the information from country --
select * from Country;

-- Retrieve the number of records city has
select count(*) from City;

-- Retrieve set of records where population is more than 7 million in City --
select * from City where Population > 7000000;

-- Retrieve set of records where population is more than 7 million in Country --
select * from Country where Population > 7000000;

-- Retrieve Name and HeadOfState name where population is more than 5 million and life expectancy is 70 in Country -- 
select Name, HeadOfState from Country where Population > 5000000 and LifeExpectancy = 70;

-- Retrieve names and population from the caribbean region in Country --
select Name, Population from Country where Region = 'Caribbean';

-- Do the same thing as above, but in descending order by population
select Name, Population from Country where Region = 'Caribbean' order by Population desc;

-- Give name and perCapita GNP for countries with a population greater than or equal to 200 million and perCapita GNP greater than or equal to .005 -- 
select Name, GNP/Population as 'perCapitaGNP' from Country where Population >= 200000000 having perCapitaGNP >= .005;

-- Retrieve name and population for france, germany, and italy --
select Name, Population from Country where Name = 'France' or Name = 'Germany' or Name ='Italy';

-- Retrieve countries that have an area of more than 3 million sq km or population of more than 250 million. Show the name, population, and area --
select Name, Population, SurfaceArea from Country where SurfaceArea > 3000000 or Population > 250000000;

-- Retrieve the name of 3 countries which are the least populated out of a list of countries who's population is above 40,000 people -- 
select Name, Population from Country where Population > 40000 order by Population limit 3;

-- Retrieve populations of countries who's name contains U.S. --
select Name, Population from Country where Name like '%U.S.%';

-- Retrieve items in Country where head of state's name is 'bush' -- 
select * from Country where HeadofState like '%bush%';

-- Retrieve records in Country where head of state's name ends with 'II' --
select * from Country where HeadofState like '%II';

-- Retrieve records in Country where head of state's name ends with 'I' --
select * from Country where HeadofState like '%i';

-- Retrieve records in Country where head of state's name ends with 'I' and the country starts with 'U' --
select * from Country where HeadofState like '%i' and Name like 'U%';

-- Retrieve country with the lowest population -- 
select Name, Population from Country where Population = (Select min(population) from Country);

-- Retrieve city name with maximum population -- 
select Name from City where Population = (Select min(population) from City);

-- Retrieve the language spoken for cities starting with UZ -- 
select c.Name, l.Language from City c join CountryLanguage l on c.CountryCode=l.CountryCode where c.Name like 'UZ%';










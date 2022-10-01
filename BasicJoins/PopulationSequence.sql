-- Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.

SELECT SUM(CITY.POPULATION)
FROM CITY
    JOIN COUNTRY ON CITY.COUNTRYCODE = COUNTRY.CODE
WHERE CONTINENT = "ASIA";

-- Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.

-- Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

SELECT City.Name
FROM CITY
    JOIN COUNTRY ON COUNTRY.CODE = CITY.COUNTRYCODE
WHERE CONTINENT = "AFRICA";

-- Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) 
-- and their respective average city populations (CITY.Population) rounded down to the nearest integer.

SELECT Country.Continent, FLOOR(AVG(City.Population))
FROM Country
    JOIN CITY ON Country.Code = City.countrycode
Group BY Country.Continent
use cars;
-- Read Car data--
select * from car_dekho;
-- Total Cars: To get a count total record--
select count(*) from car_dekho; 
output: 7927
-- The manager ask the employee how many will be availbale in 2023--
select count(*) from car_dekho 
where year = 2023;
Output: 6 
-- The manager ask the employee how many will be availbale in 2020, 2021, 2022--
select count(*) from car_dekho 
where year in (2020, 2021, 2022)
group by year;
-- Clint asked me to print the total of all cars by year,I dont see all the details--
select year, count(*) from car_dekho 
group by year
-- Clint ask to car dealers how many diesel cars will there in 2020?--
select count(*) from car_dekho 
where Year = 2020 and fuel = "Diesel";
-- The manager told the employee to give a print all the cars (petrol, diesel and CNG) come by all year--
select year, count(*) from car_dekho 
where fuel = "Petrol" or fuel = "Diesel" or Fuel = "CNG"
group by year;
output: 2023	5
        2022	7
        2021	7
        2020	74
        2019	583
        2018	806
        2017	1010
        2016	856
        2015	773
        2014	620
        2013	666
        2012	611
        2011	566
        2010	366
        2009	231
        2008	198
        2007	169
        2006	101
        2005	76
        2004	51
        2003	37
        2002	19
        2001	6
        2000	16
        1999	14
        1998	9
        1997	9
        1996	2
        1995	1
        1994	2
-- Manager said there were more than cars in a given year, which year had more than 100 cars ?--  
select year, count(*) from car_dekho 
group by year 
having count(*)>100;
-- The manager said to the employee all the cars details B/W 2015 & 2023; we need complete list --
select count(*) from car_dekho where year between 2015 and 2023;
-- The manager said to the employee all the cars details b/w 2015 to 2023 we need cpmlete list;
select * from car_dekho 
where year between 2015 and 2023;


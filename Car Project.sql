use cars;
-- Read Car data--
select * from car_dekho;
-- Total Cars: To get a count total record--
select count(*) from car_dekho; 
-- The manager ask the employee how many will be availbale in 2023--
select count(*) from car_dekho 
where year = 2023;
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
-- Manager said there were more than cars in a given year, which year had more than 100 cars ?--  
select year, count(*) from car_dekho 
group by year 
having count(*)>100;


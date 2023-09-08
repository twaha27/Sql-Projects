use cars;
use music_database;
 # Who is the senior most employee based on the job title#
 select * from employee
 order by levels desc limit 1
 # Which countries have most Invoices#
  select * from invoice;
  select count(*), billing_country from invoice 
  group by billing_country;
  # what are top 3 values of total invoice #
select * from invoice
order by total desc
limit 3;
## Which city has the best ustomers ? We would like to throw a promotional music festival in the city we made the most money. 
# Write a query that returns one city tha has the highest sum of invoice totals. Return both the city name & sum of all invoices totals#
select sum(total) as Invoice_total, billing_city
from invoice
group by billing_city
order by Invoice_total desc;
# Who is the best customer? The cutomer who has spent the money will be delared the best customer. Write query that returns the person who has spent the most money #
select customer.customer_id, customer.first_name, customer.last_name
from customer 
join invoice on customer.customer_id = invoice.customer_id
group by customer.customer_id, customer.first_name, customer.last_name
order by total desc
limit 1;
# Write query to return the email, first name, last name &  Genre of all rock music listners. return your liat ordered alphabetically by email starting with A##
select distinct email, first_name, Last_name
from customer
join invoice on customer.customer_id = invoice.customer_id
join invoice_line on invoice.invoice_id = invoice_line.invoice_id
where track_id in(
	select track_id from track 
	join genre on track.genre_id = genre.genre_id
	where genre.name like 'Rock'
)
order by email;
# Lets invite the artist who have written the most rock music in our dataset. Write a query that returns the artist name and total track count of the 10 rock bands##
select artist.artist_id, artist.name, count(artist.artist_id) as Number_of_Songs
from track
join album2 on album2.album_id = track.album_id
join artist on artist.artist_id = album2.artist_id 
join genre on genre.genre_id = track.genre_id
where genre.name like 'Rock'
group by artist.name, artist.artist_id
order by Number_of_Songs desc
limit 02;
# Return all the track names that have a song lenght longer than 
# the avg. song lenght. return the name and millisecond for eah track
# order by the song lenght with the longest songs listed first#
select name, milliseconds from track
where milliseconds > ( select avg(milliseconds) as avg_track_lenght 
from track)
order by milliseconds desc
limit 05;
 


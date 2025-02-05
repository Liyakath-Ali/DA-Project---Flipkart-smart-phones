create database DAproject;
use daproject;

#query to display the display size of smart phones whose size is greater than 16
select * from flipkart_smartphones where display_size>16;

#query to display mobiles whose price is less than 40000 and ratings greater than 4.0
select brand,discounted_price,ratings from flipkart_smartphones where discounted_price<=40000 and ratings>4 order by brand;

#query to display mobiles which have reviews more than 500
select brand,model,discounted_price,ratings from flipkart_smartphones where reviews>500 order by brand;

#query to display mobiles whose processor starts with 'Qualcomm' and rating>4.2
select * from flipkart_smartphones where processor like 'Qualcomm%' and ratings>4.2 order by brand;

#query to display max price of each mobile according to their brand
select brand, max(discounted_price) as highest_price from flipkart_smartphones group by brand order by highest_price desc;

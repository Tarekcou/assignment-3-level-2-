1.
select match_id,fixture, base_ticket_price::int from matches 
  where match_status='Available' and tournament_category='Champions League'

2. 
select user_id, full_name, email from users 
where full_name Ilike 'Tanvir%' or full_name Ilike '%Haque%'

3.
select booking_id, user_id, match_id, coalesce(payment_status,'Action Required') as systematic_status from bookings 
where payment_status is null 

4.

select b.booking_id, u.full_name, m.fixture, b.total_cost::INT from bookings b
join users u on b.user_id= u.user_id
join matches m on b.match_id=m.match_id

5.
select u.user_id,u.full_name, b.booking_id from users u 
left join bookings b on u.user_id=b.user_id

6.

select booking_id,match_id,total_cost::INT from bookings
where total_cost> (select avg(total_cost) from bookings)


7.
select  match_id,fixture,base_ticket_price::INT from matches
order by base_ticket_price desc limit 2 offset 1

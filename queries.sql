-- write your queries here
select o.id, o.first_name, o.last_name, v.id, v.make, v.model, v.year, v.price, v.owner_id 
from vehicles as v
right join owners as o
  on o.id = v.owner_id;

--
select o.first_name, o.last_name, count(v.owner_id) 
  from vehicles as v
  join owners as o 
  on o.id = v.owner_id
  group by o.first_name, o.last_name
  order by o.first_name;
  --
  select o.first_name, o.last_name, avg(v.price) as average_price, count(*)
    from vehicles as v
    join owners as o
    on o.id = v.owner_id
    group by o.first_name, o.last_name
    having count(*) > 1 and avg(v.price) > 10000
    order by o.first_name desc;

    
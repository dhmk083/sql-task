select * from (
  select
    u.name username, 
    c.name carname,
    o.name ordername,
    row_number() over(partition by u.id order by u.id, o.id desc) row
  from users u 
  inner join cars c on (u.car = c.id)
  inner join (
    select o.name, o.userid, o.id
    from orders o 
    where o.completed = 1
  ) o on (u.id = o.userid)
) _ 
where row <= 3;

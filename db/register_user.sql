insert into users (email, password)
values ($1, $2)
returning *;


--instead of two insert statements https://stackoverflow.com/questions/20561254/insert-data-in-3-tables-at-a-time-using-postgres
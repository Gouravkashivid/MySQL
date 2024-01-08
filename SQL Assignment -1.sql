CREATE TABLE ages (
    name VARCHAR(128),
    age INT
);

DELETE FROM Ages;
insert into ages (name, age) values('Mare',28);
insert into ages (name, age) values ('Otto',33);
insert into ages (name, age) values ('Fyn', 31);
insert into ages (name, age) value ('Neshawn', 17);

SELECT 
    HEX(name || age) AS X
FROM
    Ages
ORDER BY X


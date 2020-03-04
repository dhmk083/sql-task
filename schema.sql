create table cars (
  id int identity(1,1) primary key,
  name varchar(255) not null
);

create table users (
  id int identity(1,1) primary key,
  name varchar(255) not null,
  car int foreign key references cars(id)
);

create table orders (
  id int identity(1,1) primary key,
  name varchar(255) not null,
  completed bit not null,
  userid int not null foreign key references users(id)
);

insert into cars(name) values('Ford');
insert into cars(name) values('Opel');
insert into cars(name) values('GAZ');

insert into users(name,car) values('Vasa',1);
insert into users(name,car) values('Peta',2);
insert into users(name,car) values('Kola',3);

insert into orders(name,userid,completed) values('Wash', 1, 0);
insert into orders(name,userid,completed) values('Mice', 2, 1);
insert into orders(name,userid,completed) values('Gate', 3, 1);
insert into orders(name,userid,completed) values('Jump', 1, 1);
insert into orders(name,userid,completed) values('Lake', 3, 0);
insert into orders(name,userid,completed) values('Roar', 2, 1);
insert into orders(name,userid,completed) values('Care', 2, 1);
insert into orders(name,userid,completed) values('Aunt', 1, 0);
insert into orders(name,userid,completed) values('Food', 2, 1);
insert into orders(name,userid,completed) values('Lego', 3, 1);
insert into orders(name,userid,completed) values('Mini', 3, 1);
insert into orders(name,userid,completed) values('Task', 1, 1);
insert into orders(name,userid,completed) values('Tele', 3, 0);
insert into orders(name,userid,completed) values('Very', 2, 1);
insert into orders(name,userid,completed) values('Zero', 3, 1);
insert into orders(name,userid,completed) values('Yard', 1, 0);
insert into orders(name,userid,completed) values('Goto', 2, 1);

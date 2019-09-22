#  создание таблицы на основе класса com.github.sergio5990.servlet.example.model.User
create table user
(
  id         int(64) auto_increment primary key,
  first_name varchar(255) not null,
  last_name  varchar(255) not null,
  phone      varchar(63)  not null,
  email      varchar(63)  not null
);
#  вставка первой записи
INSERT INTO ita.user (first_name, last_name, phone, email)
VALUES ('sergey', 'kruk', '+375292504799', 'sergio5990kruk@gmail.com');
#  создание таблицы на основе класса com.github.sergio5990.servlet.example.model.AuthUser
create table auth_user
(
  id       int auto_increment primary key,
  login    varchar(255) not null,
  password varchar(255) not null,
  role     varchar(63)  null,
  user_id  int(64)      not null,
  constraint auth_user_user_id_uindex unique (user_id),
  constraint auth_user_user_id_fk foreign key (id) references user (id)
);
#  вставка первой записи в таблицу auth_user
INSERT INTO ita.auth_user (login, password, role, user_id)
VALUES ('sergio5990', '12345678', 'PROFESSOR', 1);

#  поиск по роли
select * from auth_user where role = 'PROFESSOR';

#  изменяем столбец в таблице
alter table user modify column email varchar(255) not null;

select password from auth_user where role = 'PROFESSOR';

INSERT INTO ita.user (first_name, last_name, phone, email)
VALUES ('ivan', 'ivanov', '+375292504799', 'sergio5990kruk@tut.by');

select phone from user
select distinct phone from user
select * from user where first_name = 'ivan'
select * from user where first_name in ('ivan', 'sergey')
select * from user where email like '%kruk%' and last_name = 'ivanov'
select * from user order by id desc

select count(*) from user

create table salary
(
  id       int auto_increment primary key,
  money    int(64) not null)

insert into salary (money)
values (40), (50),(60), (10);

select sum(money) from salary
select min(money) from salary
select avg(money) from salary
select avg(money), avg(id) from salary


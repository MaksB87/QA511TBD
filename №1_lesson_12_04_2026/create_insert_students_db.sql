-- use students511.db;

CREATE TABLE if not exists Students(
id integer PRIMARY KEY AUTOINCREMENT,
firstname text,
lastname text,
birthdate date,
email text UNIQUE
);

insert into Students (lastname,firstname,birthdate,email) values
('Андреев', 'Денис','1986-12-28','adenis@gmail.com'),
('Вакарин', 'Евгений','1989-12-09','vaqev@gmail.com'),
('Гаврилов','Максим','1998-06-01','maxgavrilov@gmail.com'),
('Гайнутдинов', 'Александр','1997-06-02','alexg97@gmail.com'),
('Глебова', 'Александра','1998-07-03','glebova@gmail.com'),
('Жданов', 'Сергей','2001-06-15','gdanovs@gmail.com'),
('Иванов', 'Дмитрий','2000-05-16','ivanovd@gmail.com'),
('Когут', 'Александр','1999-11-05','kogutalex@gmail.com'),
('Коренев', 'Максим','1997-04-11','corenevmax@gmail.com'),
('Красноперов', 'Лев','1989-05-20','redlion@mail.ru'),
('Потехин', 'Сергей','2001-06-26','potehins@mail.ru'),
('Пшенина', 'Алена','2003-07-13','pshenina@mail.ru'),
('Шевченко', 'Никита','2010-08-14','nickshevchenko@mail.ru'),
('Шпакова', 'Екатерина','2006-01-14','shpakekaterina@gmail.com');
CREATE table if not exists [Groups](
id integer primary key,
GroupName text,
FacultyId integer
);

insert into Groups values(1,'QA511',1),(2,'QA524',1),(3,'QA523',1);

CREATE TABLE if not exists Students(
id integer PRIMARY KEY AUTOINCREMENT,
firstname text,
lastname text,
birthdate date,
email text UNIQUE,
GroupID integer,
FOREIGN key (GroupID)  REFERENCES [Groups](id)
);

insert into Students (lastname,firstname,birthdate,email,GroupId) values
('Андреев', 'Денис','1986-12-28','adenis@gmail.com',1),
('Вакарин', 'Евгений','1989-12-09','vaqev@gmail.com',1),
('Гаврилов','Максим','1998-06-01','maxgavrilov@gmail.com',1),
('Гайнутдинов', 'Александр','1997-06-02','alexg97@gmail.com',1),
('Глебова', 'Александра','1998-07-03','glebova@gmail.com',1),
('Жданов', 'Сергей','2001-06-15','gdanovs@gmail.com',1),
('Иванов', 'Дмитрий','2000-05-16','ivanovd@gmail.com',1),
('Когут', 'Александр','1999-11-05','kogutalex@gmail.com',1),
('Коренев', 'Максим','1997-04-11','corenevmax@gmail.com',1),
('Красноперов', 'Лев','1989-05-20','redlion@mail.ru',1),
('Потехин', 'Сергей','2001-06-26','potehins@mail.ru',1),
('Пшенина', 'Алена','2003-07-13','pshenina@mail.ru',1),
('Шевченко', 'Никита','2010-08-14','nickshevchenko@mail.ru',1),
('Шпакова', 'Екатерина','2006-01-14','shpakekaterina@gmail.com',1),
('Анатолий','Дукалис','1962-01-12','anatolidukalis@gmail.com',2),
('Сексот','Цыплаков','1975-02-13','larin01@gmail.com',2),
('Комиссар','Жюв','1923-03-20','stop_fantomas@gmail.com',3);
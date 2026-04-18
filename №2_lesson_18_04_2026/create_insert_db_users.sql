create table if not exists Users(
id integer primary key,
login varchar(15) UNIQUE,
email varchar(30) unique,
pass text,
birthdate date
);

-- insert into Users values
-- (1,'superadmin','super@gmail.com','tcgdgf','2000-11-10'),
-- (20,'john','john@gmail.com','tcgdgf','2000-11-10'),
-- (330,'peterparker','spidy@gmail.com','fvbgvhh','2010-12-20');

select *from Users;
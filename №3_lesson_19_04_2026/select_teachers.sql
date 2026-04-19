-- SELECT * FROM Teachers;


--переименование столбца
-- alter Table Teachers rename column Birtdate to Birthdate;

--переименование таблицы
-- alter table Teachers rename to Teachers511;

--добавление столбца 
-- alter table Teachers511 add column hours varchar(20);

--удаление столбца 
-- alter table Teachers511 drop column hours;


-- SELECT * FROM Teachers511;

-- select name,
-- cast(strftime('%Y','now')-strftime('%Y',Birthdate) as int)  
-- Age,Department,[Groups],Subject
-- from Teachers511;

-- select name,
-- cast(strftime('%Y','now')-strftime('%Y',Birthdate) as int)+10  
-- [Age plus 10],Department,[Groups],Subject
-- from Teachers511;

-- select name,
-- cast(strftime('%Y','now')-strftime('%Y',Birthdate) as int) 
-- Age ,Department,[Groups],Subject
-- from Teachers511 order by Age;

-- select name,
-- cast(strftime('%Y','now')-strftime('%Y',Birthdate) as int) 
-- Age ,Department,[Groups],Subject
-- from Teachers511 order by Age DESC;

-- -- 1) максимальный возраст
-- select name,
-- cast(strftime('%Y','now')-strftime('%Y',Birthdate) as int) 
-- Age ,Department,[Groups],Subject
-- from Teachers511 order by Age DESC limit 1;
-- --2) максимальный возраст
-- select name,
-- max(cast(strftime('%Y','now')-strftime('%Y',Birthdate) as int)) 
-- MaxAge ,Department,[Groups],Subject
-- from Teachers511;

-- -- 1) минимальный возраст
-- select name,
-- cast(strftime('%Y','now')-strftime('%Y',Birthdate) as int) 
-- Age ,Department,[Groups],Subject
-- from Teachers511 order by Age ASC limit 1;

-- -- 2) минимальный возраст
-- select name,
-- min(cast(strftime('%Y','now')-strftime('%Y',Birthdate) as int)) 
-- MinAge ,Department,[Groups],Subject
-- from Teachers511 ;


-- select name,
-- cast(strftime('%Y','now')-strftime('%Y',Birthdate) as int) 
-- Age ,Department,[Groups],Subject
-- from Teachers511 where [Groups] in ('30PR11','29PR21','32PPS11')
--  order by Age DESC;


select*from teachers511;

select*from teachers511 where birthdate between '1975-02-07' and '1979-07-30';

select* from teachers511 where name not between 'H' and 'M';

/*
%-соответствует любой последовательности символов от 0 и более;
_ - любой один символ;
[] - последовательность или диапазон возможных символов;
[^] - последовательность или диапазон символов, которые должны отсутствовать;
*/
select * from Teachers511 where Name like '%nie%';
select * from Teachers511 where Name like 'Sophia%';
select*from Teachers511 where [Groups] like '%PR%';
select*from Teachers511 where [Groups] like '_2%';
select*from Teachers511 where [Groups] like '___P%';
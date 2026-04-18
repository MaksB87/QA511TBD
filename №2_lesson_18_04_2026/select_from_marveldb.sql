-- select*from MarvelCharacters;
-- select count(*) [кол-во персонажей] from MarvelCharacters;
-- select name as [Имя персонажа],(2026-Year) as [сколько лет прошло с появления] from MarvelCharacters;

-- select page_id||' страница - '||Name from  MarvelCharacters;
-- select name||' '||year from MarvelCharacters;
-- select cast(year as date) from MarvelCharacters;

-- select * from MarvelCharacters limit 40;
-- select * from MarvelCharacters limit 10 offset 20;
-- select * from MarvelCharacters limit 31 offset 59;
-- select * from MarvelCharacters where id between 60 and 90;

-- select Distinct Hair from MarvelCharacters;

-- where(=,
-- <> !=,
-- >,
-- >=,
-- !>,
-- <,
-- !<
-- <=
-- )
-- select Distinct Hair from MarvelCharacters where Hair is not null;
-- select Distinct Hair from MarvelCharacters where Hair<>'null' ;

-- select Hair from MarvelCharacters where length(hair)<=5;
-- select count(hair) from MarvelCharacters where length(hair)<=5;
-- select count(distinct hair) from MarvelCharacters where length(hair)<=5;

-- select count(*) from MarvelCharacters where id%2=0;
-- select name from MarvelCharacters where year%2!=0;
-- select * from MarvelCharacters where hair is null;
-- select *from MarvelCharacters where hair is null and  not eye='Brown Eyes';

-- select * from MarvelCharacters  where  Year is not null order by Year;
-- select * from MarvelCharacters  where  Year is not null order by Year asc;

-- select * from MarvelCharacters  where  Year is not null order by Year desc;


-- select  name, identify from MarvelCharacters order by name desc, identify asc;


-- select *from Marvelcharacters;
-- select * from Marvelcharacters where eye='Blue Eyes' or eye='Green Eyes' or eye='Red Eyes' ;
select * from Marvelcharacters where eye in ('Blue Eyes','Green Eyes','Red Eyes') ;
select * from Marvelcharacters  where eye like 'Blue%';
select *from Marvelcharacters where name like 'Spider%' or 'spider%';
select *from Marvelcharacters where name like '%Man%';

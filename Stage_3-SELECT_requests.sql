--SELECT-запросы

-- 1.1. Название и продолжительность самого длительного трека
select Track, Duration from Track_List
where Duration =(select MAX(Duration) from Track_List);

-- 1.2. Название треков, продолжительность которых не менее 3,5 минут
select Track from Track_List
where Duration > '00:03:30'

-- 1.3. Названия сборников, вышедших в период с 2018 по 2020 год включительно
select Collection_title from Music_Collection
where Year_of_issue between 2018 and 2020

-- 1.4. Исполнители, чьё имя состоит из одного слова
select Performer from Musician_Performer
where not Performer like '%% %%';

-- 1.5. Название треков, которые содержат слово «мой» или «my»
select Track from Track_List
where Track ~~'%%My%%' or Track ~~'%%Мой%%' or Track ~~'%%my%%' or Track ~~'%%мой%%';



-- 2.1. Количество исполнителей в каждом жанре
select id_Genre as Жанр, count(*) as Исполнитель from Genre_Performer
group by id_Genre;

-- 2.2. Количество треков, вошедших в альбомы 2019–2020 годов
select count(*) as Треки_из_альбомов_2019_2020_годов from Track_List inner join Music_Collection
on Music_Collection.id = Album
where Music_Collection.Year_of_issue between 2019 and 2020;

-- 2.3. Средняя продолжительность треков по каждому альбому
select Album, AVG(Duration) as Средняя_продолжительность from Track_List
group by Track_List.Album;

-- 2.4. Все исполнители, которые не выпустили альбомы в 2020 году
select distinct Performer from Musician_Performer m 
join Performer_Album ma on m.id = ma.id_Album
join Album_list a on ma.id_Album = a.id
where Year_of_issue != 2020;

-- 2.5. Названия сборников, в которых присутствует конкретный исполнитель
select distinct Collection_title from Music_Collection c 
join Collection_Track mr on c.id = mr.id_Collection
join Track_List t on mr.id_Track = t.id
join Album_list a on t.Album = a.id
join Performer_Album ma on a.id = ma.id_Album
join Musician_Performer m on ma.id_Performer = m.id
where Performer like '300 Трактористов';


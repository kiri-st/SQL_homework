-- Наполнение таблицы

insert into Musical_Genre(id, Genre) values(1, 'Бздыкание на треугольнике');
insert into Musical_Genre(id, Genre) values(2, 'Волшебная дудка и баян');
insert into Musical_Genre(id, Genre) values(3, 'Барабан с гвоздями');

insert into Musician_Performer(id, Performer) values(1, '300 Трактористов');
insert into Musician_Performer(id, Performer) values(2, 'Бюро паники');
insert into Musician_Performer(id, Performer) values(3, 'Труляля');
insert into Musician_Performer(id, Performer) values(4, 'Чушпанские будни');

insert into Album_list(id, Year_of_issue, Album) values(1, '2019', 'Пьяные воробьи');
insert into Album_list(id, Year_of_issue, Album) values(2, '2017', 'Мама, роди меня обратно');
insert into Album_list(id, Year_of_issue, Album) values(3, '2021', 'Шуба под селёдкой');
insert into Album_list(id, Year_of_issue, Album) values(4, '2018', 'Што ни день, то хренотень');

insert into Track_List(id, Album, Duration, Track) values(1, 1, '00:03:47', 'С долбанутых спросу нет');
insert into Track_List(id, Album, Duration, Track) values(2, 4, '00:02:31', '7 пьяных ночей');
insert into Track_List(id, Album, Duration, Track) values(3, 3, '00:03:12', 'Мой любимый бурбулятор');
insert into Track_List(id, Album, Duration, Track) values(4, 2, '17:52:29', 'Как я провёл пятницу');
insert into Track_List(id, Album, Duration, Track) values(5, 1, '00:02:16', 'Что совой об пень, что пнём об сову');
insert into Track_List(id, Album, Duration, Track) values(6, 4, '00:03:51', 'Друг мой, когда сотку вернёшь?');
insert into Track_List(id, Album, Duration, Track) values(7, 2, '00:02:49', 'Поплыла кукуха, пусть земля ей пухом');

insert into Music_Collection(id, Collection_title, Year_of_issue) values(1, 'Доярки на тропе войны', '2019');
insert into Music_Collection(id, Collection_title, Year_of_issue) values(2, 'Разбитое табло', '2022');
insert into Music_Collection(id, Collection_title, Year_of_issue) values(3, 'Попутанные берега', '2018');
insert into Music_Collection(id, Collection_title, Year_of_issue) values(4, 'Коварный Флюгегехаймен', '2023');

insert into Genre_Performer(id_Genre, id_Performer) values(1, 1);
insert into Genre_Performer(id_Genre, id_Performer) values(2, 2);
insert into Genre_Performer(id_Genre, id_Performer) values(2, 3);
insert into Genre_Performer(id_Genre, id_Performer) values(3, 4);

insert into Performer_Album(id_Performer, id_Album) values(1, 3);
insert into Performer_Album(id_Performer, id_Album) values(1, 4);
insert into Performer_Album(id_Performer, id_Album) values(2, 1);
insert into Performer_Album(id_Performer, id_Album) values(2, 2);
insert into Performer_Album(id_Performer, id_Album) values(3, 4);
insert into Performer_Album(id_Performer, id_Album) values(4, 1);
insert into Performer_Album(id_Performer, id_Album) values(4, 3);

insert into Collection_Track(id_Collection, id_Track) values(1, 1);
insert into Collection_Track(id_Collection, id_Track) values(1, 2);
insert into Collection_Track(id_Collection, id_Track) values(2, 3);
insert into Collection_Track(id_Collection, id_Track) values(2, 4);
insert into Collection_Track(id_Collection, id_Track) values(3, 5);
insert into Collection_Track(id_Collection, id_Track) values(3, 6);
insert into Collection_Track(id_Collection, id_Track) values(4, 7);
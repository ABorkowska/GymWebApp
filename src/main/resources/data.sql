insert into exercises
values (1, 'Hantle', 'Klatka', 'Rozpiętki hantlami', null),
       (2, 'Hantle', 'Barki', 'Wyciskanie hantli nad głowę', null),
       (3, 'Sztanga', 'Plecy', 'Martwy ciąg', null),
       (4, 'Sztanga', 'Plecy', 'Wiosłowanie sztangą', null),
       (5, 'Sztanga', 'Barki', 'Wyciskanie sztangi', null),
       (6, 'Hantle', 'Barki', 'Wznosy hantli bokiem', null),
       (7, 'Sztanga', 'Ramiona', 'Wyciskanie francuskie sztanga', null),
       (8, 'Hantle', 'Barki', 'Arnoldki', null),
       (9, 'Sztanga', 'Nogi/Pośladki', 'Wykroki ze sztangą', null),
       (10, 'Hantle', 'Ramiona', 'Uginanie przedramienia z oparciem łokcia', null),
       (11, 'Sztanga', 'Nogi/Pośladki', 'Przysiad ze sztangą', null),
       (12, 'Guma', 'Nogi/Pośladki', 'Przysiad z gumą', null),
       (13, 'Guma', 'Nogi/Pośladki', 'Unoszenie bioder z gumą', null),
       (14, 'Guma', 'Plecy', 'Prostopadłe ściąganie gumy do bioder leżąc', null),
       (15, 'Guma', 'Plecy', 'Ściąganie gumy za kark', null),
       (16, 'Hantle', 'Plecy', 'Wiosłowanie w podporze', null),
       (17, 'Hantle', 'Klatka', 'Przenoszenie sztangielki za głowę', null),
       (18, 'Hantle', 'Barki', 'Z-Press', null),
       (19, 'Guma', 'Barki', 'Face pull z gumą', null),
       (20, 'Guma', 'Barki', 'Wznosy ramion w przód z gumą', null),
       (21, 'Hantle', 'Barki', 'Rotacje kubańskie', null),
       (22, 'Guma', 'Ramiona', 'Prostowanie ramion z gumą(triceps)', null),
       (23, 'Sztanga', 'Ramiona', 'Zginanie ramion ze sztangą nachwytem', null),
       (24, 'Hantle', 'Ramiona', 'Zginanie przedramion z hantlami w chwycie młotkowym', null),
       (25, 'Hantle', 'Klatka', 'Floor press', null),
       (26, '-', 'Klatka', 'Pompki', null),
       (27, '-', 'Ramiona', 'Pompki diamentowe', null),
       (28, '-', 'Nogi/Pośladki', 'Sumo Squat', null),
       (29, '-', 'Klatka', 'Floor press', null),
       (30, '-', 'Nogi/Pośladki', 'Zakroki skośne', null),
       (31, '-', 'Plecy', 'Skręty tułowia w siadzie równoważnym', null),
       (32, '-', 'Plecy', 'Ściąganie ramion do tyłu w opadzie', null);

insert into plans
values (1, 'Mass', 4, 450.00),
       (2, 'Mass', 8, 800.00),
       (3, 'Mass', 12, 1200.00),
       (4, 'Strength', 4, 500.00),
       (5, 'Strength', 8, 900.00),
       (6, 'Strength', 12, 1350.00),
       (7, 'Shape', 4, 430.00),
       (8, 'Shape', 8, 780.00),
       (9, 'Shape', 12, 1140.00);

INSERT INTO roles VALUES (1, 'ROLE_USER');

# insert into users
# values (1, 'margaret@gmail.com', 1,'Małgorzata', 'Sosnowska', 'margo',  null,'Margo123', null),
#        (2, 'groomy14@wp.pl', 1,'Grzegorz', 'Górny', 'Gniewko', null,'Gugudolls1', null
#        (3, 's.jasinski@prc.com', 1,'Sławomir', 'Jasiński', 'jasion', 'yes','99Jasson99',4),
#        (4, 'kamil.baranowski@o2.pl', 1,'Kamil', 'Baranowski', 'Kamson', 'yes','Kukuruku40', 1),
#        (5, 'marco_schumann@gmail.com', 1,'Marco', 'Schumann', 'Marcovsky', null,'Rabbit55', 'yes',null),
#        (6, 'andrea.sch@o2.pl', 'Andrea', 1,'Szefler', 'Andrea', null, 'Andrea333', null);


insert into users values (1,'ala.borek@wp.pl', 1, 'Ala', 'Borek', 'Masakra1', null, 'Borek', 2);

insert into trainers
values (1, 'artur.czajka@irongym.com', 'Artur', 'Czajka'),
       (2, 'mat.zasanski@irongym.com', 'Mateusz', 'Zasański'),
       (3, 'karol.bardo@irongym.com', 'Karol', 'Bardo'),
       (4, 'kamil.wolinski@irongym.com', 'Kamil', 'Wolinski'),
       (5, 'mariusz.kubackir@irongym.com', 'Mariusz', 'Kubacki'),
       (6, 'ruslana.sayek@irongym.com', 'Ruslana', 'Sayek'),
       (7, 'marzena.lang@irongym.com', 'Marzena', 'Lang');

insert into schedule
values (1, 'monday', '16:00', 'Body Shape', 'Ruslana Sayek', 6),
       (2, 'monday', '17:00', 'Kettlebells', 'Mariusz Kabacki', 5),
       (3, 'monday', '18:00', 'Body Workout', 'Mariusz Kabacki', 5),
       (4, 'monday', '19:00', 'Circuit Training', 'Karol Bardo', 3),
       (5, 'monday', '20:00', 'Weight Lifting', 'Kamil Woliński', 4),

       (6, 'tuesday', '16:00', 'Upper-Body', 'Mariusz Kabacki', 5),
       (7, 'tuesday', '17:00', 'Resistance Bands', 'Mariusz Kabacki', 5),
       (8, 'tuesday', '18:00', 'Iron Power', 'Kamil Woliński', 4),
       (9, 'tuesday', '19:00', 'Circuit Training', 'Karol Bardo', 3),
       (10, 'tuesday', '20:00', 'Gym Classes', 'Mateusz Zasański', 2),

       (11, 'wednesday', '16:00', 'Body Pump', 'Ruslana Sayek', 6),
       (12, 'wednesday', '17:00', 'Kettlebells', 'Ruslana Sayek', 6),
       (13, 'wednesday', '18:00', 'Lower-Body', 'Ruslana Sayek', 6),
       (14, 'wednesday', '19:00', 'Weight Lifting', 'Kamil Woliński', 4),
       (15, 'wednesday', '20:00', 'Crossfit', 'Artur Czajka', 1),

       (16, 'thursday', '16:00', 'Fighter Training', 'Karol Bardo', 3),
       (17, 'thursday', '17:00', 'Circuit Training', 'Karol Bardo', 3),
       (18, 'thursday', '18:00', 'Iron Power', 'Mateusz Zasański', 2),
       (19, 'thursday', '19:00', 'Strength', 'Artur Czajka', 1),
       (20, 'thursday', '20:00', 'Body Pump', 'Artur Czajka', 1),

       (21, 'friday', '16:00', 'Iron Power', 'Mateusz Zasański', 2),
       (22, 'friday', '17:00', 'Upper-Body', 'Mateusz Zasański', 2),
       (23, 'friday', '18:00', 'Lower-Body', 'Marzena Lang', 7),
       (24, 'friday', '19:00', 'Body Shape', 'Marzena Lang', 7),

       (25, 'saturday', '09:00', 'Circuit Training', 'Mariusz Kabacki', 5),
       (26, 'saturday', '10:00', 'Bootcamp', 'Mariusz Kabacki', 5),
       (27, 'saturday', '18:00', 'Weight Lifting', 'Kamil Woliński', 4),

       (28, 'sunday', '09:00', 'Gym Classes', 'Karol Bardo', 3),
       (29, 'sunday', '10:00', 'Strength', 'Mateusz Zasański', 2),
       (30, 'sunday', '16:00', 'Resistance Bands', 'Artur Czajka', 1);


insert into workouts
values (1, 3, 8, 'Mass'),
       (2, 5, 4, 'Strength'),
       (3, 15, 4, 'Shape');

# insert into plan_user
# values (4, null),
#        (1, 1);
#
# #
# # # #
# # # # # create table SPRING_SESSION(
# # # # #     primary_id            CHAR(36) NOT NULL,
# # # # #     session_id            CHAR(36) NOT NULL,
# # # # #     creation_time         BIGINT   NOT NULL,
# # # # #     last_access_time      BIGINT   NOT NULL,
# # # # #     max_inactive_interval INT      NOT NULL,
# # # # #     expiry_time           BIGINT   NOT NULL,
# # # # #     principal_name        VARCHAR(100),
# # # # #     CONSTRAINT spring_session_pk PRIMARY KEY (primary_id)
# # # # # );
# # # # #
# # # # # create table SPRING_SESSION_ATTRIBUTES(
# # # # #     session_primary_id CHAR(36)     NOT NULL,
# # # # #     attribute_name     VARCHAR(200) NOT NULL,
# # # # #     attribute_bytes    BLOB         NOT NULL,
# # # # #     CONSTRAINT spring_session_attributes_pk PRIMARY KEY (session_primary_id, attribute_name),
# # # # #     CONSTRAINT spring_session_attributes_fk FOREIGN KEY (session_primary_id) REFERENCES SPRING_SESSION (primary_id) ON DELETE CASCADE
# # # # # );
# # # #
# # # #

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
values (1, 'Mass', 4, 150.00, 450.00),
       (2, 'Mass', 8, 150.00, 800.00),
       (3, 'Mass', 12, 150.00, 1200.00),
       (4, 'Shape', 4, 150.00, 430.00),
       (5, 'Shape', 8, 150.00, 780.00),
       (6, 'Shape', 12, 150.00, 1140.00),
       (7, 'Strength', 4, 150.00, 500.00),
       (8, 'Strength', 8, 150.00, 900.00),
       (9, 'Strength', 12, 150.00, 1350.00);

INSERT INTO roles VALUES (1, 'ROLE_USER'), (2, 'ROLE_ADMIN');

insert into users(id, email, enabled,first_name, last_name, password, subscribed, username)
values (1,'margaret@gmail.com',1, 'Małgorzata','Sosnowska','$2a$10$OpIqZEOW2QSlm1KByYrGHO1c8gBrD.m3JxpHGDEImr59GVD9JidKa',null,'Margo'),
       (2,'groomy14@wp.pl',1,'Grzegorz','Górny','$2a$10$OpIqZEOW2QSlm1KByYrGHO1c8gBrD.m3JxpHGDEImr59GVD9JidKa',null,'Gniewko'),
       (3,'s.jasinski@prc.com',1,'Sławomir','Jasiński','$2a$10$OpIqZEOW2QSlm1KByYrGHO1c8gBrD.m3JxpHGDEImr59GVD9JidKa','yes','Jasson'),
       (4,'kamil.baranowski@o2.pl',1,'Kamil','Baranowski','$2a$10$OpIqZEOW2QSlm1KByYrGHO1c8gBrD.m3JxpHGDEImr59GVD9JidKa','yes','Kamson'),
       (5,'marco_schumann@gmail.com',1,'Marco','Schumann','$2a$10$OpIqZEOW2QSlm1KByYrGHO1c8gBrD.m3JxpHGDEImr59GVD9JidKa',null,'Markovsky'),
       (6,'starsky@onet.pl',1,'Adam','Starzyński','$2a$10$OpIqZEOW2QSlm1KByYrGHO1c8gBrD.m3JxpHGDEImr59GVD9JidKa','yes','Starsky'),
       (7,'andrea.sch@o2.pl',1,'Andrea','Szefler','Andrea333',null,'Andrea');

insert into trainers
values (1, 'artur.czajka@irongym.com', 'Artur Czajka'),
       (2, 'mat.zasanski@irongym.com', 'Mateusz Zasański'),
       (3, 'karol.bardo@irongym.com', 'Karol Bardo'),
       (4, 'kamil.wolinski@irongym.com', 'Kamil Wolinski'),
       (5, 'mariusz.kubackir@irongym.com', 'Mariusz Kubacki'),
       (6, 'ruslana.sayek@irongym.com', 'Ruslana Sayek'),
       (7, 'marzena.lang@irongym.com', 'Marzena Lang');

insert into schedule
values (1, 'poniedziałek', '16:00', 'Body Shape', 'Ruslana Sayek', 6),
       (2, 'poniedziałek', '17:00', 'Kettlebells', 'Mariusz Kabacki', 5),
       (3, 'poniedziałek', '18:00', 'Body Workout', 'Mariusz Kabacki', 5),
       (4, 'poniedziałek', '19:00', 'Circuit Training', 'Karol Bardo', 3),
       (5, 'poniedziałek', '20:00', 'Weight Lifting', 'Kamil Woliński', 4),

       (6, 'wtorek', '16:00', 'Upper-Body', 'Mariusz Kabacki', 5),
       (7, 'wtorek', '17:00', 'Resistance Bands', 'Mariusz Kabacki', 5),
       (8, 'wtorek', '18:00', 'Iron Power', 'Kamil Woliński', 4),
       (9, 'wtorek', '19:00', 'Circuit Training', 'Karol Bardo', 3),
       (10, 'wtorek', '20:00', 'Gym Classes', 'Mateusz Zasański', 2),

       (11, 'środa', '16:00', 'Body Pump', 'Ruslana Sayek', 6),
       (12, 'środa', '17:00', 'Kettlebells', 'Ruslana Sayek', 6),
       (13, 'środa', '18:00', 'Lower-Body', 'Ruslana Sayek', 6),
       (14, 'środa', '19:00', 'Weight Lifting', 'Kamil Woliński', 4),
       (15, 'środa', '20:00', 'Crossfit', 'Artur Czajka', 1),

       (16, 'czwartek', '16:00', 'Fighter Training', 'Karol Bardo', 3),
       (17, 'czwartek', '17:00', 'Circuit Training', 'Karol Bardo', 3),
       (18, 'czwartek', '18:00', 'Iron Power', 'Mateusz Zasański', 2),
       (19, 'czwartek', '19:00', 'Strength', 'Artur Czajka', 1),
       (20, 'czwartek', '20:00', 'Body Pump', 'Artur Czajka', 1),

       (21, 'piątek', '16:00', 'Iron Power', 'Mateusz Zasański', 2),
       (22, 'piątek', '17:00', 'Upper-Body', 'Mateusz Zasański', 2),
       (23, 'piątek', '18:00', 'Lower-Body', 'Marzena Lang', 7),
       (24, 'piątek', '19:00', 'Body Shape', 'Marzena Lang', 7),

       (25, 'sobota', '09:00', 'Circuit Training', 'Mariusz Kabacki', 5),
       (26, 'sobota', '10:00', 'Bootcamp', 'Mariusz Kabacki', 5),
       (27, 'sobota', '18:00', 'Weight Lifting', 'Kamil Woliński', 4),

       (28, 'niedziela', '09:00', 'Gym Classes', 'Karol Bardo', 3),
       (29, 'niedziela', '10:00', 'Strength', 'Mateusz Zasański', 2),
       (30, 'niedziela', '16:00', 'Resistance Bands', 'Artur Czajka', 1);

insert into classes_users (contact_number, mail, schedule_id, user_id)
values (520645014,'margaret@gmail.com', 16, 1),
       (821457569,'kamil.baranowski@o2.pl', 25, 4),
       (821457569,'kamil.baranowski@o2.pl', 8, 4);

insert into workouts
values (1, 3, 8, 'Mass'),
       (2, 5, 4, 'Strength'),
       (3, 15, 4, 'Shape');

INSERT INTO plan_order VALUES
        (1, false, null, true, 1, 4, 2),
        (2, true, 150.00, false, 6, 2, 4);

insert into user_role values(1,1),(2,1),(3,1),(4,1),(5,1),(6,1)
# #
# # # # # # #
# # # # # # # # # #
# # # # # # # # # # # create table SPRING_SESSION(
# # # # # # # # # # #     primary_id            CHAR(36) NOT NULL,
# # # # # # # # # # #     session_id            CHAR(36) NOT NULL,
# # # # # # # # # # #     creation_time         BIGINT   NOT NULL,
# # # # # # # # # # #     last_access_time      BIGINT   NOT NULL,
# # # # # # # # # # #     max_inactive_interval INT      NOT NULL,
# # # # # # # # # # #     expiry_time           BIGINT   NOT NULL,
# # # # # # # # # # #     principal_name        VARCHAR(100),
# # # # # # # # # # #     CONSTRAINT spring_session_pk PRIMARY KEY (primary_id)
# # # # # # # # # # # );
# # # # # # # # # # #
# # # # # # # # # # # create table SPRING_SESSION_ATTRIBUTES(
# # # # # # # # # # #     session_primary_id CHAR(36)     NOT NULL,
# # # # # # # # # # #     attribute_name     VARCHAR(200) NOT NULL,
# # # # # # # # # # #     attribute_bytes    BLOB         NOT NULL,
# # # # # # # # # # #     CONSTRAINT spring_session_attributes_pk PRIMARY KEY (session_primary_id, attribute_name),
# # # # # # # # # # #     CONSTRAINT spring_session_attributes_fk FOREIGN KEY (session_primary_id) REFERENCES SPRING_SESSION (primary_id) ON DELETE CASCADE
# # # # # # # # # # # );
# # # # # # # # # #
# # # # # # # # # #

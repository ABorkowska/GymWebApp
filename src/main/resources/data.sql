insert into exercises
values (1, 'HANTLE', 'KLATKA', 'Rozpiętki hantlami'),
       (2, 'HANTLE', 'BARKI', 'Wyciskanie hantli nad głowę'),
       (3, 'HANTLE', 'PLECY', 'Martwy ciąg'),
       (4, 'SZTANGA', 'PLECY', 'Wiosłowanie sztangą'),
       (5, 'SZTANGA', 'BARKI', 'Wyciskanie sztangi'),
       (6, 'HANTLE', 'BARKI', 'Wznosy hantli bokiem'),
       (7, 'SZTANGA', 'RAMIONA', 'Wyciskanie francuskie sztanga'),
       (8, 'HANTLE', 'BARKI', 'Arnoldki'),
       (9, 'SZTANGA', 'NOGI_POŚLADKI', 'Wykroki ze sztangą'),
       (10, 'HANTLE', 'RAMIONA', 'Uginanie przedramienia z oparciem łokcia'),
       (11, 'SZTANGA', 'NOGI_POŚLADKI', 'Przysiad ze sztangą'),
       (12, 'GUMA', 'NOGI_POŚLADKI', 'Przysiad z gumą'),
       (13, 'GUMA', 'NOGI_POŚLADKI', 'Unoszenie bioder z gumą'),
       (14, 'GUMA', 'PLECY', 'Prostopadłe ściąganie gumy do bioder leżąc'),
       (15, 'GUMA', 'PLECY', 'Ściąganie gumy za kark'),
       (16, 'HANTLE', 'PLECY', 'Wiosłowanie w podporze'),
       (17, 'HANTLE', 'KLATKA', 'Przenoszenie sztangielki za głowę'),
       (18, 'HANTLE', 'BARKI', 'Z-Press'),
       (19, 'GUMA', 'BARKI', 'Face pull z gumą'),
       (20, 'GUMA', 'BARKI', 'Wznosy ramion w przód z gumą'),
       (21, 'HANTLE', 'BARKI', 'Rotacje kubańskie'),
       (22, 'GUMA', 'RAMIONA', 'Prostowanie ramion z gumą(triceps)'),
       (23, 'SZTANGA', 'RAMIONA', 'Zginanie ramion ze sztangą nachwytem'),
       (24, 'HANTLE', 'RAMIONA', 'Zginanie przedramion z hantlami w chwycie młotkowym'),
       (25, 'HANTLE', 'KLATKA', 'Floor press'),
       (26, 'BRAK', 'KLATKA', 'Pompki'),
       (27, 'BRAK', 'RAMIONA', 'Pompki diamentowe'),
       (28, 'BRAK', 'NOGI_POŚLADKI', 'Sumo Squat'),
       (29, 'BRAK', 'KLATKA', 'Floor press'),
       (30, 'BRAK', 'NOGI_POŚLADKI', 'Zakroki skośne'),
       (31, 'BRAK', 'PLECY', 'Skręty tułowia w siadzie równoważnym'),
       (32, 'BRAK', 'PLECY', 'Ściąganie ramion do tyłu w opadzie');

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
       (7,'andrea.sch@o2.pl',1,'Andrea','Szefler','Andrea333',null,'Andrea'),
       (8,'bartosz_bednarek@irongym.pl',1,'Bartosz','Bednarek','$2a$10$QmXsopwvLKx0shHMqKjxeO6pe6F6hsbYVF3O/c9vAut7m5UXIWHgC',null,'BartoszB');

insert into trainers
values (1, 'artur.czajka@irongym.com', 'Artur Czajka'),
       (2, 'mat.zasanski@irongym.com', 'Mateusz Zasański'),
       (3, 'karol.bardo@irongym.com', 'Karol Bardo'),
       (4, 'kamil.wolinski@irongym.com', 'Kamil Wolinski'),
       (5, 'mariusz.kubackir@irongym.com', 'Mariusz Kubacki'),
       (6, 'ruslana.sayek@irongym.com', 'Ruslana Sayek'),
       (7, 'marzena.lang@irongym.com', 'Marzena Lang');

insert into schedule
values (1, 'Poniedziałek', '16:00', 'Body Shape', 'Ruslana Sayek', 6),
       (2, 'Poniedziałek', '17:00', 'Kettlebells', 'Mariusz Kabacki', 5),
       (3, 'Poniedziałek', '18:00', 'Body Workout', 'Mariusz Kabacki', 5),
       (4, 'Poniedziałek', '19:00', 'Circuit Training', 'Karol Bardo', 3),
       (5, 'Poniedziałek', '20:00', 'Weight Lifting', 'Kamil Woliński', 4),

       (6, 'Wtorek', '16:00', 'Upper-Body', 'Mariusz Kabacki', 5),
       (7, 'Wtorek', '17:00', 'Resistance Bands', 'Mariusz Kabacki', 5),
       (8, 'Wtorek', '18:00', 'Iron Power', 'Kamil Woliński', 4),
       (9, 'Wtorek', '19:00', 'Circuit Training', 'Karol Bardo', 3),
       (10, 'Wtorek', '20:00', 'Gym Classes', 'Mateusz Zasański', 2),

       (11, 'Środa', '16:00', 'Body Pump', 'Ruslana Sayek', 6),
       (12, 'Środa', '17:00', 'Kettlebells', 'Ruslana Sayek', 6),
       (13, 'Środa', '18:00', 'Lower-Body', 'Ruslana Sayek', 6),
       (14, 'Środa', '19:00', 'Weight Lifting', 'Kamil Woliński', 4),
       (15, 'Środa', '20:00', 'Crossfit', 'Artur Czajka', 1),

       (16, 'Czwartek', '16:00', 'Fighter Training', 'Karol Bardo', 3),
       (17, 'Czwartek', '17:00', 'Circuit Training', 'Karol Bardo', 3),
       (18, 'Czwartek', '18:00', 'Iron Power', 'Mateusz Zasański', 2),
       (19, 'Czwartek', '19:00', 'Strength', 'Artur Czajka', 1),
       (20, 'Czwartek', '20:00', 'Body Pump', 'Artur Czajka', 1),

       (21, 'Piątek', '16:00', 'Iron Power', 'Mateusz Zasański', 2),
       (22, 'Piątek', '17:00', 'Upper-Body', 'Mateusz Zasański', 2),
       (23, 'Piątek', '18:00', 'Lower-Body', 'Marzena Lang', 7),
       (24, 'Piątek', '19:00', 'Body Shape', 'Marzena Lang', 7),

       (25, 'Sobota', '09:00', 'Circuit Training', 'Mariusz Kabacki', 5),
       (26, 'Sobota', '10:00', 'Bootcamp', 'Mariusz Kabacki', 5),
       (27, 'Sobota', '18:00', 'Weight Lifting', 'Kamil Woliński', 4),

       (28, 'Niedziela', '09:00', 'Gym Classes', 'Karol Bardo', 3),
       (29, 'Niedziela', '10:00', 'Strength', 'Mateusz Zasański', 2),
       (30, 'Niedziela', '16:00', 'Resistance Bands', 'Artur Czajka', 1);

insert into classes_users (contact_number, email, schedule_id, user_id)
values (821514223,'groomy14@wp.pl',30, 2),
       (631709312,'bartosz_bednarek@irongym.pl',27, 8),
       (631709312,'bartosz_bednarek@irongym.pl',18, 8),
       (821457569,'kamil.baranowski@o2.pl', 8, 4),
       (520645014,'margaret@gmail.com', 16, 1),
       (821457569,'kamil.baranowski@o2.pl', 25, 4);

insert into workouts
values (1, 'Shape',3, 8, 'MASS',1),
       (2, 'My Training', 5, 4, 'STRENGTH',5),
       (3, 'Super', 15, 4, 'SHAPE',4);

INSERT INTO plan_order VALUES
        (1, false, null, true, 1, 4, 2),
        (2, true, 150.00, true, 6, 2, 4),
        (3, true, 150.00, false, 9, 3, 7);

insert into user_role values(1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,2);

INSERT INTO plan_trainer VALUES (1, 4),(6, 2);

/*
================================================================================================================================================
===============================================================| BUČÁK DOMINIK |================================================================
===============================================| FUNKČNÉ PRE ORACLE LiveSQL + SQLDeveloper APP |================================================
================================================================================================================================================
*/

/*====================[CREATE TABLE] CUSTOMERS=======================*/

CREATE TABLE customers (
    customer_id        INTEGER PRIMARY KEY NOT NULL,
    firstname VARCHAR2(50) NOT NULL,
    lastname  VARCHAR2(50) NOT NULL,
    email     VARCHAR2(100),
    country   VARCHAR2(150) NOT NULL
);

/*=================[CREATE TABLE] COMPONENTS=================*/

CREATE TABLE components (
    component_id                 INTEGER PRIMARY KEY NOT NULL,
    component_name     VARCHAR2(50) NOT NULL,
    price              FLOAT(10) NOT NULL
);


/*=================[CREATE TABLE] BUILDS===================*/

CREATE TABLE pc_builds (
    build_id                INTEGER PRIMARY KEY NOT NULL,
    build_name        VARCHAR2(50) NOT NULL,
    price             FLOAT(10) NOT NULL
);



/*=================[CREATE TABLE] SALES========================*/

CREATE TABLE sales (
    sale_id           INTEGER PRIMARY KEY NOT NULL,
    build_id     INTEGER NOT NULL,
    customer_id  INTEGER NOT NULL,
    sale_date    DATE NOT NULL,
    price        FLOAT(10) NOT NULL,
    
    FOREIGN KEY (build_id) REFERENCES pc_builds(build_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);


/*=======================[CREATE TABLE] STOCK==================*/

CREATE TABLE stock (
    component_id INTEGER NULL,
    build_id 	 INTEGER NULL,
    quantity     INTEGER NOT NULL,

    FOREIGN KEY (build_id) REFERENCES pc_builds(build_id),
    FOREIGN KEY (component_id) REFERENCES components(component_id)
);


/*====================[CREATE TABLE] COMP+BUILD=============================*/

CREATE TABLE cb (
    build_id  INTEGER PRIMARY KEY NOT NULL,
    component_id INTEGER NOT NULL,
    quantity      INTEGER NOT NULL,

    FOREIGN KEY (component_id) REFERENCES components(component_id)
);


/*====================[CREATE TABLE] CUSTOMERS_2=======================*/

CREATE TABLE customers_2 (
    customer_id        INTEGER PRIMARY KEY NOT NULL,
    firstname VARCHAR2(50) NOT NULL,
    lastname  VARCHAR2(50) NOT NULL,
    email     VARCHAR2(100),
    country   VARCHAR2(150) NOT NULL
);



/*=================================INSERT DATA==============================*/

/*=========================CUSTOMERS==============================*/
insert into customers (customer_id, firstname, lastname, email, country) values (1, 'Jess', 'Tetla', 'jtetla0@tuttocitta.it', 'America');
insert into customers (customer_id, firstname, lastname, email, country) values (2, 'Carri', 'Purkiss', 'cpurkiss1@scientificamerican.com', 'America');
insert into customers (customer_id, firstname, lastname, email, country) values (3, 'Damien', 'Sampey', 'dsampey2@quantcast.com', 'America');
insert into customers (customer_id, firstname, lastname, email, country) values (4, 'Niven', 'De Meyer', 'ndemeyer3@squarespace.com', 'America');
insert into customers (customer_id, firstname, lastname, email, country) values (5, 'Rolland', 'Readshaw', 'rreadshaw4@github.io', 'America');
insert into customers (customer_id, firstname, lastname, email, country) values (6, 'Malissia', 'Capon', 'mcapon5@simplemachines.org', 'America');
insert into customers (customer_id, firstname, lastname, email, country) values (7, 'Butch', 'Bartlomiejczyk', 'bbartlomiejczyk6@redcross.org', 'Japan');
insert into customers (customer_id, firstname, lastname, email, country) values (8, 'Purcell', 'Culvey', 'pculvey7@indiegogo.com', 'Japan');
insert into customers (customer_id, firstname, lastname, email, country) values (9, 'Kacie', 'Hasker', 'khasker8@dyndns.org', 'Japan');
insert into customers (customer_id, firstname, lastname, email, country) values (10, 'Galven', 'Rosbotham', 'grosbotham9@bing.com', 'Japan');
insert into customers (customer_id, firstname, lastname, email, country) values (11, 'Sophey', 'Harnes', 'sharnesa@123-reg.co.uk', 'Japan');
insert into customers (customer_id, firstname, lastname, email, country) values (12, 'Russ', 'Hair', 'rhairb@mysql.com', 'Japan');
insert into customers (customer_id, firstname, lastname, email, country) values (13, 'Shelby', 'Janiszewski', 'sjaniszewskic@google.cn', 'Japan');
insert into customers (customer_id, firstname, lastname, email, country) values (14, 'Mahala', 'Wybourne', 'mwybourned@google.nl', 'Japan');
insert into customers (customer_id, firstname, lastname, email, country) values (15, 'Quint', 'Habbergham', 'qhabberghame@ezinearticles.com', 'Spain');
insert into customers (customer_id, firstname, lastname, email, country) values (16, 'Dame', 'Wadge', 'dwadgef@youtube.com', 'Spain ');
insert into customers (customer_id, firstname, lastname, email, country) values (17, 'Agosto', 'Glackin', 'aglacking@sogou.com', 'Spain');
insert into customers (customer_id, firstname, lastname, email, country) values (18, 'Loren', 'Ruffell', 'lruffellh@youtube.com', 'Spain');
insert into customers (customer_id, firstname, lastname, email, country) values (19, 'Jeremiah', 'Wigin', 'jwigini@rambler.ru', 'Spain');
insert into customers (customer_id, firstname, lastname, email, country) values (20, 'Carlota', 'Bulbeck', 'cbulbeckj@tinyurl.com', 'Spain');
insert into customers (customer_id, firstname, lastname, email, country) values (21, 'Giorgi', 'Lockey', 'glockeyk@163.com', 'Spain');
insert into customers (customer_id, firstname, lastname, email, country) values (22, 'Tremain', 'Unitt', 'tunittl@guardian.co.uk', 'Spain');
insert into customers (customer_id, firstname, lastname, email, country) values (23, 'Michel', 'Mains', 'mmainsm@moonfruit.com', 'Germany');
insert into customers (customer_id, firstname, lastname, email, country) values (24, 'Arlette', 'Airy', 'aairyn@state.tx.us', 'Austria');
insert into customers (customer_id, firstname, lastname, email, country) values (25, 'Elliott', 'Rockliffe', 'erockliffeo@wufoo.com', 'Germany');
insert into customers (customer_id, firstname, lastname, email, country) values (26, 'Afton', 'Lowis', 'alowisp@cpanel.net', 'Denmark');
insert into customers (customer_id, firstname, lastname, email, country) values (27, 'Shauna', 'Illes', 'sillesq@360.cn', 'Austria');
insert into customers (customer_id, firstname, lastname, email, country) values (28, 'Kristian', 'Clementel', 'kclementelr@buzzfeed.com', 'Denmark');
insert into customers (customer_id, firstname, lastname, email, country) values (29, 'Adrien', 'Frogley', 'afrogleys@cyberchimps.com', 'Denmark');
insert into customers (customer_id, firstname, lastname, email, country) values (30, 'Peirce', 'Tonks', 'ptonkst@narod.ru', 'Finland');
insert into customers (customer_id, firstname, lastname, email, country) values (31, 'Jennine', 'Halm', 'jhalmu@google.de', 'Slovakia');
insert into customers (customer_id, firstname, lastname, email, country) values (32, 'Eustace', 'Gronaller', 'egronallerv@ox.ac.uk', 'Slovakia');
insert into customers (customer_id, firstname, lastname, email, country) values (33, 'Phillis', 'Revington', 'previngtonw@4shared.com', 'Slovakia');
insert into customers (customer_id, firstname, lastname, email, country) values (34, 'Tadeo', 'Tofanini', 'ttofaninix@ow.ly', 'Slovakia');
insert into customers (customer_id, firstname, lastname, email, country) values (35, 'Griz', 'Sher', 'gshery@liveinternet.ru', 'Slovakia');
insert into customers (customer_id, firstname, lastname, email, country) values (36, 'Loralee', 'Walduck', 'lwalduckz@ustream.tv', 'Slovakia');
insert into customers (customer_id, firstname, lastname, email, country) values (37, 'Julia', 'Clemmitt', 'jclemmitt10@yolasite.com', 'Slovakia');
insert into customers (customer_id, firstname, lastname, email, country) values (38, 'Milka', 'Brock', 'mbrock11@elegantthemes.com', 'Slovakia');
insert into customers (customer_id, firstname, lastname, email, country) values (39, 'Efren', 'Bouchier', 'ebouchier12@paginegialle.it', 'Slovakia');
insert into customers (customer_id, firstname, lastname, email, country) values (40, 'Adelaida', 'Mordan', 'amordan13@yahoo.co.jp', 'Slovakia');
insert into customers (customer_id, firstname, lastname, email, country) values (41, 'Jermaine', 'Ritch', 'jritch14@feedburner.com', 'Slovakia');
insert into customers (customer_id, firstname, lastname, email, country) values (42, 'Leanor', 'Cordon', 'lcordon15@ucla.edu', 'Slovakia');
insert into customers (customer_id, firstname, lastname, email, country) values (43, 'Flss', 'Flew', 'fflew16@theglobeandmail.com', 'Slovakia');
insert into customers (customer_id, firstname, lastname, email, country) values (44, 'Andreana', 'Mattevi', 'amattevi17@epa.gov', 'Slovakia');
insert into customers (customer_id, firstname, lastname, email, country) values (45, 'Welby', 'Stickland', 'wstickland18@cbc.ca', 'Slovakia');
insert into customers (customer_id, firstname, lastname, email, country) values (46, 'Zondra', 'Colpus', 'zcolpus19@livejournal.com', 'Slovakia');
insert into customers (customer_id, firstname, lastname, email, country) values (47, 'Robyn', 'Cloy', 'rcloy1a@bloglines.com', 'Slovakia');
insert into customers (customer_id, firstname, lastname, email, country) values (48, 'Talbert', 'Gabler', 'tgabler1b@stumbleupon.com', 'Czech Republic');
insert into customers (customer_id, firstname, lastname, email, country) values (49, 'Loralie', 'Stanier', 'lstanier1c@princeton.edu', 'Czech Republic');
insert into customers (customer_id, firstname, lastname, email, country) values (50, 'Roselle', 'Prestedge', 'rprestedge1d@discovery.com', 'Czech Republic');
insert into customers (customer_id, firstname, lastname, email, country) values (51, 'Alisha', 'Simkins', 'asimkins1e@smh.com.au', 'Czech Republic');
insert into customers (customer_id, firstname, lastname, email, country) values (52, 'Isahella', 'Darlison', 'idarlison1f@usa.gov', 'Czech Republic');
insert into customers (customer_id, firstname, lastname, email, country) values (53, 'Angel', 'Blockwell', 'ablockwell1g@hostgator.com', 'Czech Republic');
insert into customers (customer_id, firstname, lastname, email, country) values (54, 'Carlos', 'Fenna', 'cfenna1h@odnoklassniki.ru', 'Czech Republic');
insert into customers (customer_id, firstname, lastname, email, country) values (55, 'Alvera', 'Legges', 'alegges1i@umich.edu', 'Czech Republic');
insert into customers (customer_id, firstname, lastname, email, country) values (56, 'Aristotle', 'Pfeifer', 'apfeifer1j@adobe.com', 'Czech Republic');
insert into customers (customer_id, firstname, lastname, email, country) values (57, 'Kerwin', 'Castledine', 'kcastledine1k@google.es', 'Czech Republic');
insert into customers (customer_id, firstname, lastname, email, country) values (58, 'Donny', 'Stoakley', 'dstoakley1l@stanford.edu', 'Czech Republic');
insert into customers (customer_id, firstname, lastname, email, country) values (59, 'Aylmar', 'Gedge', 'agedge1m@technorati.com', 'Czech Republic');
insert into customers (customer_id, firstname, lastname, email, country) values (60, 'Korrie', 'Betham', 'kbetham1n@geocities.com', 'Czech Republic');
insert into customers (customer_id, firstname, lastname, email, country) values (61, 'Brittan', 'Foulcher', 'bfoulcher1o@usgs.gov', 'Poland');
insert into customers (customer_id, firstname, lastname, email, country) values (62, 'Cynthea', 'Trowler', 'ctrowler1p@parallels.com', 'Poland');
insert into customers (customer_id, firstname, lastname, email, country) values (63, 'Willard', 'Yankin', 'wyankin1q@last.fm', 'Poland');
insert into customers (customer_id, firstname, lastname, email, country) values (64, 'Miltie', 'Frounks', 'mfrounks1r@craigslist.org', 'Poland');
insert into customers (customer_id, firstname, lastname, email, country) values (65, 'Alejandro', 'Darben', 'adarben1s@ezinearticles.com', 'Poland');
insert into customers (customer_id, firstname, lastname, email, country) values (66, 'Tammy', 'Evers', 'tevers1t@hostgator.com', 'Poland');
insert into customers (customer_id, firstname, lastname, email, country) values (67, 'Phillip', 'Jillard', 'pjillard1u@weebly.com', 'Poland');
insert into customers (customer_id, firstname, lastname, email, country) values (68, 'Janaya', 'Lumpkin', 'jlumpkin1v@hud.gov', 'Poland');
insert into customers (customer_id, firstname, lastname, email, country) values (69, 'Maggy', 'Abramovic', 'mabramovic1w@statcounter.com', 'Poland');
insert into customers (customer_id, firstname, lastname, email, country) values (70, 'Dukie', 'Kuzemka', 'dkuzemka1x@ovh.net', 'Poland');
insert into customers (customer_id, firstname, lastname, email, country) values (71, 'Min', 'Kimbury', 'mkimbury1y@epa.gov', 'Poland');
insert into customers (customer_id, firstname, lastname, email, country) values (72, 'Malanie', 'Tye', 'mtye1z@devhub.com', 'Poland');
insert into customers (customer_id, firstname, lastname, email, country) values (73, 'Chrystel', 'Joll', 'cjoll20@nytimes.com', 'Poland');
insert into customers (customer_id, firstname, lastname, email, country) values (74, 'Bob', 'Avrahamy', 'bavrahamy21@wikimedia.org', 'Poland');
insert into customers (customer_id, firstname, lastname, email, country) values (75, 'Jacki', 'Jackways', 'jjackways22@w3.org', 'Poland');
insert into customers (customer_id, firstname, lastname, email, country) values (76, 'Jade', 'Girkin', 'jgirkin23@quantcast.com', 'Netherland');
insert into customers (customer_id, firstname, lastname, email, country) values (77, 'Ash', 'Gonthard', 'agonthard24@lulu.com', 'Netherland');
insert into customers (customer_id, firstname, lastname, email, country) values (78, 'Jacquette', 'Debill', 'jdebill25@un.org', 'Netherland');
insert into customers (customer_id, firstname, lastname, email, country) values (79, 'Ellen', 'Lyfield', 'elyfield26@bloomberg.com', 'Netherland');
insert into customers (customer_id, firstname, lastname, email, country) values (80, 'Matelda', 'Dibdin', 'mdibdin27@stumbleupon.com', 'Netherland');
insert into customers (customer_id, firstname, lastname, email, country) values (81, 'Katey', 'Lavens', 'klavens28@gnu.org', 'Netherland');
insert into customers (customer_id, firstname, lastname, email, country) values (82, 'Rivalee', 'Hacon', 'rhacon29@tripadvisor.com', 'Netherland');
insert into customers (customer_id, firstname, lastname, email, country) values (83, 'Thomas', 'Grenkov', 'tgrenkov2a@parallels.com', 'Netherland');
insert into customers (customer_id, firstname, lastname, email, country) values (84, 'Benson', 'Esterbrook', 'besterbrook2b@samsung.com', 'Netherland');
insert into customers (customer_id, firstname, lastname, email, country) values (85, 'Wally', 'Kyllford', 'wkyllford2c@typepad.com', 'Netherland');
insert into customers (customer_id, firstname, lastname, email, country) values (86, 'Cami', 'Fullalove', 'cfullalove2d@nasa.gov', 'Netherland');
insert into customers (customer_id, firstname, lastname, email, country) values (87, 'Gordy', 'Harmeston', 'gharmeston2e@who.int', 'Netherland');
insert into customers (customer_id, firstname, lastname, email, country) values (88, 'Peyton', 'Marcos', 'pmarcos2f@princeton.edu', 'Netherland');
insert into customers (customer_id, firstname, lastname, email, country) values (89, 'Laurena', 'Bartalin', 'lbartalin2g@marriott.com', 'Netherland');
insert into customers (customer_id, firstname, lastname, email, country) values (90, 'Letitia', 'Clingan', 'lclingan2h@walmart.com', 'Netherland');
insert into customers (customer_id, firstname, lastname, email, country) values (91, 'Pascale', 'Coats', 'pcoats2i@weibo.com', 'Netherland');
insert into customers (customer_id, firstname, lastname, email, country) values (92, 'Laetitia', 'Featherstone', 'lfeatherstone2j@yahoo.co.jp', 'Netherland');
insert into customers (customer_id, firstname, lastname, email, country) values (93, 'Gottfried', 'Robuchon', 'grobuchon2k@surveymonkey.com', 'Croatia');
insert into customers (customer_id, firstname, lastname, email, country) values (94, 'Una', 'Caldecot', 'ucaldecot2l@unc.edu', 'Croatia');
insert into customers (customer_id, firstname, lastname, email, country) values (95, 'Barnie', 'O''Finan', 'bofinan2m@1und1.de', 'Croatia');
insert into customers (customer_id, firstname, lastname, email, country) values (96, 'Sylas', 'Wetherill', 'swetherill2n@pagesperso-orange.fr', 'Croatia');
insert into customers (customer_id, firstname, lastname, email, country) values (97, 'Mitch', 'McReidy', 'mmcreidy2o@amazon.com', 'Croatia');
insert into customers (customer_id, firstname, lastname, email, country) values (98, 'Morry', 'Brychan', 'mbrychan2p@mail.ru', 'Croatia');
insert into customers (customer_id, firstname, lastname, email, country) values (99, 'Abbie', 'Petyanin', 'apetyanin2q@example.com', 'Croatia');
insert into customers (customer_id, firstname, lastname, email, country) values (100, 'Eustacia', 'Grimsell', 'egrimsell2r@baidu.com', 'Croatia');
/*=======================================================================================================================================================*/


/*=================================================================COMPONENTS============================================================================*/
insert into components (component_id, component_name, price) values (1, 'Intel Core i9-12900K Processor', 1670.67);
insert into components (component_id, component_name, price) values (2, 'AMD Ryzen 9 5950X Processor', 1310.88);
insert into components (component_id, component_name, price) values (3, 'Corsair Vengeance LPX 32GB DDR4 RAM', 1002.37);
insert into components (component_id, component_name, price) values (4, 'G.Skill Ripjaws V 16GB DDR4 RAM', 1157.95);
insert into components (component_id, component_name, price) values (5, 'Nvidia GeForce RTX 3090 Graphics Card', 1894.96);
insert into components (component_id, component_name, price) values (6, 'AMD Radeon RX 6900 XT Graphics Card', 1130.92);
insert into components (component_id, component_name, price) values (7, 'Samsung 970 EVO Plus 1TB NVMe SSD', 187.04);
insert into components (component_id, component_name, price) values (8, 'WD Blue SN550 500GB NVMe SSD', 369.85);
insert into components (component_id, component_name, price) values (9, 'Noctua NH-D15 Chromax.black CPU Cooler', 822.73);
insert into components (component_id, component_name, price) values (10, 'CoolerMaster Hyper 212 Black Edition CPU Cooler', 286.47);
insert into components (component_id, component_name, price) values (11, 'Intel Core i7-12700K Processor', 79.59);
insert into components (component_id, component_name, price) values (12, 'AMD Ryzen 7 5800X Processor', 1101.37);
insert into components (component_id, component_name, price) values (13, 'Kingston HyperX Fury 16GB DDR4 RAM', 1578.38);
insert into components (component_id, component_name, price) values (14, 'Patriot Viper Steel 32GB DDR4 RAM', 1888.21);
insert into components (component_id, component_name, price) values (15, 'Nvidia GeForce RTX 3080 Graphics Card', 1117.45);
insert into components (component_id, component_name, price) values (16, 'AMD Radeon RX 6800 XT Graphics Card', 965.96);
insert into components (component_id, component_name, price) values (17, 'Crucial MX500 1TB SATA SSD', 695.07);
insert into components (component_id, component_name, price) values (18, 'Seagate BarraCuda 2TB HDD', 305.29);
insert into components (component_id, component_name, price) values (19, 'Corsair H100i RGB Platinum SE CPU Cooler', 539.1);
insert into components (component_id, component_name, price) values (20, 'NZXT Kraken X63 RGB CPU Cooler', 1142.83);
insert into components (component_id, component_name, price) values (21, 'Intel Core i5-12600K Processor', 1400.52);
insert into components (component_id, component_name, price) values (22, 'AMD Ryzen 5 5600X Processor', 286.22);
insert into components (component_id, component_name, price) values (23, 'Corsair Dominator Platinum RGB 32GB DDR4 RAM', 327.85);
insert into components (component_id, component_name, price) values (24, 'G.Skill Trident Z RGB 16GB DDR4 RAM', 1827.88);
insert into components (component_id, component_name, price) values (25, 'Nvidia GeForce RTX 3070 Graphics Card', 1409.44);
insert into components (component_id, component_name, price) values (26, 'AMD Radeon RX 6700 XT Graphics Card', 1910.14);
insert into components (component_id, component_name, price) values (27, 'WD Black SN850 1TB NVMe SSD', 992.82);
insert into components (component_id, component_name, price) values (28, 'Crucial P2 500GB NVMe SSD', 560.18);
insert into components (component_id, component_name, price) values (29, 'be quiet! Dark Rock Pro 4 CPU Cooler', 1110.13);
insert into components (component_id, component_name, price) values (30, 'ARCTIC Liquid Freezer II 240 CPU Cooler', 912.53);
insert into components (component_id, component_name, price) values (31, 'Intel Core i3-12400 Processor', 1858.22);
insert into components (component_id, component_name, price) values (32, 'AMD Ryzen 3 3300X Processor', 1818.71);
insert into components (component_id, component_name, price) values (33, 'HyperX Fury 8GB DDR4 RAM', 1046.92);
insert into components (component_id, component_name, price) values (34, 'Corsair Vengeance Pro 16GB DDR4 RAM', 1400.23);
insert into components (component_id, component_name, price) values (35, 'Nvidia GeForce GTX 1660 Graphics Card', 189.27);
insert into components (component_id, component_name, price) values (36, 'AMD Radeon RX 560 Graphics Card', 1630.19);
insert into components (component_id, component_name, price) values (37, 'Kingston A2000 1TB NVMe SSD', 1480.98);
insert into components (component_id, component_name, price) values (38, 'Seagate FireCuda 520 500GB NVMe SSD', 1317.99);
insert into components (component_id, component_name, price) values (39, 'CoolerMaster MasterLiquid CPU COOLER', 958.68);
insert into components (component_id, component_name, price) values (40, 'Thermaltake Floe DX 240 CPU Cooler', 1597.39);
insert into components (component_id, component_name, price) values (41, 'Intel Pentium Gold G6400 Processor', 322.28);
insert into components (component_id, component_name, price) values (42, 'AMD A10-9700 Processor', 735.12);
insert into components (component_id, component_name, price) values (43, 'Crucial Ballistix 8GB DDR4 RAM', 1806.46);
insert into components (component_id, component_name, price) values (44, 'Patriot Viper Elite 16GB DDR4 RAM', 1045.23);
insert into components (component_id, component_name, price) values (45, 'Nvidia GeForce GTX 1050 Ti Graphics Card', 749.06);
insert into components (component_id, component_name, price) values (46, 'AMD Radeon RX 550 Graphics Card', 974.04);
insert into components (component_id, component_name, price) values (47, 'Sabrent Rocket Q 1TB NVMe SSD', 834.19);
insert into components (component_id, component_name, price) values (48, 'Western Digital Blue 1TB SATA SSD', 860.85);
insert into components (component_id, component_name, price) values (49, 'NZXT Kraken M22 RGB CPU Cooler', 1601.73);
insert into components (component_id, component_name, price) values (50, 'Cooler Master MasterAir CPU COOLER', 1881.27);
insert into components (component_id, component_name, price) values (51, 'Intel Celeron G5900 Processor', 1323.45);
insert into components (component_id, component_name, price) values (52, 'AMD Athlon 3000G Processor', 168.85);
insert into components (component_id, component_name, price) values (53, 'Team T-FORCE DARK Z 8GB DDR4 RAM', 1986.67);
insert into components (component_id, component_name, price) values (54, 'Corsair Vengeance LPX 8GB DDR4 RAM', 746.75);
insert into components (component_id, component_name, price) values (55, 'Nvidia GeForce GT 710 Graphics Card', 842.27);
insert into components (component_id, component_name, price) values (56, 'AMD Radeon R5 230 Graphics Card', 1283.76);
insert into components (component_id, component_name, price) values (57, 'Samsung 870 QVO 1TB SATA SSD', 359.73);
insert into components (component_id, component_name, price) values (58, 'Toshiba X300 4TB HDD', 732.51);
insert into components (component_id, component_name, price) values (59, 'be quiet! Pure Rock Black CPU Cooler', 1482.0);
insert into components (component_id, component_name, price) values (60, 'ARCTIC Freezer 34 eSports DUO CPU Cooler', 112.32);
insert into components (component_id, component_name, price) values (61, 'AMD Ryzen 7 5700X Processor', 1870.27);
insert into components (component_id, component_name, price) values (62, 'HyperX Predator RGB 32GB DDR4 RAM', 1651.07);
insert into components (component_id, component_name, price) values (63, 'Corsair Dominator Platinum RGB 16GB DDR4 RAM', 544.93);
insert into components (component_id, component_name, price) values (64, 'Nvidia GeForce RTX 3060 Ti Graphics Card', 1911.35);
insert into components (component_id, component_name, price) values (65, 'AMD Radeon RX 6600 XT Graphics Card', 198.28);
insert into components (component_id, component_name, price) values (66, 'ADATA XPG SX8200 Pro 1TB NVMe SSD', 85.43);
insert into components (component_id, component_name, price) values (67, 'Crucial BX500 480GB SATA SSD', 1593.38);
insert into components (component_id, component_name, price) values (68, 'Noctua NH-U12S Chromax.black CPU Cooler', 1803.49);
insert into components (component_id, component_name, price) values (69, 'Cooler Master Hyper 212 Evo CPU Cooler', 655.96);
insert into components (component_id, component_name, price) values (70, 'Intel Core i5-11600K Processor', 864.51);
insert into components (component_id, component_name, price) values (71, 'AMD Ryzen 5 5600G Processor', 1897.89);
insert into components (component_id, component_name, price) values (72, 'Corsair Vengeance 32GB DDR4 RAM', 588.34);
insert into components (component_id, component_name, price) values (73, 'G.Skill Trident Z Neo 16GB DDR4 RAM', 146.37);
insert into components (component_id, component_name, price) values (74, 'Nvidia GeForce GTX 1660 Super Graphics Card', 1568.2);
insert into components (component_id, component_name, price) values (75, 'AMD Radeon RX 5500 XT Graphics Card', 1645.38);
insert into components (component_id, component_name, price) values (76, 'WD Blue SN750 1TB NVMe SSD', 1040.94);
insert into components (component_id, component_name, price) values (77, 'Crucial MX500 2TB SATA SSD', 1759.56);
insert into components (component_id, component_name, price) values (78, 'NZXT Kraken X53 RGB CPU Cooler', 110.58);
insert into components (component_id, component_name, price) values (79, 'Corsair H60 RGB Pro CPU Cooler', 1821.01);
insert into components (component_id, component_name, price) values (80, 'Intel Core i3-11100 Processor', 1468.06);
insert into components (component_id, component_name, price) values (81, 'AMD Ryzen 3 3200G Processor', 1414.61);
insert into components (component_id, component_name, price) values (82, 'Patriot Viper 4 Blackout 8GB DDR4 RAM', 764.42);
insert into components (component_id, component_name, price) values (83, 'Corsair Dominator Platinum RGB 64GB DDR4 RAM', 69.03);
insert into components (component_id, component_name, price) values (84, 'Nvidia GeForce GTX 1050 Graphics Card', 1039.79);
insert into components (component_id, component_name, price) values (85, 'AMD Radeon R7 240 Graphics Card', 1728.36);
insert into components (component_id, component_name, price) values (86, 'Samsung 870 EVO 2TB SATA SSD', 1126.22);
insert into components (component_id, component_name, price) values (87, 'Seagate IronWolf 4TB HDD', 1125.28);
insert into components (component_id, component_name, price) values (88, 'Thermaltake UX100 ARGB CPU Cooler', 1046.27);
insert into components (component_id, component_name, price) values (89, 'ARCTIC Alpine 12 CPU Cooler', 508.41);
insert into components (component_id, component_name, price) values (90, 'Intel Pentium Silver J5040 Processor', 172.01);
insert into components (component_id, component_name, price) values (91, 'AMD Athlon Silver 3050e Processor', 1870.13);
insert into components (component_id, component_name, price) values (92, 'Kingston ValueRAM 4GB DDR4 RAM', 315.89);
insert into components (component_id, component_name, price) values (93, 'Corsair Vengeance LPX 4GB DDR4 RAM', 1299.65);
insert into components (component_id, component_name, price) values (94, 'Nvidia GeForce GT 1030 Graphics Card', 416.16);
insert into components (component_id, component_name, price) values (95, 'AMD Radeon R5 220 Graphics Card', 409.1);
insert into components (component_id, component_name, price) values (96, 'Seagate Barracuda 120 1TB SATA SSD', 890.41);
insert into components (component_id, component_name, price) values (97, 'WD Red Plus 8TB HDD', 1386.46);
insert into components (component_id, component_name, price) values (98, 'be quiet! Pure Rock Slim 2 CPU Cooler', 1496.25);
insert into components (component_id, component_name, price) values (99, 'Cooler Master MasterLiquid V2 CPU Cooler', 490.01);
insert into components (component_id, component_name, price) values (100, 'Intel Core i9-13900K Processor', 1234.61);
/*=======================================================================================================================================================*/

/*=================================================================BUILDS===============================================================================*/
insert into pc_builds (build_id, build_name, price) values (1, 'Bergstrom, Ledner and Brakus COMPUTER COMPUTER', 1864.59);
insert into pc_builds (build_id, build_name, price) values (2, 'Moen-Wintheiser COMPUTER COMPUTER', 1320.84);
insert into pc_builds (build_id, build_name, price) values (3, 'Heathcote-Tillman COMPUTER COMPUTER', 508.29);
insert into pc_builds (build_id, build_name, price) values (4, 'Mayer, Dach and Blanda COMPUTER COMPUTER', 1537.43);
insert into pc_builds (build_id, build_name, price) values (5, 'Wisozk, Deckow and Berge COMPUTER', 1854.02);
insert into pc_builds (build_id, build_name, price) values (6, 'Mann-Collins COMPUTER', 666.54);
insert into pc_builds (build_id, build_name, price) values (7, 'Schneider, West and Roberts COMPUTER', 608.11);
insert into pc_builds (build_id, build_name, price) values (8, 'Baumbach, Shanahan and Adams COMPUTER', 1743.61);
insert into pc_builds (build_id, build_name, price) values (9, 'Hayes-Weissnat COMPUTER', 1695.52);
insert into pc_builds (build_id, build_name, price) values (10, 'Champlin Inc COMPUTER', 1703.57);
insert into pc_builds (build_id, build_name, price) values (11, 'Hamill and Sons COMPUTER', 551.07);
insert into pc_builds (build_id, build_name, price) values (12, 'Balistreri, Dicki and Mosciski COMPUTER', 724.37);
insert into pc_builds (build_id, build_name, price) values (13, 'Borer-Lindgren COMPUTER', 213.08);
insert into pc_builds (build_id, build_name, price) values (14, 'Rodriguez-Huels COMPUTER', 1788.45);
insert into pc_builds (build_id, build_name, price) values (15, 'Torphy-Hand COMPUTER', 1670.63);
insert into pc_builds (build_id, build_name, price) values (16, 'Swift Group COMPUTER', 126.1);
insert into pc_builds (build_id, build_name, price) values (17, 'Padberg and Sons COMPUTER', 286.39);
insert into pc_builds (build_id, build_name, price) values (18, 'Langworth Inc COMPUTER', 1494.35);
insert into pc_builds (build_id, build_name, price) values (19, 'Wiegand, Kunde and Torphy COMPUTER', 1133.28);
insert into pc_builds (build_id, build_name, price) values (20, 'Friesen-Harvey COMPUTER', 1160.57);
insert into pc_builds (build_id, build_name, price) values (21, 'Walsh, Denesik and Heaney COMPUTER', 1475.85);
insert into pc_builds (build_id, build_name, price) values (22, 'Torphy, Ebert and Koepp COMPUTER', 1286.51);
insert into pc_builds (build_id, build_name, price) values (23, 'Kreiger LLC COMPUTER', 471.42);
insert into pc_builds (build_id, build_name, price) values (24, 'Treutel-Johns COMPUTER', 1581.16);
insert into pc_builds (build_id, build_name, price) values (25, 'Schaefer Group COMPUTER', 297.6);
insert into pc_builds (build_id, build_name, price) values (26, 'Fadel, Pfannerstill and Kshlerin COMPUTER', 869.25);
insert into pc_builds (build_id, build_name, price) values (27, 'Hodkiewicz and Sons COMPUTER', 458.35);
insert into pc_builds (build_id, build_name, price) values (28, 'Zemlak-Maggio COMPUTER', 757.12);
insert into pc_builds (build_id, build_name, price) values (29, 'Sporer, Denesik and Leannon COMPUTER', 528.02);
insert into pc_builds (build_id, build_name, price) values (30, 'Koepp-Hirthe COMPUTER', 404.61);
insert into pc_builds (build_id, build_name, price) values (31, 'Littel and Sons COMPUTER', 1263.41);
insert into pc_builds (build_id, build_name, price) values (32, 'Hilpert-Fahey COMPUTER', 1935.23);
insert into pc_builds (build_id, build_name, price) values (33, 'Nader-Wolff COMPUTER', 618.33);
insert into pc_builds (build_id, build_name, price) values (34, 'Strosin and Sons COMPUTER', 1509.21);
insert into pc_builds (build_id, build_name, price) values (35, 'Conn, Jerde and Grady COMPUTER', 1386.56);
insert into pc_builds (build_id, build_name, price) values (36, 'Greenholt Inc COMPUTER', 826.29);
insert into pc_builds (build_id, build_name, price) values (37, 'Kozey-Gerlach COMPUTER', 609.67);
insert into pc_builds (build_id, build_name, price) values (38, 'Klein Group COMPUTER', 1238.31);
insert into pc_builds (build_id, build_name, price) values (39, 'Marquardt, Tremblay and Goldner COMPUTER', 552.81);
insert into pc_builds (build_id, build_name, price) values (40, 'Mayert LLC COMPUTER', 850.42);
insert into pc_builds (build_id, build_name, price) values (41, 'Wisoky Inc COMPUTER', 824.48);
insert into pc_builds (build_id, build_name, price) values (42, 'Kiehn, Bruen and Feil COMPUTER', 577.81);
insert into pc_builds (build_id, build_name, price) values (43, 'Bogan Inc COMPUTER', 232.47);
insert into pc_builds (build_id, build_name, price) values (44, 'Torp, White and Corwin COMPUTER', 596.96);
insert into pc_builds (build_id, build_name, price) values (45, 'Kiehn, Blanda and Reichel COMPUTER', 1734.9);
insert into pc_builds (build_id, build_name, price) values (46, 'Blick and Sons COMPUTER', 1273.37);
insert into pc_builds (build_id, build_name, price) values (47, 'Lueilwitz-McCullough COMPUTER', 334.5);
insert into pc_builds (build_id, build_name, price) values (48, 'O''Kon-Hackett COMPUTER', 868.45);
insert into pc_builds (build_id, build_name, price) values (49, 'Emard-Smitham COMPUTER', 1022.81);
insert into pc_builds (build_id, build_name, price) values (50, 'Reichert-Brekke COMPUTER', 136.54);
insert into pc_builds (build_id, build_name, price) values (51, 'Gleichner LLC COMPUTER', 986.33);
insert into pc_builds (build_id, build_name, price) values (52, 'Nolan LLC COMPUTER', 1747.73);
insert into pc_builds (build_id, build_name, price) values (53, 'Murray, Moore and Ritchie COMPUTER', 736.38);
insert into pc_builds (build_id, build_name, price) values (54, 'Lubowitz-Stanton COMPUTER', 681.82);
insert into pc_builds (build_id, build_name, price) values (55, 'Torphy-Stiedemann COMPUTER', 1693.84);
insert into pc_builds (build_id, build_name, price) values (56, 'Parisian, Durgan and Okuneva COMPUTER', 1472.47);
insert into pc_builds (build_id, build_name, price) values (57, 'Schowalter-Kuhic COMPUTER', 73.27);
insert into pc_builds (build_id, build_name, price) values (58, 'Gutmann-Rutherford COMPUTER', 1290.14);
insert into pc_builds (build_id, build_name, price) values (59, 'Harvey-Spinka COMPUTER', 1360.92);
insert into pc_builds (build_id, build_name, price) values (60, 'Rempel-Heller COMPUTER', 868.78);
insert into pc_builds (build_id, build_name, price) values (61, 'Halvorson-Gusikowski COMPUTER', 168.74);
insert into pc_builds (build_id, build_name, price) values (62, 'Torp-Wisoky COMPUTER', 1357.29);
insert into pc_builds (build_id, build_name, price) values (63, 'Walter-Gleichner COMPUTER', 790.71);
insert into pc_builds (build_id, build_name, price) values (64, 'Fisher-Hoppe COMPUTER', 1216.39);
insert into pc_builds (build_id, build_name, price) values (65, 'Heaney, Blanda and Grant COMPUTER', 826.75);
insert into pc_builds (build_id, build_name, price) values (66, 'Wolff-Simonis COMPUTER', 620.83);
insert into pc_builds (build_id, build_name, price) values (67, 'Bartoletti-Jacobs COMPUTER', 262.8);
insert into pc_builds (build_id, build_name, price) values (68, 'Boyle, Swift and Mayert COMPUTER', 1338.14);
insert into pc_builds (build_id, build_name, price) values (69, 'Dach-McGlynn COMPUTER', 83.66);
insert into pc_builds (build_id, build_name, price) values (70, 'Kulas Group COMPUTER', 1447.55);
insert into pc_builds (build_id, build_name, price) values (71, 'Daugherty, Nolan and Rutherford COMPUTER', 709.77);
insert into pc_builds (build_id, build_name, price) values (72, 'Miller, Fritsch and Schmeler COMPUTER', 1189.96);
insert into pc_builds (build_id, build_name, price) values (73, 'Johnson-Braun COMPUTER', 1776.96);
insert into pc_builds (build_id, build_name, price) values (74, 'Hand Inc COMPUTER', 1682.95);
insert into pc_builds (build_id, build_name, price) values (75, 'Ritchie-Halvorson COMPUTER', 1882.98);
insert into pc_builds (build_id, build_name, price) values (76, 'Larkin LLC COMPUTER', 1989.23);
insert into pc_builds (build_id, build_name, price) values (77, 'Gutmann, Reichert and Roob COMPUTER', 1930.29);
insert into pc_builds (build_id, build_name, price) values (78, 'Hessel, Lakin and Padberg COMPUTER', 913.89);
insert into pc_builds (build_id, build_name, price) values (79, 'Morissette, Roob and Konopelski COMPUTER', 1749.95);
insert into pc_builds (build_id, build_name, price) values (80, 'Grant and Sons COMPUTER', 88.6);
insert into pc_builds (build_id, build_name, price) values (81, 'Fritsch, O''Reilly and Davis COMPUTER', 157.54);
insert into pc_builds (build_id, build_name, price) values (82, 'Okuneva-Emard COMPUTER', 1470.99);
insert into pc_builds (build_id, build_name, price) values (83, 'Heaney and Sons COMPUTER', 872.01);
insert into pc_builds (build_id, build_name, price) values (84, 'Schmeler, Jacobson and Wilkinson COMPUTER', 1849.52);
insert into pc_builds (build_id, build_name, price) values (85, 'White-Littel COMPUTER', 79.01);
insert into pc_builds (build_id, build_name, price) values (86, 'Boehm-Runolfsson COMPUTER', 548.45);
insert into pc_builds (build_id, build_name, price) values (87, 'Leuschke Inc COMPUTER', 193.82);
insert into pc_builds (build_id, build_name, price) values (88, 'Kozey, Hauck and Marvin COMPUTER', 1427.65);
insert into pc_builds (build_id, build_name, price) values (89, 'Parisian LLC COMPUTER', 1148.23);
insert into pc_builds (build_id, build_name, price) values (90, 'Aufderhar Group COMPUTER', 1336.77);
insert into pc_builds (build_id, build_name, price) values (91, 'Hessel LLC COMPUTER', 323.27);
insert into pc_builds (build_id, build_name, price) values (92, 'Cummings, Farrell and Lesch COMPUTER', 14.63);
insert into pc_builds (build_id, build_name, price) values (93, 'Howe-Sipes COMPUTER', 749.96);
insert into pc_builds (build_id, build_name, price) values (94, 'Zboncak Inc COMPUTER', 439.33);
insert into pc_builds (build_id, build_name, price) values (95, 'Reynolds, Zulauf and Cartwright COMPUTER', 1691.83);
insert into pc_builds (build_id, build_name, price) values (96, 'Lueilwitz, Brown and Swaniawski COMPUTER', 933.97);
insert into pc_builds (build_id, build_name, price) values (97, 'Turcotte-Steuber COMPUTER', 973.24);
insert into pc_builds (build_id, build_name, price) values (98, 'Rutherford Inc COMPUTER', 146.7);
insert into pc_builds (build_id, build_name, price) values (99, 'Wiza Inc COMPUTER', 905.79);
insert into pc_builds (build_id, build_name, price) values (100, 'Streich-Barrows COMPUTER', 1426.3);
/*====================================================================================================================================================*/


/*=================================================================STOCK============================================================================*/
insert into stock (component_id, build_id, quantity) values (null, 1, 641);
insert into stock (component_id, build_id, quantity) values (null, 2, 290);
insert into stock (component_id, build_id, quantity) values (null, 3, 243);
insert into stock (component_id, build_id, quantity) values (4, null, 302);
insert into stock (component_id, build_id, quantity) values (null, 5, 22);
insert into stock (component_id, build_id, quantity) values (null, 6, 164);
insert into stock (component_id, build_id, quantity) values (null, 7, 621);
insert into stock (component_id, build_id, quantity) values (null, 8, 730);
insert into stock (component_id, build_id, quantity) values (9, null, 346);
insert into stock (component_id, build_id, quantity) values (10, null, 272);
insert into stock (component_id, build_id, quantity) values (11, null, 518);
insert into stock (component_id, build_id, quantity) values (null, 12, 502);
insert into stock (component_id, build_id, quantity) values (13, null, 471);
insert into stock (component_id, build_id, quantity) values (null, 14, 723);
insert into stock (component_id, build_id, quantity) values (null, 15, 736);
insert into stock (component_id, build_id, quantity) values (null, 16, 593);
insert into stock (component_id, build_id, quantity) values (null, 17, 573);
insert into stock (component_id, build_id, quantity) values (null, 18, 157);
insert into stock (component_id, build_id, quantity) values (19, null, 664);
insert into stock (component_id, build_id, quantity) values (20, null, 590);
insert into stock (component_id, build_id, quantity) values (21, null, 566);
insert into stock (component_id, build_id, quantity) values (null, 22, 381);
insert into stock (component_id, build_id, quantity) values (null, 23, 664);
insert into stock (component_id, build_id, quantity) values (null, 24, 522);
insert into stock (component_id, build_id, quantity) values (null, 25, 36);
insert into stock (component_id, build_id, quantity) values (null, 26, 646);
insert into stock (component_id, build_id, quantity) values (null, 27, 770);
insert into stock (component_id, build_id, quantity) values (null, 28, 90);
insert into stock (component_id, build_id, quantity) values (29, null, 736);
insert into stock (component_id, build_id, quantity) values (30, null, 544);
insert into stock (component_id, build_id, quantity) values (null, 31, 64);
insert into stock (component_id, build_id, quantity) values (null, 32, 647);
insert into stock (component_id, build_id, quantity) values (null, 33, 630);
insert into stock (component_id, build_id, quantity) values (34, null, 347);
insert into stock (component_id, build_id, quantity) values (null, 35, 170);
insert into stock (component_id, build_id, quantity) values (null, 36, 653);
insert into stock (component_id, build_id, quantity) values (37, null, 505);
insert into stock (component_id, build_id, quantity) values (null, 38, 450);
insert into stock (component_id, build_id, quantity) values (null, 39, 323);
insert into stock (component_id, build_id, quantity) values (null, 40, 271);
insert into stock (component_id, build_id, quantity) values (41, null, 704);
insert into stock (component_id, build_id, quantity) values (null, 42, 29);
insert into stock (component_id, build_id, quantity) values (null, 43, 539);
insert into stock (component_id, build_id, quantity) values (null, 44, 373);
insert into stock (component_id, build_id, quantity) values (null, 45, 565);
insert into stock (component_id, build_id, quantity) values (null, 46, 238);
insert into stock (component_id, build_id, quantity) values (null, 47, 636);
insert into stock (component_id, build_id, quantity) values (null, 48, 279);
insert into stock (component_id, build_id, quantity) values (null, 49, 396);
insert into stock (component_id, build_id, quantity) values (50, null, 793);
insert into stock (component_id, build_id, quantity) values (null, null, 266);
insert into stock (component_id, build_id, quantity) values (null, 52, 451);
insert into stock (component_id, build_id, quantity) values (null, 53, 257);
insert into stock (component_id, build_id, quantity) values (54, null, 658);
insert into stock (component_id, build_id, quantity) values (null, 55, 773);
insert into stock (component_id, build_id, quantity) values (56, null, 342);
insert into stock (component_id, build_id, quantity) values (null, 57, 346);
insert into stock (component_id, build_id, quantity) values (58, null, 709);
insert into stock (component_id, build_id, quantity) values (null, 59, 736);
insert into stock (component_id, build_id, quantity) values (null, 60, 241);
insert into stock (component_id, build_id, quantity) values (null, 61, 517);
insert into stock (component_id, build_id, quantity) values (null, 62, 722);
insert into stock (component_id, build_id, quantity) values (null, 63, 294);
insert into stock (component_id, build_id, quantity) values (null, 64, 723);
insert into stock (component_id, build_id, quantity) values (null, 65, 357);
insert into stock (component_id, build_id, quantity) values (null, 66, 447);
insert into stock (component_id, build_id, quantity) values (null, 67, 463);
insert into stock (component_id, build_id, quantity) values (null, 68, 743);
insert into stock (component_id, build_id, quantity) values (69, null, 667);
insert into stock (component_id, build_id, quantity) values (null, 70, 34);
insert into stock (component_id, build_id, quantity) values (null, 71, 783);
insert into stock (component_id, build_id, quantity) values (null, 72, 623);
insert into stock (component_id, build_id, quantity) values (null, 73, 36);
insert into stock (component_id, build_id, quantity) values (null, 74, 426);
insert into stock (component_id, build_id, quantity) values (null, 75, 590);
insert into stock (component_id, build_id, quantity) values (null, 76, 649);
insert into stock (component_id, build_id, quantity) values (null, 77, 757);
insert into stock (component_id, build_id, quantity) values (null, 78, 254);
insert into stock (component_id, build_id, quantity) values (null, 79, 555);
insert into stock (component_id, build_id, quantity) values (80, null, 713);
insert into stock (component_id, build_id, quantity) values (null, 81, 758);
insert into stock (component_id, build_id, quantity) values (null, 82, 212);
insert into stock (component_id, build_id, quantity) values (null, 83, 487);
insert into stock (component_id, build_id, quantity) values (null, 84, 585);
insert into stock (component_id, build_id, quantity) values (85, null, 739);
insert into stock (component_id, build_id, quantity) values (null, null, 414);
insert into stock (component_id, build_id, quantity) values (null, null, 133);
insert into stock (component_id, build_id, quantity) values (null, 88, 97);
insert into stock (component_id, build_id, quantity) values (null, 89, 215);
insert into stock (component_id, build_id, quantity) values (null, 90, 302);
insert into stock (component_id, build_id, quantity) values (null, 91, 433);
insert into stock (component_id, build_id, quantity) values (92, null, 736);
insert into stock (component_id, build_id, quantity) values (93, null, 757);
insert into stock (component_id, build_id, quantity) values (null, 94, 430);
insert into stock (component_id, build_id, quantity) values (null, 95, 129);
insert into stock (component_id, build_id, quantity) values (null, 96, 295);
insert into stock (component_id, build_id, quantity) values (null, 97, 502);
insert into stock (component_id, build_id, quantity) values (null, 98, 63);
insert into stock (component_id, build_id, quantity) values (99, null, 740);
insert into stock (component_id, build_id, quantity) values (null, 100, 583);

/*====================================================================================================================================================*/

/*=================================================================SALES============================================================================*/
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (1, 28, 46, '01-May-2021', 6173.72);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (2, 42, 87, '11-Feb-2022', 5430.04);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (3, 86, 13, '25-Feb-2019', 8238.47);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (4, 19, 19, '20-Jan-2021', 2244.47);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (5, 22, 16, '25-Mar-2023', 5220.91);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (6, 51, 17, '20-Jan-2022', 3890.47);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (7, 80, 6, '17-Nov-2019', 8356.17);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (8, 77, 61, '03-Jun-2022', 1405.28);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (9, 19, 86, '03-Oct-2020', 1357.43);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (10, 15, 43, '25-Sep-2022', 5526.14);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (11, 91, 34, '15-Nov-2022', 7081.76);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (12, 96, 47, '28-Mar-2019', 6895.92);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (13, 81, 78, '09-Oct-2022', 9349.25);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (14, 25, 28, '18-Jan-2020', 7657.21);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (15, 43, 1, '19-May-2022', 9992.42);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (16, 30, 44, '30-Apr-2019', 4134.23);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (17, 22, 77, '01-Mar-2021', 8857.05);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (18, 54, 97, '02-Jan-2020', 2784.49);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (19, 13, 88, '13-May-2021', 697.29);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (20, 19, 67, '08-Jan-2020', 9268.11);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (21, 3, 34, '09-Aug-2020', 9983.7);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (22, 74, 42, '05-Mar-2020', 6594.85);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (23, 42, 7, '13-Mar-2021', 4575.46);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (24, 12, 8, '02-Aug-2019', 4726.02);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (25, 17, 34, '04-Jan-2020', 5340.29);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (26, 41, 37, '04-Nov-2020', 625.88);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (27, 15, 39, '21-Dec-2018', 2252.22);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (28, 4, 27, '01-Nov-2018', 9041.46);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (29, 39, 92, '31-May-2021', 1984.38);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (30, 23, 89, '24-Oct-2019', 7850.44);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (31, 5, 11, '31-Dec-2021', 4098.49);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (32, 56, 20, '16-Feb-2022', 1901.05);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (33, 14, 72, '13-Jul-2022', 4328.91);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (34, 66, 62, '22-Feb-2020', 1119.33);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (35, 17, 43, '05-Dec-2022', 3641.27);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (36, 86, 73, '02-Apr-2022', 4817.73);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (37, 48, 44, '17-Jun-2019', 5626.39);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (38, 11, 34, '11-Apr-2022', 8459.58);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (39, 18, 28, '04-Jul-2020', 9748.96);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (40, 28, 54, '24-Mar-2020', 427.76);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (41, 46, 64, '09-May-2022', 4513.62);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (42, 56, 68, '08-Dec-2022', 9357.56);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (43, 20, 7, '13-Feb-2022', 4421.61);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (44, 33, 22, '17-Jun-2022', 3123.96);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (45, 23, 85, '28-Feb-2021', 8400.53);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (46, 70, 74, '14-Nov-2019', 5897.49);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (47, 78, 41, '22-Jul-2022', 4684.29);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (48, 48, 49, '17-Nov-2018', 344.63);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (49, 42, 87, '13-Jan-2022', 3820.39);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (50, 92, 86, '28-Jun-2019', 4285.58);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (51, 72, 77, '14-Jul-2022', 9013.33);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (52, 54, 63, '12-Jan-2020', 6918.21);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (53, 71, 99, '26-Nov-2022', 259.01);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (54, 65, 69, '12-Mar-2022', 9604.03);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (55, 25, 12, '28-Jan-2021', 9698.68);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (56, 21, 73, '14-Sep-2020', 3240.62);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (57, 13, 98, '22-Apr-2020', 7261.03);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (58, 15, 82, '26-Sep-2021', 9468.97);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (59, 13, 21, '02-Oct-2020', 6590.64);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (60, 73, 48, '04-May-2019', 6218.35);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (61, 78, 11, '16-Feb-2020', 2837.94);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (62, 35, 90, '29-Aug-2019', 9351.94);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (63, 14, 17, '26-Mar-2023', 4162.37);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (64, 95, 57, '29-Jan-2022', 4983.97);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (65, 90, 62, '24-Sep-2019', 7552.12);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (66, 84, 82, '06-Aug-2020', 4147.06);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (67, 74, 65, '09-Jul-2021', 2002.28);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (68, 91, 29, '05-Sep-2022', 97.69);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (69, 58, 4, '17-Aug-2020', 3048.01);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (70, 17, 31, '14-Oct-2019', 4356.06);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (71, 17, 40, '05-Sep-2020', 6760.05);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (72, 28, 62, '08-Apr-2021', 7628.81);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (73, 47, 34, '27-Nov-2019', 7800.76);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (74, 98, 37, '04-Mar-2021', 8701.57);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (75, 20, 56, '02-Dec-2021', 548.44);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (76, 64, 70, '19-Sep-2020', 4589.86);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (77, 51, 1, '24-Nov-2022', 8807.22);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (78, 96, 40, '21-Jan-2023', 4912.71);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (79, 76, 16, '27-Sep-2020', 1690.76);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (80, 45, 23, '26-May-2020', 7741.11);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (81, 76, 12, '04-Jun-2020', 5130.67);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (82, 51, 63, '11-Dec-2020', 7640.72);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (83, 58, 7, '28-May-2019', 2316.65);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (84, 21, 2, '11-Mar-2023', 1491.95);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (85, 34, 92, '04-Mar-2020', 348.38);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (86, 27, 2, '02-Dec-2021', 31.17);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (87, 59, 78, '11-Mar-2020', 3109.19);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (88, 67, 1, '18-Feb-2021', 7819.01);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (89, 33, 94, '26-Jun-2019', 7659.98);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (90, 86, 67, '13-Jun-2019', 156.36);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (91, 74, 6, '04-Apr-2019', 4872.24);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (92, 88, 34, '07-Jul-2019', 6627.16);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (93, 42, 87, '04-Apr-2020', 7331.52);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (94, 33, 10, '19-Apr-2022', 4223.46);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (95, 45, 54, '18-May-2019', 790.99);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (96, 42, 19, '01-Oct-2021', 5618.23);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (97, 82, 47, '09-May-2020', 2105.11);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (98, 60, 52, '13-Sep-2022', 4426.19);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (99, 25, 18, '24-Jan-2023', 976.52);
insert into sales (sale_id, build_id, customer_id, sale_date, price) values (100, 5, 53, '08-Nov-2018', 1193.92);
/*====================================================================================================================================================*/

/*=================================================================BUILD COMPONENTS====================================================================*/
insert into cb (build_id, component_id, quantity) values (1, 54, 3);
insert into cb (build_id, component_id, quantity) values (2, 11, 7);
insert into cb (build_id, component_id, quantity) values (3, 28, 5);
insert into cb (build_id, component_id, quantity) values (4, 87, 6);
insert into cb (build_id, component_id, quantity) values (5, 17, 3);
insert into cb (build_id, component_id, quantity) values (6, 52, 7);
insert into cb (build_id, component_id, quantity) values (7, 81, 1);
insert into cb (build_id, component_id, quantity) values (8, 53, 7);
insert into cb (build_id, component_id, quantity) values (9, 37, 2);
insert into cb (build_id, component_id, quantity) values (10, 32, 4);
insert into cb (build_id, component_id, quantity) values (11, 97, 5);
insert into cb (build_id, component_id, quantity) values (12, 5, 10);
insert into cb (build_id, component_id, quantity) values (13, 4, 2);
insert into cb (build_id, component_id, quantity) values (14, 5, 4);
insert into cb (build_id, component_id, quantity) values (15, 12, 8);
insert into cb (build_id, component_id, quantity) values (16, 93, 2);
insert into cb (build_id, component_id, quantity) values (17, 98, 6);
insert into cb (build_id, component_id, quantity) values (18, 27, 7);
insert into cb (build_id, component_id, quantity) values (19, 14, 9);
insert into cb (build_id, component_id, quantity) values (20, 81, 1);
insert into cb (build_id, component_id, quantity) values (21, 18, 8);
insert into cb (build_id, component_id, quantity) values (22, 68, 8);
insert into cb (build_id, component_id, quantity) values (23, 75, 1);
insert into cb (build_id, component_id, quantity) values (24, 98, 9);
insert into cb (build_id, component_id, quantity) values (25, 37, 1);
insert into cb (build_id, component_id, quantity) values (26, 11, 10);
insert into cb (build_id, component_id, quantity) values (27, 84, 2);
insert into cb (build_id, component_id, quantity) values (28, 25, 4);
insert into cb (build_id, component_id, quantity) values (29, 88, 9);
insert into cb (build_id, component_id, quantity) values (30, 18, 4);
insert into cb (build_id, component_id, quantity) values (31, 44, 10);
insert into cb (build_id, component_id, quantity) values (32, 68, 3);
insert into cb (build_id, component_id, quantity) values (33, 91, 4);
insert into cb (build_id, component_id, quantity) values (34, 33, 1);
insert into cb (build_id, component_id, quantity) values (35, 93, 6);
insert into cb (build_id, component_id, quantity) values (36, 73, 7);
insert into cb (build_id, component_id, quantity) values (37, 58, 1);
insert into cb (build_id, component_id, quantity) values (38, 14, 7);
insert into cb (build_id, component_id, quantity) values (39, 14, 10);
insert into cb (build_id, component_id, quantity) values (40, 3, 7);
insert into cb (build_id, component_id, quantity) values (41, 33, 3);
insert into cb (build_id, component_id, quantity) values (42, 40, 3);
insert into cb (build_id, component_id, quantity) values (43, 17, 8);
insert into cb (build_id, component_id, quantity) values (44, 37, 1);
insert into cb (build_id, component_id, quantity) values (45, 5, 1);
insert into cb (build_id, component_id, quantity) values (46, 42, 8);
insert into cb (build_id, component_id, quantity) values (47, 38, 10);
insert into cb (build_id, component_id, quantity) values (48, 11, 1);
insert into cb (build_id, component_id, quantity) values (49, 88, 10);
insert into cb (build_id, component_id, quantity) values (50, 35, 7);
insert into cb (build_id, component_id, quantity) values (51, 30, 5);
insert into cb (build_id, component_id, quantity) values (52, 74, 5);
insert into cb (build_id, component_id, quantity) values (53, 8, 3);
insert into cb (build_id, component_id, quantity) values (54, 33, 9);
insert into cb (build_id, component_id, quantity) values (55, 37, 8);
insert into cb (build_id, component_id, quantity) values (56, 82, 2);
insert into cb (build_id, component_id, quantity) values (57, 37, 7);
insert into cb (build_id, component_id, quantity) values (58, 32, 6);
insert into cb (build_id, component_id, quantity) values (59, 57, 7);
insert into cb (build_id, component_id, quantity) values (60, 34, 4);
insert into cb (build_id, component_id, quantity) values (61, 18, 9);
insert into cb (build_id, component_id, quantity) values (62, 14, 7);
insert into cb (build_id, component_id, quantity) values (63, 78, 9);
insert into cb (build_id, component_id, quantity) values (64, 59, 9);
insert into cb (build_id, component_id, quantity) values (65, 46, 7);
insert into cb (build_id, component_id, quantity) values (66, 73, 2);
insert into cb (build_id, component_id, quantity) values (67, 35, 5);
insert into cb (build_id, component_id, quantity) values (68, 7, 6);
insert into cb (build_id, component_id, quantity) values (69, 20, 1);
insert into cb (build_id, component_id, quantity) values (70, 30, 6);
insert into cb (build_id, component_id, quantity) values (71, 66, 1);
insert into cb (build_id, component_id, quantity) values (72, 30, 5);
insert into cb (build_id, component_id, quantity) values (73, 31, 6);
insert into cb (build_id, component_id, quantity) values (74, 30, 2);
insert into cb (build_id, component_id, quantity) values (75, 31, 10);
insert into cb (build_id, component_id, quantity) values (76, 100, 4);
insert into cb (build_id, component_id, quantity) values (77, 7, 6);
insert into cb (build_id, component_id, quantity) values (78, 50, 8);
insert into cb (build_id, component_id, quantity) values (79, 55, 10);
insert into cb (build_id, component_id, quantity) values (80, 2, 3);
insert into cb (build_id, component_id, quantity) values (81, 59, 6);
insert into cb (build_id, component_id, quantity) values (82, 96, 9);
insert into cb (build_id, component_id, quantity) values (83, 97, 6);
insert into cb (build_id, component_id, quantity) values (84, 49, 3);
insert into cb (build_id, component_id, quantity) values (85, 7, 1);
insert into cb (build_id, component_id, quantity) values (86, 77, 4);
insert into cb (build_id, component_id, quantity) values (87, 88, 5);
insert into cb (build_id, component_id, quantity) values (88, 5, 4);
insert into cb (build_id, component_id, quantity) values (89, 74, 6);
insert into cb (build_id, component_id, quantity) values (90, 8, 8);
insert into cb (build_id, component_id, quantity) values (91, 96, 4);
insert into cb (build_id, component_id, quantity) values (92, 89, 8);
insert into cb (build_id, component_id, quantity) values (93, 82, 6);
insert into cb (build_id, component_id, quantity) values (94, 77, 4);
insert into cb (build_id, component_id, quantity) values (95, 34, 7);
insert into cb (build_id, component_id, quantity) values (96, 96, 5);
insert into cb (build_id, component_id, quantity) values (97, 91, 5);
insert into cb (build_id, component_id, quantity) values (98, 6, 7);
insert into cb (build_id, component_id, quantity) values (99, 1, 5);
insert into cb (build_id, component_id, quantity) values (100, 76, 9);
/*====================================================================================================================================================*/


/*=========================CUSTOMERS_2==============================*/
insert into customers_2 (customer_id, firstname, lastname, email, country) values (1, 'Jessalin', 'Toffano', 'jtoffano0@ucla.edu', 'Greece');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (2, 'Rudie', 'Adess', 'radess1@jiathis.com', 'China');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (3, 'Berny', 'Howsden', 'bhowsden2@webeden.co.uk', 'Greece');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (4, 'Ainslie', 'Dyzart', 'adyzart3@timesonline.co.uk', 'Colombia');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (5, 'Elsy', 'Studdal', 'estuddal4@netlog.com', 'China');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (6, 'Benedicta', 'Philot', 'bphilot5@salon.com', 'China');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (7, 'Izzy', 'Gheorghie', 'igheorghie6@ning.com', 'Philippines');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (8, 'Clarita', 'Lewens', 'clewens7@wsj.com', 'Honduras');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (9, 'Goran', 'Dewicke', 'gdewicke8@altervista.org', 'Ukraine');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (10, 'Marion', 'Trainor', 'mtrainor9@eventbrite.com', 'Indonesia');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (11, 'Hildagarde', 'Pollack', 'hpollacka@flickr.com', 'Czech Republic');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (12, 'Amabelle', 'Begbie', 'abegbieb@chicagotribune.com', 'Mexico');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (13, 'Leora', 'Tomkin', 'ltomkinc@independent.co.uk', 'South Africa');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (14, 'Merv', 'Duckit', 'mduckitd@cafepress.com', 'Cameroon');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (15, 'Madison', 'Brownhill', 'mbrownhille@feedburner.com', 'Portugal');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (16, 'Glenna', 'Duchan', 'gduchanf@utexas.edu', 'Indonesia');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (17, 'Aarika', 'Courtliff', 'acourtliffg@networksolutions.com', 'Democratic Republic of the Congo');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (18, 'Lilllie', 'Bourgeois', 'lbourgeoish@topsy.com', 'Kosovo');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (19, 'Carlee', 'Broschek', 'cbroscheki@sciencedaily.com', 'Mexico');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (20, 'Dacie', 'Proger', 'dprogerj@tamu.edu', 'Italy');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (21, 'Ravi', 'Gratrix', 'rgratrixk@ezinearticles.com', 'China');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (22, 'Kevon', 'Henrych', 'khenrychl@rediff.com', 'China');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (23, 'Joane', 'Patington', 'jpatingtonm@ovh.net', 'Poland');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (24, 'Turner', 'Slaten', 'tslatenn@jiathis.com', 'Czech Republic');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (25, 'Lonna', 'Dancy', 'ldancyo@booking.com', 'Russia');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (26, 'Mildred', 'Gabits', 'mgabitsp@ft.com', 'Mexico');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (27, 'Dalila', 'Springtorpe', 'dspringtorpeq@geocities.com', 'Macedonia');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (28, 'Taddeusz', 'Goublier', 'tgoublierr@tuttocitta.it', 'Philippines');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (29, 'Jeanelle', 'Linklet', 'jlinklets@aboutads.info', 'Indonesia');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (30, 'Tatiana', 'Dwight', 'tdwightt@unesco.org', 'Israel');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (31, 'Debor', 'Ince', 'dinceu@wikipedia.org', 'Belarus');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (32, 'Jody', 'Fowlds', 'jfowldsv@clickbank.net', 'Vietnam');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (33, 'Leighton', 'Christophle', 'lchristophlew@nyu.edu', 'Russia');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (34, 'Dalton', 'Grzeszczak', 'dgrzeszczakx@google.com.hk', 'China');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (35, 'Carolynn', 'Grahlman', 'cgrahlmany@furl.net', 'Croatia');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (36, 'Lynda', 'Bourgeois', 'lbourgeoisz@army.mil', 'Kenya');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (37, 'Tremayne', 'Pietsma', 'tpietsma10@army.mil', 'Brazil');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (38, 'Kessia', 'M''Quharge', 'kmquharge11@virginia.edu', 'Madagascar');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (39, 'Kerr', 'Allinson', 'kallinson12@simplemachines.org', 'Albania');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (40, 'Roma', 'Constantine', 'rconstantine13@noaa.gov', 'Russia');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (41, 'Julianne', 'O''Hern', 'johern14@google.fr', 'Nepal');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (42, 'Ema', 'Franzel', 'efranzel15@bloomberg.com', 'Luxembourg');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (43, 'Joice', 'LeEstut', 'jleestut16@unc.edu', 'Peru');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (44, 'Nana', 'Witherington', 'nwitherington17@ca.gov', 'China');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (45, 'Selestina', 'Brodhead', 'sbrodhead18@barnesandnoble.com', 'Thailand');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (46, 'Maegan', 'Issett', 'missett19@freewebs.com', 'China');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (47, 'Emlynne', 'Laddle', 'eladdle1a@usda.gov', 'China');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (48, 'Gayel', 'Iglesias', 'giglesias1b@house.gov', 'Russia');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (49, 'Sallyanne', 'Donlon', 'sdonlon1c@umich.edu', 'Russia');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (50, 'Raimund', 'Albrighton', 'ralbrighton1d@fda.gov', 'Albania');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (51, 'Joli', 'Pauer', 'jpauer1e@yellowbook.com', 'Indonesia');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (52, 'Sophronia', 'Leneve', 'sleneve1f@marriott.com', 'Sweden');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (53, 'Kellina', 'Giovanazzi', 'kgiovanazzi1g@patch.com', 'Russia');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (54, 'Nessi', 'Albasini', 'nalbasini1h@tuttocitta.it', 'Greece');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (55, 'Liuka', 'Paulig', 'lpaulig1i@amazonaws.com', 'Nigeria');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (56, 'Kendell', 'Wickey', 'kwickey1j@skype.com', 'China');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (57, 'Josey', 'Francescozzi', 'jfrancescozzi1k@nasa.gov', 'Sweden');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (58, 'Lynn', 'Fredy', 'lfredy1l@irs.gov', 'China');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (59, 'Rhody', 'Almond', 'ralmond1m@google.de', 'Egypt');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (60, 'Shoshanna', 'Swyne', 'sswyne1n@furl.net', 'Portugal');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (61, 'Godfree', 'Garnsey', 'ggarnsey1o@homestead.com', 'China');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (62, 'Eirena', 'Malkinson', 'emalkinson1p@sohu.com', 'China');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (63, 'Editha', 'Burrell', 'eburrell1q@google.de', 'Poland');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (64, 'Belicia', 'Chicco', 'bchicco1r@census.gov', 'Brazil');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (65, 'Christean', 'Grestye', 'cgrestye1s@geocities.com', 'Japan');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (66, 'Cchaddie', 'Kleine', 'ckleine1t@wikia.com', 'New Zealand');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (67, 'Jordan', 'Peasey', 'jpeasey1u@fotki.com', 'Sweden');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (68, 'Federica', 'Grishankov', 'fgrishankov1v@com.com', 'Russia');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (69, 'Cart', 'Reinger', 'creinger1w@ifeng.com', 'China');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (70, 'Angele', 'Mallinar', 'amallinar1x@taobao.com', 'United Kingdom');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (71, 'Chucho', 'Jaukovic', 'cjaukovic1y@tinypic.com', 'Czech Republic');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (72, 'Hope', 'Lunn', 'hlunn1z@usatoday.com', 'Japan');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (73, 'Josephine', 'Minto', 'jminto20@usda.gov', 'Serbia');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (74, 'Maryanne', 'Piens', 'mpiens21@purevolume.com', 'Vietnam');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (75, 'Normy', 'Valentinuzzi', 'nvalentinuzzi22@java.com', 'Peru');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (76, 'Bethena', 'Hamley', 'bhamley23@mysql.com', 'Poland');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (77, 'Cherri', 'Shellshear', 'cshellshear24@zdnet.com', 'Ukraine');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (78, 'Goldarina', 'Ovendon', 'govendon25@amazon.com', 'Czech Republic');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (79, 'Felicle', 'Peacey', 'fpeacey26@cpanel.net', 'Indonesia');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (80, 'Urbain', 'Thornewell', 'uthornewell27@diigo.com', 'Cameroon');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (81, 'Betty', 'La Batie', 'blabatie28@163.com', 'Philippines');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (82, 'Kendricks', 'Hoffman', 'khoffman29@ustream.tv', 'Zimbabwe');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (83, 'Goran', 'Lourens', 'glourens2a@barnesandnoble.com', 'Bulgaria');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (84, 'Louis', 'Churchley', 'lchurchley2b@surveymonkey.com', 'Indonesia');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (85, 'Ruperto', 'McClure', 'rmcclure2c@wikimedia.org', 'China');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (86, 'Tobey', 'Critchard', 'tcritchard2d@wikispaces.com', 'Indonesia');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (87, 'Johann', 'McHenry', 'jmchenry2e@skyrock.com', 'Indonesia');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (88, 'Celisse', 'Brisse', 'cbrisse2f@va.gov', 'China');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (89, 'Brod', 'Acton', 'bacton2g@biblegateway.com', 'Venezuela');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (90, 'Waiter', 'Undrell', 'wundrell2h@noaa.gov', 'Japan');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (91, 'Federica', 'Maddrah', 'fmaddrah2i@squarespace.com', 'Sweden');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (92, 'Pattin', 'Gradwell', 'pgradwell2j@desdev.cn', 'Japan');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (93, 'Lisette', 'Kinneally', 'lkinneally2k@un.org', 'Philippines');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (94, 'Aksel', 'Busk', 'abusk2l@unesco.org', 'Sweden');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (95, 'Blondie', 'Longridge', 'blongridge2m@europa.eu', 'Sweden');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (96, 'Perla', 'Lewsie', 'plewsie2n@zimbio.com', 'Brazil');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (97, 'Thekla', 'Robertot', 'trobertot2o@facebook.com', 'Indonesia');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (98, 'Oren', 'Blaymires', 'oblaymires2p@patch.com', 'Peru');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (99, 'Evelina', 'Dibb', 'edibb2q@skype.com', 'Morocco');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (100, 'Rollins', 'Churchill', 'rchurchill2r@symantec.com', 'Argentina');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (101, 'Abbie', 'Petyanin', 'apetyanin2q@example.com', 'Croatia');
insert into customers_2 (customer_id, firstname, lastname, email, country) values (102, 'Eustacia', 'Grimsell', 'egrimsell2r@baidu.com', 'Croatia');
/*=======================================================================================================================================================*/


/*
================================================================================================================================================
=============================================================| ZADANIE SEMESTRÁLKA |============================================================
===============================================================| BUČÁK DOMINIK |================================================================
=========================================================| FUNKČNÉ PRE ORACLE LiveSQL |=========================================================
================================================================================================================================================
*/
BEGIN
    DBMS_OUTPUT.ENABLE(NULL);
END;
/

--1. =======================================================================
    --[A. Agregované funkcie COUNT/SUM/MIN/MAX/AVG]
    --[B. Agregované funkcie so zoskupením GROUP BY...HAVING]
-- =========================================================================

--[1/A.] FUNKCIA COUNT() (Spočíta všetkých zákazníkov ktorý majú adresu obsahujúcu názov Netherland)
SELECT COUNT(*) AS Pocet_zakaznikov FROM CUSTOMERS WHERE country LIKE 'Netherland%';

--[1/A.] FUNKCIA SUM() (Spočíta cenu všetkých objednávok a vypíše výslednu sumu všetkých objednávok)
SELECT SUM(price) AS Celkovy_Predaj from sales;

--[1/A.] FUNKCIA AVG() + ROUND() (Vypočíta priemerny počet komponentov v jednotlivých zostavách a zaokrúhly na 0 Desatinných miest)
SELECT ROUND(AVG(quantity), 0) AS PRIEMERNY_POCET_KOMPONENTOV FROM CB;

--[1/A.] FUNKCIA MIN() + MAX() (Minimálna cena a Maximalna cena Zostavy)
SELECT MIN(price) AS MINIMALNA_CENA_ZOSTAVY, MAX(price) AS MAXIMALNA_CENA_ZOSTAVY, ROUND(AVG(price),2) AS PRIEMERNA_CENA_ZOSTAVY FROM pc_builds;

--[1/B.] GROUP BY (Zoskupenie zákaznikov podľa krajiny)
SELECT country, Count(Country) AS Pocet_Zakaznikov FROM customers GROUP BY country;

--[1/B.] GROUP BY HAVING Kde zoskupí a vypíše iba krajiny ktoré majú viacej ako 8 zákazníkov.
SELECT country, Count(country) AS Pocet_Zakaznikov FROM customers GROUP BY country HAVING Count(country) > 8;

--[1/B.] GROUP BY HAVING Kde zoskupí a vypíše iba krajiny ktoré majú viacej ako 8 zákazníkov + Zoradí od najviac zákazníkov
SELECT country, Count(country) AS Pocet_Zakaznikov FROM customers GROUP BY country HAVING Count(country) > 8 ORDER BY Count(country) DESC;


--2. =========================================================================
    --[A. Všetky príkazy SELECT FROM WHERE GROUP BY HAVING ORDER]
SELECT firstname, lastname, country FROM customers WHERE firstname LIKE 'S%';
SELECT country, Count(country) AS Pocet_Zakaznikov FROM customers GROUP BY country HAVING Count(country) > 8 ORDER BY Count(country) DESC;
--[Splnene všetko]
SELECT component_name, Count(component_ID) FROM components WHERE component_name LIKE '%Cooler' OR component_name LIKE 'Cooler%' GROUP BY component_name HAVING component_name LIKE 'ARCTIC%' ORDER BY component_name ASC;

--3. =========================================================================
    --[A. Množinové spojenie UNION]
    --[B. Množinový rozdiel MINUS]
    --[C. Množinový Prienik INTERSECT]
-- ===========================================================================

--[3/A. Množinové spojenie UNION (Tabulky Customers a Customers_2)]
SELECT firstname, lastname, country FROM customers UNION SELECT firstname, lastname, country FROM customers_2;

--[3/B. Množinové spojenie MINUS (Tabulky Customers a Customers_2)]
SELECT firstname, lastname, country FROM customers MINUS SELECT firstname, lastname, country FROM customers_2;

--[3/C. Množinové spojenie INTERSECT (Tabulky Customers a Customers_2)]
SELECT firstname, lastname, country FROM customers INTERSECT SELECT firstname, lastname, country FROM customers_2;


--4. =========================================================================
    --[A. Vnorený Dopyt WHERE]
    --[B. Vnorený Dopyt FROM]
    --[C. Vnorený Dopyt SELECT]
    --[D. Vnorený Dopyt EXISTS / NOT EXISTS]
-- ===========================================================================

--[4/A. Vnorený dopyt WHERE]
SELECT customer_id, firstname, lastname, email FROM customers WHERE customer_id IN (SELECT customer_id FROM sales WHERE customer_id = 46);

--[4/B. Vnorený dopyt FROM]
SELECT customer_id, firstname, lastname, email FROM customers WHERE customer_id IN (SELECT customer_id FROM sales WHERE price > 5000);

--[4/C. Vnorený dopyt SELECT]
SELECT * from pc_builds WHERE build_id IN(SELECT build_id FROM sales WHERE build_id > 67);

--[4/D. Vnorený dopyt EXISTS / NOT EXISTS]
--EXISTS
SELECT customer_id, firstname, lastname FROM customers c WHERE EXISTS (SELECT * FROM sales s WHERE s.customer_id = c.customer_id AND s.price > 9500);
--NOT EXISTS
SELECT customer_id, firstname, lastname FROM customers c WHERE NOT EXISTS (SELECT customer_id, firstname, lastname FROM customers_2 c2 WHERE c.firstname LIKE c2.firstname AND c.firstname LIKE 'Peter');

--5. =========================================================================
    --[A. Rozšírená funkcia COUNT OVER()]
    --[B. Využite parametrov ako sú PARTTION BY, CURRENT ROW...atď.]
-- ===========================================================================

--[5/A. Rozšírená funkcia COUNT OVER()]
SELECT firstname, lastname, country, Count(*) OVER (PARTITION BY country) AS Pocet_Zakaznikov_Krajiny FROM customers;

--[5/B. Využite parametrov ako sú PARTTION BY, CURRENT ROW...atď.]
SELECT TO_CHAR(sale_date, 'YYYY') AS Roky, AVG(price) OVER (PARTITION BY TO_CHAR(sale_date, 'YYYY')) AS Priemerna_trzba FROM sales;


--6. =========================================================================
    --[A. Dátumové funkcie napr. ADD_MONTHS, MONTHS_BETWEEN...atď]
    --[B. Funkcie TO_CHAR, TO_DATE]
--  ==========================================================================

--[6/A. Dátumové funkcie napr. ADD_MONTHS, MONTHS_BETWEEN...atď]
--MONTHS_BETWEEN
SELECT MONTHS_BETWEEN(TO_DATE('1-DEC-2022', 'DD-Mon-YYYY'), TO_DATE('1-DEC-2020', 'DD-Mon-YYYY')) AS Months_between FROM sales;

--ADD_MONTHS
SELECT ADD_MONTHS(TO_DATE('3-JAN-2021'), 4) AS Pridaj_4_Mesiace FROM sales;

--[6/B. Funkcie TO_CHAR, TO_DATE]
SELECT TO_CHAR(sale_date, 'DD-MON-YYYY') AS DATUM_TO_CHAR FROM sales;


--7. =========================================================================
--[A. Funkcia NVL]
SELECT NVL(component_id, 0) AS Components FROM stock ORDER BY component_id ASC;

--8. =========================================================================
    --[A. Triedenie RANK OVER()]
    --[B.  Triedenie ROW_NUMBER OVER()]
--  ==========================================================================
--[A. Triedenie RANK OVER()]
SELECT build_id, price, RANK() OVER (ORDER BY price DESC) AS Rank_Price FROM sales;

--[B.  Triedenie ROW_NUMBER OVER()]
SELECT build_id, price, ROW_NUMBER() OVER (ORDER BY price DESC) AS Row_Number FROM sales;

--9. =========================================================================
    --[A.  Využitie textovej funkcie]
    --[B.   Využitie matematickej funkcie]
    --[C.   Kombinácia viacerých matematických alebo textových funkcií]
--  ==========================================================================
--[A.  Využitie textovej funkcie]
SELECT firstname, LENGTH(firstname) AS Dlzka_Mena FROM customers;

--[B.   Využitie matematickej funkcie]
SELECT SUM(price) AS Celkova_Cena FROM sales;

--[C.   Kombinácia viacerých matematických alebo textových funkcií]
SELECT 
  SUM(length(firstname) - length(replace(firstname, 'A', ''))) AS Pocet_Velkych_Znakov,
  SUM(length(firstname) - length(replace(firstname, 'a', ''))) AS Pocet_Malych_Znakov
FROM customers;

--10. =========================================================================
    --[A.  Spojenie aspoň dvoch tabuliek]
SELECT * FROM customers c JOIN sales s ON c.customer_id = s.customer_id;

--11. =========================================================================
    --[A.  Spojenie aspoň dvoch tabuliek, výsledok musí negovať dopyt (výber zákazníkov, ktorí nepatria pododdelenia v Trnave)]
SELECT c.firstname, c.lastname, c.country, c2.firstname, c2.lastname, c2.country FROM customers C 
LEFT JOIN customers_2 c2 ON c.customer_id = c2.customer_id WHERE c.firstname != 'Jess';

--12. =========================================================================
    --[A.  Výber jednotlivých položiek so vzťahom ku konkrétnej položke (výber tých zákazníkov, ktorí spolupracujú len s Michalom/právnikom...)]


--13. =========================================================================
    --[A.  Spojenie JOIN ON]
SELECT * FROM customers c JOIN sales s ON c.customer_id = s.customer_id;

    --[B.  Spojenie NATURAL JOIN / JOIN USING]
SELECT * FROM sales JOIN pc_builds USING (build_id);

    --[C.   Vonkajšie ľavé a pravé spojenie LEFT/RIGHT OUTER JOIN]
SELECT * FROM sales 
LEFT OUTER JOIN customers ON sales.customer_id = customers.customer_id;

SELECT * FROM sales 
RIGHT OUTER JOIN customers ON sales.customer_id = customers.customer_id;

    --[D.   Plné vonkajšie spojenie FULL OUTER JOIN]
SELECT * FROM customers FULL OUTER JOIN customers_2 ON customers.firstname = customers_2.firstname;

--14. =========================================================================
    --[A.  Spojenie troch tabuliek]
SELECT s.customer_id, c.firstname || ' ' || c.lastname AS Cele_Meno, s.build_id, b.build_name, s.price, b.build_id, c.customer_id FROM sales s
JOIN pc_builds b ON s.build_id = b.build_id
JOIN customers c ON s.customer_id = c.customer_id;

--15. =========================================================================
    --[A.  Vytvorenie pohľadu VIEW]
CREATE VIEW Zakaznici_VIEW AS
SELECT customer_id, firstname, lastname, email, country FROM customers;
--Zobrazenie pohľadu
SELECT * FROM Zakaznici_VIEW;

--16. =========================================================================
    --[A.  Dopyt s podmienkou a ľubovoľnou funkciou nad pohľadom]
SELECT * FROM Zakaznici_VIEW WHERE Country = 'Netherland';

--17. =========================================================================
    --[A.  INSERT s vnoreným SELECT príkazom]
INSERT INTO customers (customer_id, firstname, lastname, email, country)
SELECT customer_id, firstname, lastname, email, country FROM customers_2
WHERE customer_id = '101';

--18. =========================================================================
    --[A.  UPDATE s vnoreným SELECT príkazom]
UPDATE customers_2 SET firstname = (
    SELECT firstname
    FROM customers_2
    WHERE customer_id = 48
)
WHERE customer_id = 50;

--19. =========================================================================
    --[A.  DELETE s vnoreným SELECT príkazom]
DELETE FROM customers WHERE EXISTS (SELECT firstname FROM customers WHERE firstname = 'Jano');



--20. =========================================================================
    -- PROCEDÚRA S EXPLICITNÝM KURZOROM
CREATE OR REPLACE PROCEDURE CUSTOMERS_OVER_3k (price IN NUMBER) --Potrebný parameter cena
AS
    CURSOR customer_cursor IS --deklerovanie Explicitného Kurzoru
        SELECT s.sale_id, s.customer_id, c.firstname, c.lastname, s.price
        FROM sales s
        JOIN customers c ON s.customer_id = c.customer_id
        WHERE s.price > price; 
        -- SQL príkaz ktorý spája 2 tabulky customers a sales

    var customer_cursor%ROWTYPE; --premenná do ktorje sa uložia hodnoty z kurzoru
BEGIN
    OPEN customer_cursor; -- otvorenie kurzoru
    LOOP --LOOP na prechádzanie kurzoru a načítanie dát
        FETCH customer_cursor INTO var; -- načítanie dát do kurzoru
        EXIT WHEN customer_cursor%NOTFOUND; -- vystúpenie/ukončenie ak je kurzor prázdny
        DBMS_OUTPUT.PUT_LINE(var.customer_id ||' '|| var.firstname  ||' '|| var.lastname  ||' '|| var.price); -- výpis
    END LOOP; -- koniec loopu
    CLOSE customer_cursor; -- uzatvorenie kurzoru
END;
/

BEGIN
DBMS_OUTPUT.ENABLE(NULL);
CUSTOMERS_OVER_3k(3000); -- volanie procedúry s paramtetrom 3000 (CENA/PRICE)
END;
/
--20. =========================================================================
    -- IMPLICITNÁ FUNKCIA --vytvorenie funkcie s povinným atribútom (customerID)
CREATE OR REPLACE FUNCTION pocet_nakupov(customerID IN NUMBER)
RETURN NUMBER IS
    pocet_objednavok NUMBER; -- Premenná pre uloženie počtu nákupov

BEGIN
    SELECT COUNT(*) INTO pocet_objednavok FROM sales S
    WHERE s.customer_id = customerID;
    RETURN pocet_objednavok; -- vracanie hodnoty počtu nakupov zo selectu do premennej
END;
/
SELECT pocet_nakupov(23) FROM dual;
/
--volanie funkcie s povinným atributom Customer ID 

--21. =========================================================================
    -- TRIGGER
CREATE OR REPLACE TRIGGER customer_trigger --vytvorenie triggeru
BEFORE INSERT ON customers_2 --spustí sa vždy pred vložením dát do tabulky customers_2 
FOR EACH ROW
DECLARE
    next_customer_id NUMBER; -- premenná pre uloženie následujuceho ID
BEGIN
    SELECT NVL(MAX(customer_id), 0) + 1
    INTO next_customer_id
    FROM customers_2;
    
    :NEW.customer_id := next_customer_id; -- vkladanie automatickeho ID
END;
/



--22. =========================================================================
    -- SCHEDULER
/*
Skúšal som to no prišiel som na to že to zrejme na Oracle LiveSQL nefunguje prikladám zakomentovaný scheduler
Vyhadzuje chybu: PLS-00201: identifier 'DBMS_SCHEDULER' must be declared, pri ktorej keď som hľadal ako to vyriešiť,
bolo napísané že to musí povoliť správca Databázového systému.

Ale v SQLDeveloper Aplikácii to funguje normálne
*/

BEGIN
  DBMS_SCHEDULER.CREATE_JOB (
   job_name => 'update_customer_data',
   job_type => 'PLSQL_BLOCK',
   job_action => 'BEGIN
                    UPDATE customers SET last_updated = SYSDATE;
                  END;',
   start_date => SYSTIMESTAMP,
   repeat_interval => 'FREQ=DAILY;BYHOUR=0;BYMINUTE=0;BYSECOND=0;',
   end_date => NULL,
   enabled => TRUE,
   comments => 'Aktualizácia Zákazníka každých 24H (O 0:00)');
END;
/

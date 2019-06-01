DROP TABLE LOG;
DROP TABLE ORDERS;
DROP TABLE MOVIES;
DROP TABLE USERS;

CREATE TABLE "USERS" (
    "USERNAME" VARCHAR (50) not null primary key,
    "PASSWORD" VARCHAR (100) not null,
    "EMAIL" VARCHAR (200) not null,
    "FIRST_NAME" VARCHAR (50) not null,
    "LAST_NAME" VARCHAR (50) not null,
    "ADDRESS" VARCHAR (500) not null,
    "SUBURB" VARCHAR (50) not null,
    "POSTCODE" VARCHAR (4) not null,
    "TYPE" VARCHAR (5) not null,
    "STATUS" VARCHAR (10) not null
);

CREATE TABLE "MOVIES" (
    "MOVIE_ID" INTEGER not null primary key,
    "TITLE" VARCHAR(32) not null,
    "GENRE" VARCHAR(32) not null,
    "RELEASE_DATE" VARCHAR(32),
    "DIRECTOR" VARCHAR(32),
    "SYNOPSIS" VARCHAR(500) not null,
    "PRICE" DOUBLE not null,
    "COPIES" INTEGER not null, 
    "POSTERS" VARCHAR(32) not null
);

CREATE TABLE "LOG" (
    "LOGID" INTEGER not null primary key,
    "USERNAME" VARCHAR(50) not null,
    "STATUS"VARCHAR (20) not null,
    "ACTIVITY" VARCHAR (32) not null
);



CREATE TABLE ORDERS (ORDER_ID BIGINT DEFAULT GENERATED_BY_DEFAULT  NOT NULL GENERATED ALWAYS AS IDENTITY, MOVIE_ID BIGINT NOT NULL, AMOUNT INTEGER, USERNAME VARCHAR(50) NOT NULL, STATUS VARCHAR(10), PRIMARY KEY (ORDER_ID, USERNAME, MOVIE_ID));


INSERT INTO ADMINISTRATOR.LOG (LOGID, USERNAME, STATUS, ACTIVITY) VALUES (682454, 'marco', 'Signed In', '17:25:34 31/05/2019');
INSERT INTO ADMINISTRATOR.LOG (LOGID, USERNAME, STATUS, ACTIVITY) 
	VALUES (341298, 'marco', 'Signed In', '17:35:01 31/05/2019');
INSERT INTO ADMINISTRATOR.LOG (LOGID, USERNAME, STATUS, ACTIVITY) 
	VALUES (622341, 'marco', 'Signed In', '17:39:14 31/05/2019');
INSERT INTO ADMINISTRATOR.LOG (LOGID, USERNAME, STATUS, ACTIVITY) 
	VALUES (884904, 'marco', 'Signed In', '17:42:59 31/05/2019');
INSERT INTO ADMINISTRATOR.LOG (LOGID, USERNAME, STATUS, ACTIVITY) 
	VALUES (701548, 'marco', 'Signed In', '17:45:05 31/05/2019');
INSERT INTO ADMINISTRATOR.LOG (LOGID, USERNAME, STATUS, ACTIVITY) 
	VALUES (411647, 'marco', 'Signed In', '17:46:46 31/05/2019');
INSERT INTO ADMINISTRATOR.LOG (LOGID, USERNAME, STATUS, ACTIVITY) 
	VALUES (692997, 'marco', 'Signed In', '18:16:38 31/05/2019');
INSERT INTO ADMINISTRATOR.LOG (LOGID, USERNAME, STATUS, ACTIVITY) 
	VALUES (433987, 'marco', 'Signed Out', '18:16:51 31.05.2019');
INSERT INTO ADMINISTRATOR.LOG (LOGID, USERNAME, STATUS, ACTIVITY) 
	VALUES (158673, 'marco', 'Signed In', '18:17:41 31/05/2019');
INSERT INTO ADMINISTRATOR.LOG (LOGID, USERNAME, STATUS, ACTIVITY) 
	VALUES (778374, 'Husein', 'Signed In', '18:23:40 31/05/2019');
INSERT INTO ADMINISTRATOR.LOG (LOGID, USERNAME, STATUS, ACTIVITY) 
	VALUES (366309, 'marco', 'Signed In', '18:28:00 31/05/2019');
INSERT INTO ADMINISTRATOR.LOG (LOGID, USERNAME, STATUS, ACTIVITY) 
	VALUES (247583, 'marco', 'Signed In', '18:32:28 31/05/2019');
INSERT INTO ADMINISTRATOR.LOG (LOGID, USERNAME, STATUS, ACTIVITY) 
	VALUES (611577, 'marco', 'Signed In', '19:05:50 31/05/2019');
INSERT INTO ADMINISTRATOR.LOG (LOGID, USERNAME, STATUS, ACTIVITY) 
	VALUES (611577, 'marco', 'Signed In', '19:05:50 31/05/2019');
INSERT INTO ADMINISTRATOR.LOG (LOGID, USERNAME, STATUS, ACTIVITY) 
	VALUES (594525, 'marco', 'Signed In', '19:22:47 31/05/2019');
INSERT INTO ADMINISTRATOR.LOG (LOGID, USERNAME, STATUS, ACTIVITY) 
	VALUES (949006, 'marco', 'Signed In', '19:24:04 31/05/2019');
INSERT INTO ADMINISTRATOR.LOG (LOGID, USERNAME, STATUS, ACTIVITY) 
	VALUES (952144, 'marco', 'Signed In', '19:27:20 31/05/2019');
INSERT INTO ADMINISTRATOR.LOG (LOGID, USERNAME, STATUS, ACTIVITY) 
	VALUES (601454, 'marco', 'Signed In', '19:29:50 31/05/2019');
INSERT INTO ADMINISTRATOR.LOG (LOGID, USERNAME, STATUS, ACTIVITY) 
	VALUES (901631, 'marco', 'Signed In', '20:26:21 31/05/2019');
INSERT INTO ADMINISTRATOR.LOG (LOGID, USERNAME, STATUS, ACTIVITY) 
	VALUES (769049, 'marco', 'Signed In', '20:50:22 31/05/2019');
INSERT INTO ADMINISTRATOR.LOG (LOGID, USERNAME, STATUS, ACTIVITY) 
	VALUES (820569, 'marco', 'Signed In', '20:56:42 31/05/2019');
INSERT INTO ADMINISTRATOR.LOG (LOGID, USERNAME, STATUS, ACTIVITY) 
	VALUES (118441, 'kquin', 'Signed In', '22:26:37 31/05/2019');
INSERT INTO ADMINISTRATOR.LOG (LOGID, USERNAME, STATUS, ACTIVITY) 
	VALUES (909615, 'kquin', 'Signed Out', '22:26:57 31.05.2019');
INSERT INTO ADMINISTRATOR.LOG (LOGID, USERNAME, STATUS, ACTIVITY) 
	VALUES (822962, 'kquin', 'Signed In', '23:35:46 31/05/2019');
INSERT INTO ADMINISTRATOR.LOG (LOGID, USERNAME, STATUS, ACTIVITY) 
	VALUES (514411, 'hclaud', 'Signed In', '01:47:08 01/06/2019');


INSERT INTO USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, "TYPE", STATUS) VALUES ('kquin', 'kquin', 'kaydee@mail.com', 'Kaydee', 'Quintero', '1/46 Coles Parade', 'Manly Vale', '2093', 'Staff', 'Active');
INSERT INTO USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, "TYPE", STATUS) VALUES ('asny', 'asny', 'ayat@mail.com', 'Ayat', 'Snyder', '1/28 Dork Parade', 'Dee Why', '2099', 'Staff', 'Active');
INSERT INTO USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, "TYPE", STATUS) VALUES ('hcarlson', 'hcarlson', 'hanifa@mail.com', 'Hanifa', 'Carlson', '11 Koorala Street', 'Manly Vale', '2093', 'Staff', 'Active');
INSERT INTO USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, "TYPE", STATUS) VALUES ('mwagstaff', 'mwagstaff', 'mysha@mail.com', 'Mysha', 'Wagstaff', '56 Brode Way', 'Balgowlah', '2095', 'Staff', 'Active');
INSERT INTO USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, "TYPE", STATUS) VALUES ('hclaud', 'hclaud', 'hclaud@mail.com', 'Hayley', 'Claud', '1/28 Rose Street', 'Freshwater', '2096', 'Admin', 'Active');
INSERT INTO USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, "TYPE", STATUS) VALUES ('lmagallanes', 'lmagallanes', 'leanne@mail.com', 'Leanne', 'Magallanes', '14 Pacific Parade', 'Dee Why', '2099', 'Admin', 'Active');
INSERT INTO USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, "TYPE", STATUS) VALUES ('chadeguzman', 'chadeguzman', 'chacha@mail.com', 'Charis', 'DeGuzman', '13 Sturdee Parade', 'Dee Why', '2099', 'Admin', 'Active');
INSERT INTO USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, "TYPE", STATUS) VALUES ('ksalvania', 'ksalvania', 'karyl@mail.com', 'Karyl', 'Salvania', '1 Oxford Falls Street', 'Beacon Hill', '2100', 'Admin', 'Active');
INSERT INTO USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, "TYPE", STATUS) VALUES ('jreber', 'jreber', 'jonah@mail.com', 'Jonah', 'Reber', '399 Condamine Street', 'Allambie Heights', '2100', 'Admin', 'Active');
INSERT INTO USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, "TYPE", STATUS) VALUES ('aelston', 'aelston', 'ashleigh@mail.com', 'Ashleigh', 'Elston', '65 Quirk Road', 'Manly Vale', '2093', 'User', 'Active');
INSERT INTO USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, "TYPE", STATUS) VALUES ('slypig', 'slypig', 'cunningham@mail.com', 'Daniel', 'Cunningham', '65 Quirk Road', 'Manly Vale', '2093', 'User', 'Active');
INSERT INTO USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, "TYPE", STATUS) VALUES ('atolentino', 'atolentino', 'alexie@mail.com', 'Alexie', 'Tolentino', '89 Fairway Close', 'Manly', '2095', 'User', 'Active');
INSERT INTO USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, "TYPE", STATUS) VALUES ('lcarlos', 'lcarlos', 'logan@mail.com', 'Logan', 'Carlos', '12 Nuglas Way', 'Cromer', '2099', 'User', 'Active');
INSERT INTO USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, "TYPE", STATUS) VALUES ('struong', 'struong', 'skye@mail.com', 'Skye', 'Truong', '45 High Street', 'Curl Curl', '2096', 'User', 'Active');
INSERT INTO USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, "TYPE", STATUS) VALUES ('afoster', 'afoster', 'ana@mail.com', 'Anastasia', 'Foster', '18 Kit Parade', 'Cromer', '2099',
insert into USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, TYPE, STATUS) values ('bkynd0', 'hfm6BR', 'bkynd0@cyberchimps.com', 'Burl', 'Kynd', '4 Marquette Center', 'Maliuzui', '6210', 'Place', 'Aquamarine');
insert into USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, TYPE, STATUS) values ('ajurzyk1', 'XqFptIG', 'ajurzyk1@scientificamerican.com', 'Ardelis', 'Jurzyk', '2445 Little Fleur Park', 'Balaogan', '4829', 'Drive', 'Aquamarine');
insert into USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, TYPE, STATUS) values ('estanner2', 'H4gpIo', 'estanner2@friendfeed.com', 'Ernaline', 'Stanner', '55881 Bartillon Avenue', 'Alegrete', '5182', 'Avenue', 'Orange');
insert into USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, TYPE, STATUS) values ('mstrowan3', 'puNvOoYR', 'mstrowan3@msn.com', 'Marjie', 'Strowan', '20 Mosinee Park', 'Ngurore', '6701', 'Road', 'Crimson');
insert into USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, TYPE, STATUS) values ('clabuschagne4', 'jao8kZ', 'clabuschagne4@nsw.gov.au', 'Claudian', 'Labuschagne', '463 Becker Park', 'Damaying', '8221', 'Way', 'Orange');
insert into USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, TYPE, STATUS) values ('ntassell5', 'w9yvrNko', 'ntassell5@who.int', 'North', 'Tassell', '3820 Mosinee Pass', 'Suntar', '7914', 'Avenue', 'Teal');
insert into USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, TYPE, STATUS) values ('gtrumble6', 'VCXiBuy3vd7E', 'gtrumble6@dot.gov', 'Garey', 'Trumble', '7 Havey Park', 'Thị Trấn Quế', '4622', 'Pass', 'Khaki');
insert into USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, TYPE, STATUS) values ('tkingaby7', 'Xx1KjC', 'tkingaby7@miitbeian.gov.cn', 'Tony', 'Kingaby', '435 Grim Terrace', 'Kokoshkino', '2152', 'Parkway', 'Puce');
insert into USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, TYPE, STATUS) values ('tswatton8', '2Gz1i4Ecs', 'tswatton8@flavors.me', 'Tammara', 'Swatton', '602 Graedel Crossing', 'Angoulême', '5279', 'Point', 'Green');
insert into USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, TYPE, STATUS) values ('wembling9', 'oLuR6XqDw8', 'wembling9@unc.edu', 'Wilow', 'Embling', '3 Rieder Terrace', 'Yantal’', '4702', 'Terrace', 'Khaki');
insert into USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, TYPE, STATUS) values ('aallnera', 'HRhqER4a5', 'aallnera@nature.com', 'Archie', 'Allner', '3 Thierer Alley', 'Dębów', '2487', 'Road', 'Goldenrod');
insert into USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, TYPE, STATUS) values ('htatlockb', 'yWse0SZgc', 'htatlockb@plala.or.jp', 'Herrick', 'Tatlock', '3 Grover Plaza', 'Roanoke', '1167', 'Crossing', 'Goldenrod');
insert into USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, TYPE, STATUS) values ('atowrissc', 'N9qtse', 'atowrissc@netlog.com', 'Amata', 'Towriss', '9757 Killdeer Parkway', 'Kuçovë', '6405', 'Way', 'Blue');
insert into USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, TYPE, STATUS) values ('dnelthropd', 'CaBFWPwhhw', 'dnelthropd@cloudflare.com', 'Dewitt', 'Nelthrop', '07539 Washington Plaza', 'Hongjiazui', '4975', 'Drive', 'Green');
insert into USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, TYPE, STATUS) values ('amatschuke', 'L4HDN1QbU27v', 'amatschuke@indiegogo.com', 'Aleda', 'Matschuk', '404 Welch Point', 'Goma', "7374", 'Avenue', 'Aquamarine');
insert into USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, TYPE, STATUS) values ('mnewisf', 'dyO3ug46tU', 'mnewisf@auda.org.au', 'Matthaeus', 'Newis', '82 Cambridge Drive', 'Malawag', '9547', 'Avenue', 'Fuscia');
insert into USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, TYPE, STATUS) values ('clabastidag', 'BnmRuQP6nc0', 'clabastidag@miibeian.gov.cn', 'Cobb', 'LaBastida', '52 Jay Park', 'Géfyra', "8643", 'Way', 'Crimson');
insert into USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, TYPE, STATUS) values ('bgobelh', 'BUsSFdq', 'bgobelh@nyu.edu', 'Beckie', 'Gobel', '6 Arrowood Hill', 'San Miguel', "9281", 'Lane', 'Fuscia');
insert into USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, TYPE, STATUS) values ('omcconachiei', 'iMpL9y', 'omcconachiei@devhub.com', 'Oralee', 'McConachie', '2 Declaration Court', 'Terrugem', "5231", 'Avenue', 'Fuscia');
insert into USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, TYPE, STATUS) values ('hrumfordj', 'LYxCIuv', 'hrumfordj@drupal.org', 'Hallie', 'Rumford', '4961 6th Alley', 'Maevatanana', "7096", 'Pass', 'Pink');
insert into USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, TYPE, STATUS) values ('rbemlottk', 'yVQx7SZX5xBz', 'rbemlottk@plala.or.jp', 'Raviv', 'Bemlott', '24 Jana Lane', 'Victoria', "7800", 'Place', 'Green');
insert into USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, TYPE, STATUS) values ('dstolbergerl', 'Aci06O9gLKyg', 'dstolbergerl@1und1.de', 'Davie', 'Stolberger', '8 Goodland Plaza', 'Neẖalim', "4591", 'Point', 'Turquoise');
insert into USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, TYPE, STATUS) values ('isackurm', '7M6BobkTpAyY', 'isackurm@desdev.cn', 'Innis', 'Sackur', '75052 Birchwood Court', 'Höllviken', "6126", 'Drive', 'Mauv');
insert into USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, TYPE, STATUS) values ('afitkinn', '6DpZpHNp2', 'afitkinn@shareasale.com', 'Adrian', 'Fitkin', '00 Shopko Court', 'Nova Viçosa', "4143", 'Alley', 'Khaki');
insert into USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, TYPE, STATUS) values ('estoado', 'OuudleEZQlun', 'estoado@sina.com.cn', 'Emmi', 'Stoad', '68 Homewood Junction', 'Quebradas', "9943", 'Way', 'Teal');
insert into USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, TYPE, STATUS) values ('jpillerp', 'ai3EpmgGrn8p', 'jpillerp@hc360.com', 'Jada', 'Piller', '01055 Londonderry Court', 'Vienne', "9912", 'Terrace', 'Crimson');
insert into USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, TYPE, STATUS) values ('mbettlesq', 'I7UYNRae', 'mbettlesq@theguardian.com', 'Merlina', 'Bettles', '30 Division Parkway', 'Sułoszowa', "4751", 'Court', 'Violet');
insert into USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, TYPE, STATUS) values ('lcomerr', '5nMjQC0QE1EO', 'lcomerr@shinystat.com', 'Lisabeth', 'Comer', '4405 Red Cloud Junction', 'Estrada', "5338", 'Center', 'Mauv');
insert into USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, TYPE, STATUS) values ('rbritos', 'g2hjMiOP', 'rbritos@mozilla.org', 'Ring', 'Brito', '0 Meadow Ridge Lane', 'Wangping', "7569", 'Junction', 'Indigo');
insert into USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, TYPE, STATUS) values ('miannuzzellit', '07nXXK', 'miannuzzellit@list-manage.com', 'Marjie', 'Iannuzzelli', '7 Debra Hill', 'Volokonovka', "7657", 'Pass', 'Crimson');
insert into USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, TYPE, STATUS) values ('gkochsu', 'AnoDw30Ys6', 'gkochsu@stanford.edu', 'Gregorio', 'Kochs', '73 Cordelia Drive', 'Taber', "6793", 'Street', 'Khaki');
insert into USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, TYPE, STATUS) values ('gchaplainv', '8qzd8op', 'gchaplainv@angelfire.com', 'Gus', 'Chaplain', '6159 Granby Parkway', 'Río Tercero', "7702", 'Junction', 'Indigo');
insert into USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, TYPE, STATUS) values ('tcardinalw', 'phmmZd', 'tcardinalw@oracle.com', 'Tiffy', 'Cardinal', '54 Elka Alley', 'Celestynów', "2979", 'Alley', 'Green');
insert into USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, TYPE, STATUS) values ('ihaggasx', 'CSHdjaRGL', 'ihaggasx@mapy.cz', 'Ingeberg', 'Haggas', '4916 Maple Wood Alley', 'Florencia', "6413", 'Drive', 'Blue');
insert into USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, TYPE, STATUS) values ('gshoutey', 'Vk6P7FspCi', 'gshoutey@last.fm', 'Gale', 'Shoute', '41681 Victoria Way', 'Novaya Chigla', "1534", 'Road', 'Orange');
insert into USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, TYPE, STATUS) values ('erisdalez', 'dR9rA9LdxEOM', 'erisdalez@skype.com', 'Evey', 'Risdale', '57 Hansons Street', 'Caldas da Rainha', "8019", 'Lane', 'Crimson');
insert into USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, TYPE, STATUS) values ('deaden10', '1tgihYTnJtT', 'deaden10@google.com.br', 'Dave', 'Eaden', '147 Dunning Junction', 'That Phanom', "5960", 'Center', 'Purple');
insert into USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, TYPE, STATUS) values ('wyapp11', 'hDK0ezX', 'wyapp11@google.ca', 'Web', 'Yapp', '10070 Mitchell Center', 'Ordem', "7290", 'Center', 'Red');
insert into USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, TYPE, STATUS) values ('kgillingwater12', '8g53gL5dw', 'kgillingwater12@w3.org', 'Kipper', 'Gillingwater', '63717 Erie Circle', 'Bellavista', "4725", 'Lane', 'Red');
insert into USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, TYPE, STATUS) values ('mbrazur13', '9SC3Uqcqo', 'mbrazur13@vk.com', 'Maiga', 'Brazur', '0135 Pankratz Place', 'Kazlų Rūda', "1255", 'Point', 'Turquoise');
insert into USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, TYPE, STATUS) values ('cwharram14', '8UvWaJ6', 'cwharram14@sfgate.com', 'Cindy', 'Wharram', '91 Kensington Avenue', 'Drawsko', "8450", 'Alley', 'Turquoise');
insert into USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, TYPE, STATUS) values ('hwynrehame15', 'f8B2gURK', 'hwynrehame15@dailymotion.com', 'Hy', 'Wynrehame', '77803 Summer Ridge Street', 'Al Manqaf', "3478", 'Drive', 'Maroon');
insert into USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, TYPE, STATUS) values ('odunks16', 'IJ49Mev92V1X', 'odunks16@webmd.com', 'Olivie', 'Dunks', '4869 Maple Crossing', 'Tireman Timur', "8483", 'Plaza', 'Green');
insert into USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, TYPE, STATUS) values ('zheaviside17', 'xtOLRdA', 'zheaviside17@sciencedirect.com', 'Zollie', 'Heaviside', '604 Jana Alley', 'Yelabuga', "7201", 'Trail', 'Fuscia');
insert into USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, TYPE, STATUS) values ('dinseal18', 'AltVQU', 'dinseal18@baidu.com', 'Delphinia', 'Inseal', '311 Barnett Drive', 'Labuan', "6598", 'Road', 'Maroon');
insert into USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, TYPE, STATUS) values ('teatherton19', 'q91Nc1zE4CR', 'teatherton19@google.es', 'Tadd', 'Eatherton', '11 Dottie Drive', 'Veguitas', "2695", 'Way', 'Indigo');
insert into USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, TYPE, STATUS) values ('rgoncaves1a', '2B331sRz', 'rgoncaves1a@upenn.edu', 'Rodrigo', 'Goncaves', '81053 Marcy Junction', 'Själevad', "8276", 'Park', 'Fuscia');
insert into USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, TYPE, STATUS) values ('jpinches1b', 'wmqhCJL', 'jpinches1b@spiegel.de', 'Jana', 'Pinches', '546 International Circle', 'Wat Bot', "8422", 'Plaza', 'Purple');
insert into USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, TYPE, STATUS) values ('kchapple1c', '5Rg1UohpB', 'kchapple1c@mlb.com', 'Kennie', 'Chapple', '1 Carey Junction', 'Jönköping', "7384", 'Center', 'Violet');
insert into USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, SUBURB, POSTCODE, TYPE, STATUS) values ('rlathaye1d', 'uOa3jMA5rx', 'rlathaye1d@slate.com', 'Rois', 'Lathaye', '15 Autumn Leaf Hill', 'Czudec', "6192", 'Avenue', 'Indigo');

INSERT INTO ADMINISTRATOR.MOVIES (MOVIE_ID, TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES, POSTERS)  VALUES (1, 'Avengers: Infinity War', 'Sci-Fi', '16 February 2018', '16 February 2018', '16 February 2018', 29.98, 14, 'Images/posters/avenger3.jpg');
INSERT INTO ADMINISTRATOR.MOVIES (MOVIE_ID, TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES, POSTERS) VALUES (2, 'The Avengers', 'Sci-fi', '23 March 2008', '23 March 2008', '23 March 2008', 19.98, 7, 'Images/posters/avengers.jpg');
INSERT INTO ADMINISTRATOR.MOVIES (MOVIE_ID, TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES, POSTERS) VALUES (3, 'Avengers: End Game', 'Adventure', '11 April 2019', '11 April 2019', '11 April 2019', 49.98, 30, 'Images/posters/ENDGAME.jpg');
INSERT INTO ADMINISTRATOR.MOVIES (MOVIE_ID, TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES, POSTERS) VALUES (4, 'The Black Panther', 'Action', '05 January 2018', '05 January 2018', '05 January 2018', 25.98, 1, 'Images/posters/blackpanther.jpg');
INSERT INTO ADMINISTRATOR.MOVIES (MOVIE_ID, TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES, POSTERS) VALUES (5, 'Dark Knight', 'Action', '17 December 2015', 'Hayley Claud', 'After the death of his father, T''Challa returns home to the African nation of Wakanda to take his rightful place as king. When a powerful enemy suddenly reappears, T''Challa''s mettle as king -- and as Black Panther -- gets tested when he''s drawn into a conflict that puts the fate of Wakanda and the entire world at risk. Faced with treachery and danger, the young king must rally his allies and release the full power of Black Panther to defeat his foes and secure the safety of his people.', 14.98, 23, 'Images/posters/darkknight.jpg');
INSERT INTO ADMINISTRATOR.MOVIES (MOVIE_ID, TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES, POSTERS) VALUES (6, 'Godfather', 'Drama', '13 October  2000', 'Caleb Ardarn', 'Dom Cobb is a thief with the rare ability to enter people''s dreams and steal their secrets from their subconscious. His skill has made him a hot commodity in the world of corporate espionage but has also cost him everything he loves. Cobb gets a chance at redemption when he is offered a seemingly impossible task: Plant an idea in someone''s mind. If he succeeds, it will be the perfect crime, but a dangerous enemy anticipates Cobb''s every move.', 14.98, 6, 'Images/posters/godfather.jpg');
INSERT INTO ADMINISTRATOR.MOVIES (MOVIE_ID, TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES, POSTERS) VALUES (7, 'Inception', 'Fantasy', '30 September 2012', 'Caleb Ardarn', 'Dom Cobb is a thief with the rare ability to enter people''s dreams and steal their secrets from their subconscious. His skill has made him a hot commodity in the world of corporate espionage but has also cost him everything he loves. Cobb gets a chance at redemption when he is offered a seemingly impossible task: Plant an idea in someone''s mind. If he succeeds, it will be the perfect crime, but a dangerous enemy anticipates Cobb''s every move.', 14.98, 3, 'Images/posters/inception.jpg');
INSERT INTO ADMINISTRATOR.MOVIES (MOVIE_ID, TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES, POSTERS) VALUES (8, 'The Missing', 'Drama', '17 December 2015', '17 December 2015', '17 December 2015', 25.98, 2, 'Images/posters/missing.jpg');
INSERT INTO ADMINISTRATOR.MOVIES (MOVIE_ID, TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES, POSTERS) VALUES (9, 'New Hope', 'Family', '17 December 2015', '17 December 2015', '17 December 2015', 29.98, 17, 'Images/posters/newhope.jpg');
INSERT INTO ADMINISTRATOR.MOVIES (MOVIE_ID, TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES, POSTERS) VALUES (10, 'Shape of Water', 'Romance', '17 July  2017', 'Caleb Ardarn', 'Iron Man, Thor, the Hulk and the rest of the Avengers unite to battle their most powerful enemy yet -- the evil Thanos. On a mission to collect all six Infinity Stones, Thanos plans to use the artifacts to inflict his twisted will on reality. The fate of the planet and existence itself has never been more uncertain as everything the Avengers have fought for has led up to this moment.', 25.98, 12, 'Images/posters/shapeofwater.jpg');
INSERT INTO ADMINISTRATOR.MOVIES (MOVIE_ID, TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES, POSTERS) VALUES (11, 'Star is born', 'Romance', '17 December 2015', 'Mark Anthony', 'Iron Man, Thor, the Hulk and the rest of the Avengers unite to battle their most powerful enemy yet -- the evil Thanos. On a mission to collect all six Infinity Stones, Thanos plans to use the artifacts to inflict his twisted will on reality. The fate of the planet and existence itself has never been more uncertain as everything the Avengers have fought for has led up to this moment.', 29.98, 17, 'Images/posters/starisborn.jpg');
INSERT INTO ADMINISTRATOR.MOVIES (MOVIE_ID, TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES, POSTERS) VALUES (12, 'Suicide Squad', 'Adventure', '07 December 2012', '07 December 2012', '07 December 2012', 25.98, 14, 'Images/posters/suicesquad.jpg');
INSERT INTO ADMINISTRATOR.MOVIES (MOVIE_ID, TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES, POSTERS) VALUES (13, 'Suicide Squad 2', 'Adventure', '27 November  2015', 'Hayley Clau', 'Iron Man, Thor, the Hulk and the rest of the Avengers unite to battle their most powerful enemy yet -- the evil Thanos. On a mission to collect all six Infinity Stones, Thanos plans to use the artifacts to inflict his twisted will on reality. The fate of the planet and existence itself has never been more uncertain as everything the Avengers have fought for has led up to this moment.', 12.98, 14, 'Images/posters/suicidesquad2.jpg');
INSERT INTO ADMINISTRATOR.MOVIES (MOVIE_ID, TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES, POSTERS) VALUES (14, 'Titanic', 'Romance', '28 August 1999', 'Mark Anthony', 'James Cameron''s "Titanic" is an epic, action-packed romance set against the ill-fated maiden voyage of the R.M.S. Titanic; the pride and joy of the White Star Line and, at the time, the largest moving object ever built. She was the most luxurious liner of her era -- the "ship of dreams" -- which ultimately carried over 1,500 people to their death in the ice cold waters of the North Atlantic in the early hours of April 15, 1912.', 9.98, 12, 'Images/posters/titanic.jpg');
INSERT INTO ADMINISTRATOR.MOVIES (MOVIE_ID, TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES, POSTERS) VALUES (15, 'Venom', 'Action', '17 December 2015', 'Mark Anthony', 'James Cameron''s "Titanic" is an epic, action-packed romance set against the ill-fated maiden voyage of the R.M.S. Titanic; the pride and joy of the White Star Line and, at the time, the largest moving object ever built. She was the most luxurious liner of her era -- the "ship of dreams" -- which ultimately carried over 1,500 people to their death in the ice cold waters of the North Atlantic in the early hours of April 15, 1912.', 9.98, 14, 'Images/posters/venom.jpg');
INSERT INTO ADMINISTRATOR.MOVIES (MOVIE_ID, TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES, POSTERS) VALUES (2, 'Interstellar', 'Sci-Fi', '6 Novermber 2014', 'Christopher Nolan', 'dude goes to space', 18.00, 4, 'Images/posters/interstellar.jpg');
INSERT INTO ADMINISTRATOR.MOVIES (MOVIE_ID, TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES, POSTERS) VALUES (3, 'It', 'Horror', '7 September 2017', 'Andres Muschietti', 'Seven young outcasts in Derry, Maine, are about to face their worst nightmare ', 25.99, 6, 'Images/posters/it.jpg');

INSERT INTO ADMINISTRATOR.ORDERS (MOVIE_ID, AMOUNT, USERNAME, STATUS) VALUES (1, 45, 'roldman', 'Arrived');
INSERT INTO ADMINISTRATOR.ORDERS (MOVIE_ID, AMOUNT, USERNAME, STATUS) VALUES (2, 26, 'roldman', 'Purchased');
INSERT INTO ADMINISTRATOR.ORDERS (MOVIE_ID, AMOUNT, USERNAME, STATUS) VALUES (3, 87, 'mfranks', 'Boxed');
INSERT INTO ADMINISTRATOR.ORDERS (MOVIE_ID, AMOUNT, USERNAME, STATUS) VALUES (4, 36, 'mfranks', 'Pending');
INSERT INTO ADMINISTRATOR.ORDERS (MOVIE_ID, AMOUNT, USERNAME, STATUS) VALUES (5, 52, 'mfranks', 'Purchased');
INSERT INTO ADMINISTRATOR.ORDERS (MOVIE_ID, AMOUNT, USERNAME, STATUS) VALUES (6, 51, 'roldman', 'Purchased');
INSERT INTO ADMINISTRATOR.ORDERS (MOVIE_ID, AMOUNT, USERNAME, STATUS) VALUES (7, 34, 'ghartman', 'Pending');
INSERT INTO ADMINISTRATOR.ORDERS (MOVIE_ID, AMOUNT, USERNAME, STATUS) VALUES (8, 80, 'ghartman', 'Purchased');
INSERT INTO ADMINISTRATOR.ORDERS (MOVIE_ID, AMOUNT, USERNAME, STATUS) VALUES (9, 15, 'roldman', 'Purchased');
INSERT INTO ADMINISTRATOR.ORDERS (MOVIE_ID, AMOUNT, USERNAME, STATUS) VALUES (1, 63, 'ghartman', 'Purchased');
INSERT INTO ADMINISTRATOR.ORDERS (MOVIE_ID, AMOUNT, USERNAME, STATUS) VALUES (1, 68, 'kquin', 'Purchased');
INSERT INTO ADMINISTRATOR.ORDERS (MOVIE_ID, AMOUNT, USERNAME, STATUS) VALUES (1, 3, 'kquin', 'Posted');
INSERT INTO ADMINISTRATOR.ORDERS (MOVIE_ID, AMOUNT, USERNAME, STATUS) VALUES (1, 85, 'kquin', 'Arrived');
INSERT INTO ADMINISTRATOR.ORDERS (MOVIE_ID, AMOUNT, USERNAME, STATUS) VALUES (4, 4, 'lcarlos', 'Purchased');
INSERT INTO ADMINISTRATOR.ORDERS (MOVIE_ID, AMOUNT, USERNAME, STATUS) VALUES (5, 13, 'lcarlos', 'Posted');
INSERT INTO ADMINISTRATOR.ORDERS (MOVIE_ID, AMOUNT, USERNAME, STATUS) VALUES (6, 85, 'lcarlos', 'Boxed');
INSERT INTO ADMINISTRATOR.ORDERS (MOVIE_ID, AMOUNT, USERNAME, STATUS) VALUES (7, 69, 'lcarlos', 'Pending');
INSERT INTO ADMINISTRATOR.ORDERS (MOVIE_ID, AMOUNT, USERNAME, STATUS) VALUES (8, 79, 'jreber', 'Pending');
INSERT INTO ADMINISTRATOR.ORDERS (MOVIE_ID, AMOUNT, USERNAME, STATUS) VALUES (1, 80, 'jreber', 'Pending');
INSERT INTO ADMINISTRATOR.ORDERS (MOVIE_ID, AMOUNT, USERNAME, STATUS) VALUES (2, 79, 'jreber', 'Posted');
INSERT INTO ADMINISTRATOR.ORDERS (MOVIE_ID, AMOUNT, USERNAME, STATUS) VALUES (0, 1, 'clabuschagne4', 'Purchased');
INSERT INTO ADMINISTRATOR.ORDERS (MOVIE_ID, AMOUNT, USERNAME, STATUS) VALUES (0, 1, 'clabuschagne4', 'Purchased');

insert into ORDERS (MOVIE_ID, USERNAME, STATUS, AMOUNT) values (2, 'bkynd0', 'Purchased', 26);
insert into ORDERS (MOVIE_ID, USERNAME, STATUS, AMOUNT) values (3, 'bkynd0', 'Boxed', 87);
insert into ORDERS (MOVIE_ID, USERNAME, STATUS, AMOUNT) values (4, 'bkynd0', 'Pending', 36);
insert into ORDERS (MOVIE_ID, USERNAME, STATUS, AMOUNT) values (5, 'bkynd0', 'Purchased', 52);
insert into ORDERS (MOVIE_ID, USERNAME, STATUS, AMOUNT) values (6, 'bkynd0', 'Purchased', 51);
insert into ORDERS (MOVIE_ID, USERNAME, STATUS, AMOUNT) values (7, 'bkynd0', 'Pending', 34);
insert into ORDERS (MOVIE_ID, USERNAME, STATUS, AMOUNT) values (8, 'bkynd0', 'Purchased', 80);
insert into ORDERS (MOVIE_ID, USERNAME, STATUS, AMOUNT) values (9, 'ajurzyk1', 'Purchased', 15);
insert into ORDERS (MOVIE_ID, USERNAME, STATUS, AMOUNT) values (10, 'ajurzyk1', 'Purchased', 63);
insert into ORDERS (MOVIE_ID, USERNAME, STATUS, AMOUNT) values (11, 'ajurzyk1', 'Purchased', 68);
insert into ORDERS (MOVIE_ID, USERNAME, STATUS, AMOUNT) values (12, 'ajurzyk1', 'Posted', 3);
insert into ORDERS (MOVIE_ID, USERNAME, STATUS, AMOUNT) values (13, 'ajurzyk1', 'Arrived', 85);
insert into ORDERS (MOVIE_ID, USERNAME, STATUS, AMOUNT) values (14, 'ajurzyk1', 'Purchased', 4);
insert into ORDERS (MOVIE_ID, USERNAME, STATUS, AMOUNT) values (15, 'ajurzyk1', 'Posted', 13);
insert into ORDERS (MOVIE_ID, USERNAME, STATUS, AMOUNT) values (16, 'ajurzyk1', 'Boxed', 85);
insert into ORDERS (MOVIE_ID, USERNAME, STATUS, AMOUNT) values (17, 'ajurzyk1', 'Pending', 69);
insert into ORDERS (MOVIE_ID, USERNAME, STATUS, AMOUNT) values (18, 'estanner2', 'Pending', 79);
insert into ORDERS (MOVIE_ID, USERNAME, STATUS, AMOUNT) values (19, 'ajurzyk1', 'Pending', 80);
insert into ORDERS (MOVIE_ID, USERNAME, STATUS, AMOUNT) values (20, 'estanner2', 'Posted', 79);
insert into ORDERS (MOVIE_ID, USERNAME, STATUS, AMOUNT) values (21, 'mstrowan3', 'Posted', 54);
insert into ORDERS (MOVIE_ID, USERNAME, STATUS, AMOUNT) values (22, 'mstrowan3', 'Purchased', 27);
insert into ORDERS (MOVIE_ID, USERNAME, STATUS, AMOUNT) values (23, 'mstrowan3', 'Arrived', 88);
insert into ORDERS (MOVIE_ID, USERNAME, STATUS, AMOUNT) values (24, 'mstrowan3', 'Arrived', 54);
insert into ORDERS (MOVIE_ID, USERNAME, STATUS, AMOUNT) values (25, 'mstrowan3', 'Posted', 54);
insert into ORDERS (MOVIE_ID, USERNAME, STATUS, AMOUNT) values (26, 'bcresserp', 'Boxed', 52);
insert into ORDERS (MOVIE_ID, USERNAME, STATUS, AMOUNT) values (27, 'mstrowan3', 'Arrived', 28);
insert into ORDERS (MOVIE_ID, USERNAME, STATUS, AMOUNT) values (28, 'mstrowan3', 'Boxed', 37);
insert into ORDERS (MOVIE_ID, USERNAME, STATUS, AMOUNT) values (29, 'clabuschagne4', 'Purchased', 81);
insert into ORDERS (MOVIE_ID, USERNAME, STATUS, AMOUNT) values (30, 'clabuschagne4', 'Purchased', 29);
insert into ORDERS (MOVIE_ID, USERNAME, STATUS, AMOUNT) values (31, 'clabuschagne4', 'Pending', 84);
insert into ORDERS (MOVIE_ID, USERNAME, STATUS, AMOUNT) values (32, 'clabuschagne4', 'Posted', 22);
insert into ORDERS (MOVIE_ID, USERNAME, STATUS, AMOUNT) values (33, 'clabuschagne4', 'Posted', 53);
insert into ORDERS (MOVIE_ID, USERNAME, STATUS, AMOUNT) values (34, 'ntassell5', 'Pending', 88);
insert into ORDERS (MOVIE_ID, USERNAME, STATUS, AMOUNT) values (35, 'ntassell5', 'Purchased', 79);
insert into ORDERS (MOVIE_ID, USERNAME, STATUS, AMOUNT) values (36, 'ntassell5', 'Arrived', 24);
insert into ORDERS (MOVIE_ID, USERNAME, STATUS, AMOUNT) values (37, 'ntassell5', 'Pending', 53);
insert into ORDERS (MOVIE_ID, USERNAME, STATUS, AMOUNT) values (38, 'ntassell5', 'Posted', 36);
insert into ORDERS (MOVIE_ID, USERNAME, STATUS, AMOUNT) values (39, 'gtrumble6', 'Pending', 83);
insert into ORDERS (MOVIE_ID, USERNAME, STATUS, AMOUNT) values (40, 'gtrumble6', 'Posted', 57);
insert into ORDERS (MOVIE_ID, USERNAME, STATUS, AMOUNT) values (41, 'gtrumble6', 'Posted', 38);
insert into ORDERS (MOVIE_ID, USERNAME, STATUS, AMOUNT) values (42, 'gtrumble6', 'Arrived', 74);
insert into ORDERS (MOVIE_ID, USERNAME, STATUS, AMOUNT) values (43, 'gtrumble6', 'Arrived', 45);
insert into ORDERS (MOVIE_ID, USERNAME, STATUS, AMOUNT) values (44, 'gtrumble6', 'Pending', 9);
insert into ORDERS (MOVIE_ID, USERNAME, STATUS, AMOUNT) values (45, 'gtrumble6', 'Boxed', 1);
insert into ORDERS (MOVIE_ID, USERNAME, STATUS, AMOUNT) values (46, 'tkingaby7', 'Posted', 73);
insert into ORDERS (MOVIE_ID, USERNAME, STATUS, AMOUNT) values (47, 'tkingaby7', 'Pending', 60);
insert into ORDERS (MOVIE_ID, USERNAME, STATUS, AMOUNT) values (48, 'tkingaby7', 'Arrived', 37);
insert into ORDERS (MOVIE_ID, USERNAME, STATUS, AMOUNT) values (49, 'tkingaby7', 'Boxed', 12);
insert into ORDERS (MOVIE_ID, USERNAME, STATUS, AMOUNT) values (50, 'tkingaby7', 'Pending', 59);

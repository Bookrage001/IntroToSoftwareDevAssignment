DROP TABLE LOG;
DROP TABLE ORDERS;
DROP TABLE MOVIES;
DROP TABLE USERS;


CREATE TABLE "MOVIES" (
    "MOVIE_ID" BIGINT not null primary key
        GENERATED ALWAYS AS IDENTITY
        (START WITH 1, INCREMENT BY 1),
    "TITLE" VARCHAR(32) not null,
    "GENRE" VARCHAR(32) not null,
    "RELEASE_DATE" VARCHAR(32),
    "DIRECTOR" VARCHAR(32),
    "SYNOPSIS" VARCHAR(500) not null,
    "PRICE" DOUBLE not null,
    "COPIES" INTEGER not null
);

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
CREATE TABLE "ORDERS" (
    "ORDER_ID" BIGINT not null
        GENERATED ALWAYS AS IDENTITY
        (START WITH 1, INCREMENT BY 1)  ,
    "MOVIE_ID" BIGINT not null REFERENCES MOVIES(MOVIE_ID) ,
    "AMOUNT" int,
    "USERNAME" VARCHAR(50) not null REFERENCES USERS(USERNAME),
    "STATUS" VARCHAR(10),
    PRIMARY KEY (ORDER_ID, USERNAME, MOVIE_ID)
);
CREATE TABLE "LOG" (
    "LOGID" BIGINT not null primary key
        GENERATED ALWAYS AS IDENTITY
        (START WITH 1, INCREMENT BY 1),
    "USERNAME" VARCHAR(50) REFERENCES Users (USERNAME),
    "TIMESTAMPS" VARCHAR (32) not null,
    "TYPE" VARCHAR (20) not null
);

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

insert into MOVIES (TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES) values ('Charlie Chan on Broadway', 'Comedy|Crime|Mystery|Thriller', '3/17/2012', 'Riccardo Eckford', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 44, 94);
insert into MOVIES (TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES) values ('28 Hotel Rooms', 'Drama', '9/6/2007', 'Christina Exell', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 11, 80);
insert into MOVIES (TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES) values ('Picking Up the Pieces', 'Comedy|Fantasy', '6/27/2015', 'Joy Truwert', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 38, 59);
insert into MOVIES (TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES) values ('I Love You Again', 'Comedy|Drama', '8/19/2014', 'Deina Oak', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.', 37, 44);
insert into MOVIES (TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES) values ('Free The Mind', 'Documentary', '6/24/2006', 'Timoteo Baines', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 11, 28);
insert into MOVIES (TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES) values ('Official Story, The (La historia oficial)', 'Drama', '6/17/2013', 'Evangeline Muston', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 43, 16);
insert into MOVIES (TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES) values ('Long Voyage Home, The', 'Drama|War', '10/6/2010', 'Shina Machent', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 31, 55);
insert into MOVIES (TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES) values ('Sword of Doom, The (Dai-bosatsu tôge)', 'Action|Drama', '11/18/2018', 'Nehemiah Culver', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 18, 9);
insert into MOVIES (TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES) values ('Tai-Pan', 'Adventure', '3/25/2011', 'Syd Enticott', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.', 45, 82);
insert into MOVIES (TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES) values ('Lust for Gold (Duhul aurului)', 'Drama', '9/22/2007', 'Jacqueline Stigers', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 33, 33);
insert into MOVIES (TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES) values ('Four Days of Naples, The (Le quattro giornate di Napoli)', 'Drama|War', '6/30/2003', 'Carlynn Francois', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 14, 19);
insert into MOVIES (TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES) values ('But Not for Me', 'Comedy|Romance', '4/27/2010', 'Janith Fforde', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 30, 35);
insert into MOVIES (TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES) values ('Patsy, The', 'Comedy', '3/14/2002', 'Sella Southeran', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 29, 20);
insert into MOVIES (TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES) values ('Turtle''s Tale: Sammy''s Adventures, A', 'Adventure|Animation', '3/26/2015', 'Angele Arboine', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 42, 17);
insert into MOVIES (TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES) values ('Hit by Lightning', 'Comedy|Crime|Romance', '6/10/2017', 'Jamesy Myrick', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 26, 35);
insert into MOVIES (TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES) values ('Farewell, My Queen (Les adieux à la reine)', 'Drama|Romance', '4/12/2012', 'Maryjo Surridge', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 33, 28);
insert into MOVIES (TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES) values ('Monument Ave.', 'Action|Crime|Drama', '7/29/2013', 'Birgit Watson', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.', 22, 21);
insert into MOVIES (TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES) values ('Quigley Down Under', 'Adventure|Drama|Western', '9/25/2010', 'Saxe Becerra', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 11, 80);
insert into MOVIES (TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES) values ('Without Bias (a.k.a. Len Bias)', 'Documentary', '4/2/2017', 'Doug Rogers', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 44, 31);
insert into MOVIES (TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES) values ('Here be Dragons', 'Documentary', '1/26/2018', 'Doria Kemmish', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.', 40, 58);
insert into MOVIES (TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES) values ('Apartment for Peggy', 'Drama', '5/11/2003', 'Stephie Brisco', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 33, 4);
insert into MOVIES (TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES) values ('White Massai, The (Weisse Massai, Die)', 'Drama|Romance', '10/10/2007', 'Phillipp Ten Broek', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 44, 3);
insert into MOVIES (TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES) values ('Karate-Robo Zaborgar (Denjin Zabôgâ)', 'Action|Adventure|Comedy|Fantasy', '12/21/2014', 'Lothario Brosi', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 36, 35);
insert into MOVIES (TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES) values ('Fond Kiss, A (Ae Fond Kiss...)', 'Drama|Romance', '9/8/2004', 'Rhiamon Render', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 37, 34);
insert into MOVIES (TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES) values ('Fools Rush In', 'Comedy|Drama|Romance', '2/4/2004', 'Winslow Jedrzejczak', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', 32, 78);
insert into MOVIES (TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES) values ('Deceptive Practice: The Mysteries and Mentors of Ricky Jay', 'Documentary', '1/15/2009', 'Fulton Tucknutt', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 35, 60);
insert into MOVIES (TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES) values ('Two Times Lotte', 'Children|Comedy', '9/5/2013', 'Vilma McCrossan', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 15, 52);
insert into MOVIES (TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES) values ('City of Sadness, A (Bei qing cheng shi)', 'Drama', '1/22/2007', 'Mathias Rey', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 44, 88);
insert into MOVIES (TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES) values ('Loser Takes All, The (O hamenos ta pairnei ola)', 'Action|Adventure|Drama', '12/12/2011', 'Vinnie Redgrove', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 12, 25);
insert into MOVIES (TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES) values ('Gunday', 'Action|Crime|Drama', '9/3/2014', 'Basilio Delaney', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 24, 21);
insert into MOVIES (TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES) values ('Eerie Tales (Unheimliche Geschichten)', 'Fantasy|Horror|Mystery', '3/16/2004', 'Monti Darcey', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 19, 58);
insert into MOVIES (TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES) values ('A Promise', 'Drama|Romance', '2/10/2017', 'Kienan Ruggen', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 19, 64);
insert into MOVIES (TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES) values ('Pride of the Bowery', 'Comedy|Drama', '10/21/2007', 'Alica Gauson', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 44, 63);
insert into MOVIES (TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES) values ('36 Quai des Orfèvres (Department 36)', 'Action|Crime|Drama|Thriller', '9/8/2006', 'Alfi Ziehm', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 36, 49);
insert into MOVIES (TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES) values ('Alien Nation: Body and Soul', 'Sci-Fi', '2/2/2007', 'Kenna Pollendine', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 37, 94);
insert into MOVIES (TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES) values ('No habrá paz para los malvados', 'Film-Noir|Thriller', '3/26/2002', 'Marna Fowley', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 34, 65);
insert into MOVIES (TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES) values ('Marriage Material', 'Drama', '7/20/2010', 'Vittorio Alp', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 32, 47);
insert into MOVIES (TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES) values ('Going Clear: Scientology and the Prison of Belief', 'Documentary', '7/27/2007', 'Ellary Wenzel', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 40, 88);
insert into MOVIES (TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES) values ('Misery', 'Drama|Horror|Thriller', '11/3/2005', 'Costa Canny', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 26, 67);
insert into MOVIES (TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES) values ('Bill Maher... But I''m Not Wrong', 'Comedy', '6/10/2004', 'Wilbur Andreolli', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 13, 56);
insert into MOVIES (TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES) values ('Safe Haven', 'Drama|Mystery|Romance', '1/26/2010', 'Elle Bome', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 48, 30);
insert into MOVIES (TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES) values ('Unvanquished, The (Aparajito)', 'Drama', '2/14/2007', 'Philippa Truelock', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 33, 18);
insert into MOVIES (TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES) values ('Bowling for Columbine', 'Documentary', '7/5/2006', 'Ernst Lightewood', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 44, 84);
insert into MOVIES (TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES) values ('Such Hawks Such Hounds', 'Documentary', '3/31/2011', 'Bard Mc Caughan', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 42, 48);
insert into MOVIES (TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES) values ('Petits Freres (Petits Frères)', 'Drama', '3/5/2011', 'Silvanus Knightley', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 17, 24);
insert into MOVIES (TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES) values ('My Boy', 'Comedy|Drama', '4/28/2007', 'Yetta Schuricke', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 31, 95);
insert into MOVIES (TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES) values ('Freshman, The', 'Comedy|Crime', '7/14/2017', 'Kilian Ryle', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 48, 9);
insert into MOVIES (TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES) values ('Passion Flower', 'Drama', '10/18/2009', 'Willette Iannelli', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', 49, 92);
insert into MOVIES (TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES) values ('Lost Christmas', 'Drama', '12/21/2017', 'Karlee Eykelhof', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 5, 36);
insert into MOVIES (TITLE, GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES) values ('Graffiti Bridge', 'Drama|Musical', '4/10/2011', 'Elyssa Keating', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 42, 58);

insert into ORDERS (MOVIE_ID, USERNAME, STATUS, AMOUNT) values (1, 'bkynd0', 'Arrived', 45);
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

/* All trains that pass through Hbf */
INSERT INTO train VALUES (200, 'RS1', 'Verden(Aller)', 'Bremen-Vegesack');
INSERT INTO train VALUES (210, 'RS2', 'Twistringen', 'Bremen-HBF' );
INSERT INTO train VALUES (220, 'RE1', 'Hannover-HBF', 'Bremen-HBF');
INSERT INTO train VALUES (230, 'RE8', 'Hannover-HBF', 'Bremenhaven-Lehe');
INSERT INTO train VALUES (240, 'RE4', 'Hamburg-HBF', 'Bremen-HBF');
INSERT INTO train VALUES (500, 'ICE1139', 'Bremen-HBF', 'Munich-HBF');
INSERT INTO train VALUES (510, 'IC2314', 'Koln-HBF', 'Husum');
INSERT INTO train VALUES (520, 'ICE1025', 'Hamburg-Altona', 'Frankfurt-HBF');
INSERT INTO train VALUES (530, 'IC1933', 'Oldenburg', 'Leipzig');
INSERT INTO train VALUES (540, 'IC2409', 'Rostock-HBF', 'Koln-HBF');

/* All the route informatin. Linking trains and routes. (train_id, route_id, stops) */
INSERT INTO route VALUES (200, 3301, 15);
INSERT INTO route VALUES (210, 3302, 9);
INSERT INTO route VALUES (220, 3303, 14);
INSERT INTO route VALUES (230, 3304, 13);
INSERT INTO route VALUES (240, 3305, 6);
INSERT INTO route VALUES (500, 9901, 7);
INSERT INTO route VALUES (510, 9902, 15);
INSERT INTO route VALUES (520, 9903, 15);
INSERT INTO route VALUES (530, 9904, 9);
INSERT INTO route VALUES (540, 9905, 15);

/* List of all stations with station id */
INSERT INTO station VALUES (40,'Verden(Aller)');
INSERT INTO station VALUES (41, 'Langwedel');
INSERT INTO station VALUES (42,'Etelsen');
INSERT INTO station VALUES (43, 'Baden(Verden)');
INSERT INTO station VALUES (44, 'Achim');
INSERT INTO station VALUES (45, 'Bremen-Mandorf');
INSERT INTO station VALUES (46, 'Bremen-Sebalsbruck');
INSERT INTO station VALUES (47, 'Bremen-HBF');
INSERT INTO station VALUES (48, 'Bremen-Walle');
INSERT INTO station VALUES (49, 'Bremen-Oslebshausen');
INSERT INTO station VALUES (50, 'Bremen-Burg');
INSERT INTO station VALUES (51, 'Bremen-Lesum');
INSERT INTO station VALUES (52, 'Bremen-St.Magnus');
INSERT INTO station VALUES (53, 'Bremen-Schonebeck');
INSERT INTO station VALUES (54, 'Bremen-Vegesack');
INSERT INTO station VALUES (55, 'Twistringen');
INSERT INTO station VALUES (56, 'Bassum');
INSERT INTO station VALUES (57, 'Bramstedt(b Skye)');
INSERT INTO station VALUES (58, 'Skye');
INSERT INTO station VALUES (59, 'Barrien');
INSERT INTO station VALUES (60, 'Kirchweyhen');
INSERT INTO station VALUES (61, 'Dreye');
INSERT INTO station VALUES (62, 'Bremen-Hemelingen');
INSERT INTO station VALUES (63, 'Hannover-HBF');
INSERT INTO station VALUES (64, 'Wunstorf');
INSERT INTO station VALUES (65, 'Neustadt am Ruebenberg');
INSERT INTO station VALUES (66, 'Nienburg');
INSERT INTO station VALUES (67, 'Eystrup');
INSERT INTO station VALUES (68, 'Doerverden');
INSERT INTO station VALUES (69, 'Osterholz-Scharmbeck');
INSERT INTO station VALUES (70, 'Bremenhaven-HBF');
INSERT INTO station VALUES (71, 'Bremenhaven-Lehe');
INSERT INTO station VALUES (72, 'Rotenburg');
INSERT INTO station VALUES (73, 'Tostedt');
INSERT INTO station VALUES (74, 'Buchholz');
INSERT INTO station VALUES (75, 'Hamburg-Harburg');
INSERT INTO station VALUES (76, 'Hamburg-HBF');
INSERT INTO station VALUES (77, 'Goettingen');
INSERT INTO station VALUES (78, 'Kassel-Wilhelmshoehe');
INSERT INTO station VALUES (79, 'Fulda');
INSERT INTO station VALUES (80, 'Wuerzburg-HBF');
INSERT INTO station VALUES (81, 'Munich-HBF');
INSERT INTO station VALUES (82, 'Koln-HBF');
INSERT INTO station VALUES (83, 'Dusseldorf-HBF');
INSERT INTO station VALUES (84, 'Duisburg-HBF');
INSERT INTO station VALUES (85, 'Essen-HBF');
INSERT INTO station VALUES (86, 'Bochum-HBF');
INSERT INTO station VALUES (87, 'Dortmund-HBF');
INSERT INTO station VALUES (88, 'Munster(West)-HBF');
INSERT INTO station VALUES (89, 'Osnabruck-HBF');
INSERT INTO station VALUES (90, 'Hamburg Dammtor');
INSERT INTO station VALUES (91, 'Itzehoe');
INSERT INTO station VALUES (92, 'Heide');
INSERT INTO station VALUES (93, 'Husum');
INSERT INTO station VALUES (94, 'Hamburg-Altona');
INSERT INTO station VALUES (95, 'Bonn-HBF');
INSERT INTO station VALUES (96, 'Koblenz-HBF');
INSERT INTO station VALUES (97, 'Mainz-HBF');
INSERT INTO station VALUES (98, 'Frankfurt Flughafen');
INSERT INTO station VALUES (99, 'Frankfurt(Main)-HBF');
INSERT INTO station VALUES (100, 'Oldenburg');
INSERT INTO station VALUES (101, 'Delmenhorst');
INSERT INTO station VALUES (102, 'Braunschweig-HBF');
INSERT INTO station VALUES (103, 'Magdeburg-HBF');
INSERT INTO station VALUES (104, 'Dessau-HBF');
INSERT INTO station VALUES (105, 'Bitterfeld');
INSERT INTO station VALUES (106, 'Leipzig-HBF');
INSERT INTO station VALUES (107, 'Rostock-HBF');
INSERT INTO station VALUES (108, 'Butzow');
INSERT INTO station VALUES (109, 'Schwerin-HBF');
INSERT INTO station VALUES (110, 'Diepholz');
INSERT INTO station VALUES (111, 'Recklinghausen-HBF');
INSERT INTO station VALUES (112, 'Gelsenkirchen-HBF');

/*route_id, station_name, sequence */
/*RS1 from Vegesack to Verden Aller*/ 
INSERT INTO route_path VALUES (3301,'Verden(Aller)', 1);
INSERT INTO route_path VALUES (3301,'Langwedel', 2);
INSERT INTO route_path VALUES (3301,'Etelsen', 3);
INSERT INTO route_path VALUES (3301,'Baden(Verden)', 4);
INSERT INTO route_path VALUES (3301,'Achim', 5);
INSERT INTO route_path VALUES (3301,'Bremen-Mandorf', 6);
INSERT INTO route_path VALUES (3301,'Bremen-Sebalsbruck', 7);
INSERT INTO route_path VALUES (3301,'Bremen-HBF', 8);
INSERT INTO route_path VALUES (3301,'Bremen-Walle', 9);
INSERT INTO route_path VALUES (3301,'Bremen-Oslebshausen', 10);
INSERT INTO route_path VALUES (3301,'Bremen-Burg', 11);
INSERT INTO route_path VALUES (3301,'Bremen-Lesum', 12);
INSERT INTO route_path VALUES (3301,'Bremen-St.Magnus', 13);
INSERT INTO route_path VALUES (3301,'Bremen-Schonebeck', 14);
INSERT INTO route_path VALUES (3301,'Bremen-Vegesack',15);

/*RS2 from Twistringen to Bremen Hbf*/
INSERT INTO route_path VALUES (3302,'Twistringen', 1);
INSERT INTO route_path VALUES (3302,'Bassum', 2);
INSERT INTO route_path VALUES (3302,'Bramstedt(b Skye)', 3);
INSERT INTO route_path VALUES (3302,'Skye', 4);
INSERT INTO route_path VALUES (3302,'Barrien', 5);
INSERT INTO route_path VALUES (3302,'Kirchweyhen', 6);
INSERT INTO route_path VALUES (3302,'Dreye',7);
INSERT INTO route_path VALUES (3302,'Bremen-Hemelingen', 8);
INSERT INTO route_path VALUES (3302,'Bremen-HBF', 9);

/*RE1 from Hannover to Bremen Hbf*/
INSERT INTO route_path VALUES (3303,'Hannover-HBF', 1);
INSERT INTO route_path VALUES (3303,'Wunstorf', 2);
INSERT INTO route_path VALUES (3303,'Neustadt am Ruebenberg', 3);
INSERT INTO route_path VALUES (3303,'Nienburg', 4);
INSERT INTO route_path VALUES (3303,'Eystrup', 5);
INSERT INTO route_path VALUES (3303,'Doerverden', 6);
INSERT INTO route_path VALUES (3303,'Verden(Aller)', 7);
INSERT INTO route_path VALUES (3303,'Langwedel', 8);
INSERT INTO route_path VALUES (3303,'Etelsen', 9);
INSERT INTO route_path VALUES (3303,'Baden(Verden)', 10);
INSERT INTO route_path VALUES (3303,'Achim', 11);
INSERT INTO route_path VALUES (3303,'Bremen-Mandorf', 12);
INSERT INTO route_path VALUES (3303,'Bremen-Sebalsbruck', 13);
INSERT INTO route_path VALUES (3303,'Bremen-HBF', 14);

/*RE8 from Hannover to Bremenhaven-Lehe*/
INSERT INTO route_path VALUES (3304,'Hannover-HBF', 1);
INSERT INTO route_path VALUES (3304,'Wunstorf', 2);
INSERT INTO route_path VALUES (3304,'Neustadt am Ruebenberg', 3);
INSERT INTO route_path VALUES (3304,'Nienburg', 4);
INSERT INTO route_path VALUES (3304,'Eystrup', 5);
INSERT INTO route_path VALUES (3304,'Doerverden', 6);
INSERT INTO route_path VALUES (3304,'Verden(Aller)', 7);
INSERT INTO route_path VALUES (3304,'Achim', 8);
INSERT INTO route_path VALUES (3304,'Bremen-Mandorf', 9);
INSERT INTO route_path VALUES (3304,'Bremen-HBF', 10);
INSERT INTO route_path VALUES (3304,'Osterholz-Scharmbeck', 11);
INSERT INTO route_path VALUES (3304,'Bremenhaven-HBF', 12);
INSERT INTO route_path VALUES (3304,'Bremenhaven-Lehe',13);

/*RE4 from Hamburg Hbf to Bremen Hbf*/
INSERT INTO route_path VALUES (3305,'Hamburg-HBF', 1);
INSERT INTO route_path VALUES (3305,'Hamburg-Harburg', 2);
INSERT INTO route_path VALUES (3305,'Buchholz', 3);
INSERT INTO route_path VALUES (3305,'Tostedt', 4);
INSERT INTO route_path VALUES (3305,'Rotenburg', 5);
INSERT INTO route_path VALUES (3305,'Bremen-HBF', 6);

/*ICE1139 from Bremen Hbf to Munich Hbf*/
INSERT INTO route_path VALUES (9901,'Bremen-HBF', 1);
INSERT INTO route_path VALUES (9901,'Hannover-HBF', 2);
INSERT INTO route_path VALUES (9901,'Goettingen', 3);
INSERT INTO route_path VALUES (9901,'Kassel-Wilhelmshoehe', 4);
INSERT INTO route_path VALUES (9901,'Fulda', 5);
INSERT INTO route_path VALUES (9901,'Wuerzburg-HBF', 6);
INSERT INTO route_path VALUES (9901,'Munich-HBF', 7);

/*IC2314 from Koln Hbf to Husum Hbf*/
INSERT INTO route_path VALUES (9902,'Koln-HBF', 1);
INSERT INTO route_path VALUES (9902,'Dusseldorf-HBF', 2);
INSERT INTO route_path VALUES (9902,'Duisburg-HBF', 3);
INSERT INTO route_path VALUES (9902,'Essen-HBF', 4);
INSERT INTO route_path VALUES (9902,'Bochum-HBF', 5);
INSERT INTO route_path VALUES (9902,'Dortmund-HBF', 6);
INSERT INTO route_path VALUES (9902,'Munster(West)-HBF', 7);
INSERT INTO route_path VALUES (9902,'Osnabruck-HBF', 8);
INSERT INTO route_path VALUES (9902,'Bremen-HBF', 9);
INSERT INTO route_path VALUES (9902,'Hamburg-Harburg', 10);
INSERT INTO route_path VALUES (9902,'Hamburg-HBF', 11);
INSERT INTO route_path VALUES (9902,'Hamburg Dammtor', 12);
INSERT INTO route_path VALUES (9902,'Itzehoe', 13);
INSERT INTO route_path VALUES (9902,'Heide', 14);
INSERT INTO route_path VALUES (9902,'Husum', 15);

/*IC1025 from Hamburg-Altona Hbf to Frankfurt Hbf*/
INSERT INTO route_path VALUES (9903,'Hamburg-Altona', 1);
INSERT INTO route_path VALUES (9903,'Hamburg Dammtor', 2);
INSERT INTO route_path VALUES (9903,'Hamburg-HBF', 3);
INSERT INTO route_path VALUES (9903,'Hamburg-Harburg', 4);
INSERT INTO route_path VALUES (9903,'Bremen-HBF', 5);
INSERT INTO route_path VALUES (9903,'Osnabruck-HBF', 6);
INSERT INTO route_path VALUES (9903,'Munster(West)-HBF', 7);
INSERT INTO route_path VALUES (9903,'Dortmund-HBF', 8);
INSERT INTO route_path VALUES (9903,'Dusseldorf-HBF', 9);
INSERT INTO route_path VALUES (9903,'Koln-HBF', 10);
INSERT INTO route_path VALUES (9903,'Bonn-HBF', 11);
INSERT INTO route_path VALUES (9903,'Koblenz-HBF', 12);
INSERT INTO route_path VALUES (9903,'Mainz-HBF', 13);
INSERT INTO route_path VALUES (9903,'Frankfurt Flughafen', 14);
INSERT INTO route_path VALUES (9903,'Frankfurt(Main)-HBF', 15);

/*IC1933 from Oldenburg Hbf to Leipzig Hbf*/
INSERT INTO route_path VALUES (9904,'Oldenburg', 1);
INSERT INTO route_path VALUES (9904,'Delmenhorst', 2);
INSERT INTO route_path VALUES (9904,'Bremen-HBF', 3);
INSERT INTO route_path VALUES (9904,'Hannover-HBF', 4);
INSERT INTO route_path VALUES (9904,'Braunschweig-HBF', 5);
INSERT INTO route_path VALUES (9904,'Magdeburg-HBF', 6);
INSERT INTO route_path VALUES (9904,'Dessau-HBF', 7);
INSERT INTO route_path VALUES (9904,'Bitterfeld', 8);
INSERT INTO route_path VALUES (9904,'Leipzig-HBF', 9);

/*IC2409 from Rostock Hbf to Koln Hbf*/
INSERT INTO route_path VALUES (9905,'Rostock-HBF', 1);
INSERT INTO route_path VALUES (9905,'Butzow', 2);
INSERT INTO route_path VALUES (9905,'Schwerin-HBF', 3);
INSERT INTO route_path VALUES (9905,'Hamburg-HBF', 4);
INSERT INTO route_path VALUES (9905,'Hamburg-Harburg', 5);
INSERT INTO route_path VALUES (9905,'Bremen-HBF', 6);
INSERT INTO route_path VALUES (9905,'Diepholz', 7);
INSERT INTO route_path VALUES (9905,'Osnabruck-HBF', 8);
INSERT INTO route_path VALUES (9905,'Munster(West)-HBF', 9);
INSERT INTO route_path VALUES (9905,'Recklinghausen-HBF', 10);
INSERT INTO route_path VALUES (9905,'Gelsenkirchen-HBF', 11);
INSERT INTO route_path VALUES (9905,'Essen-HBF', 12);
INSERT INTO route_path VALUES (9905,'Duisburg-HBF', 13);
INSERT INTO route_path VALUES (9905,'Dusseldorf-HBF', 14);
INSERT INTO route_path VALUES (9905,'Koln-HBF', 15);

/*inserting data for passenger passenger_id- name- origin- destination */
INSERT INTO passenger VALUES (787881, 'Irfan', 'Bremen-HBF', 'Bremen-Schonebeck');
INSERT INTO passenger VALUES (787882, 'Ian', 'Koln-HBF', 'Butzow');
INSERT INTO passenger VALUES (787883, 'Liz', 'Hamburg-Altona', 'Frankfurt Flughafen');
INSERT INTO passenger VALUES (787884, 'Diana', 'Hannover-HBF', 'Bremen-Schonebeck');
INSERT INTO passenger VALUES (787885, 'Jason', 'Bremen-Sebalsbruck', 'Bremen-HBF');
INSERT INTO passenger VALUES (787886, 'Danny', 'Itzehoe', 'Oldenburg');
INSERT INTO passenger VALUES (787887, 'Jurgen', 'Achim', 'Bremen-Lesum');
INSERT INTO passenger VALUES (787888, 'Isabella', 'Twistringen', 'Bremen-HBF');

/*inserting data for regional regional_id- train_name - route_id,  price */
INSERT INTO regional VALUES (333330,'RS1',3301,  8);
INSERT INTO regional VALUES (333331,'RS2',3302, 5);
INSERT INTO regional VALUES (333332,'RE1',3303, 10);
INSERT INTO regional VALUES (333333,'RE8',3304, 10);
INSERT INTO regional VALUES (333334,'RE4',3305, 9);

/*inserting data for long distance long_id- train_name- price */
INSERT INTO long_Dist VALUES (555550, 'ICE1139',9901, 30);
INSERT INTO long_Dist VALUES (555551, 'IC2314',9902, 20);
INSERT INTO long_Dist VALUES (555552, 'ICE1025',9903, 45);
INSERT INTO long_Dist VALUES (555553, 'IC1933',9904, 60);
INSERT INTO long_Dist VALUES (555554, 'IC2409',9905, 70);

/*passemger id (p_id) and  student id*/
INSERT INTO student VALUES (787881, 2003);
INSERT INTO student VALUES (787882, 2004);
INSERT INTO student VALUES (787883, 2010);
INSERT INTO student VALUES (787884, 2011);

/*passemger id (p_id) and  adult id*/
INSERT INTO Adult  VALUES (787885, 3003);
INSERT INTO Adult VALUES (787886, 3004);
INSERT INTO Adult VALUES (787887, 3005);
INSERT INTO Adult VALUES (787888, 3006);

/*passemger id (p_id) and the number of the discount
EXAMPLE- school students ride trains for free so the price of the 
train ride will get multiplied by zero and thus the price being 0 */
INSERT INTO school_Student VALUES (787881, 0);
INSERT INTO school_Student VALUES (787882, 0);

/*passemger id (p_id) and uni students get a discount of 50% */
INSERT INTO Uni_Student VALUES (787883, 0.5);
INSERT INTO Uni_Student VALUES (787884, 0.5);

/*passemger id (p_id) and discount (workers pay full price) */
INSERT INTO Worker VALUES (787885, 1);
INSERT INTO Worker VALUES (787886, 1);

/*passemger id (p_id) and retire discount is of 30% */
INSERT INTO Retire VALUES (787887, 0.7);
INSERT INTO Retire VALUES (787888, 0.7);







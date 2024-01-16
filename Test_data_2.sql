-- Group 6 Assignment2
-- CST2335
-- Student Names: Mayank Arora, Tianyang Huang, Tsaichun Chang

CONNECT group6/group6password;

INSERT INTO Category (name, description) values ('Heavy', 'The weight is over 50 kilograms');
INSERT INTO Category (name, description) values ('Medium', 'The weight is between 25 - 50 kilograms');
INSERT INTO Category (name, description) values ('Light', 'The weight is below 25 kilograms');

INSERT INTO Tools (SKU, category_id, name, unit_price, description, notes) values (101, 1, 'Heavy Hammer', 39.99, 'A heavy-duty hammer for tough tasks', 'Handle with care');
INSERT INTO Tools (SKU, category_id, name, unit_price, description, notes) values (102, 2, 'Medium Drill', 29.99, 'A medium-weight drill for versatile use', 'Batteries not included');
INSERT INTO Tools (SKU, category_id, name, unit_price, description, notes) values (103, 3, 'Light Screwdriver Set', 14.99, 'A set of lightweight screwdrivers', 'Various screwdriver types included');
INSERT INTO Tools (SKU, category_id, name, unit_price, description, notes) values (104, 1, 'Heavy Wrench', 45.99, 'A heavy-duty wrench for large bolts', 'Rust-resistant coating');
INSERT INTO Tools (SKU, category_id, name, unit_price, description, notes) values (105, 2, 'Medium Jigsaw', 34.99, 'A versatile jigsaw for cutting various materials', 'Safety goggles included');
INSERT INTO Tools (SKU, category_id, name, unit_price, description, notes) values (106, 3, 'Light Pliers', 12.99, 'Lightweight pliers for fine detail work', 'Comfort grip handles');
INSERT INTO Tools (SKU, category_id, name, unit_price, description, notes) values (107, 1, 'Heavy Chain Saw', 59.99, 'A heavy chainsaw for cutting thick logs', 'Safety chain brake');
INSERT INTO Tools (SKU, category_id, name, unit_price, description, notes) values (108, 2, 'Medium Circular Saw', 49.99, 'A medium circular saw for precise cuts', 'Adjustable cutting depth');
INSERT INTO Tools (SKU, category_id, name, unit_price, description, notes) values (109, 3, 'Light Tape Measure', 9.99, 'A lightweight tape measure for accurate measurements', 'Metric and imperial markings');
INSERT INTO Tools (SKU, category_id, name, unit_price, description, notes) values (110, 1, 'Heavy Crowbar', 42.99, 'A heavy-duty crowbar for prying and demolition', 'Forged steel construction');
INSERT INTO Tools (SKU, category_id, name, unit_price, description, notes) values (111, 2, 'Medium Angle Grinder', 37.99, 'A medium angle grinder for cutting and grinding', 'Side handle for control');
INSERT INTO Tools (SKU, category_id, name, unit_price, description, notes) values (112, 3, 'Light Scissors Set', 8.99, 'A set of lightweight scissors for various uses', 'Stainless steel blades');
INSERT INTO Tools (SKU, category_id, name, unit_price, description, notes) values (113, 1, 'Heavy Shovel', 49.99, 'A heavy-duty shovel for digging and lifting', 'D-shaped handle for better grip');
INSERT INTO Tools (SKU, category_id, name, unit_price, description, notes) values (114, 2, 'Medium Router', 32.99, 'A medium router for shaping and profiling', 'Variable speed control');
INSERT INTO Tools (SKU, category_id, name, unit_price, description, notes) values (115, 3, 'Light Precision Knife Set', 11.99, 'A set of precision knives for detailed work', 'Interchangeable blades');
INSERT INTO Tools (SKU, category_id, name, unit_price, description, notes) values (116, 1, 'Heavy Welding Kit', 57.99, 'A heavy-duty welding kit for professional use', 'Includes welding helmet');
INSERT INTO Tools (SKU, category_id, name, unit_price, description, notes) values (117, 2, 'Medium Sander', 36.99, 'A medium sander for smooth finishes', 'Dust collection system');
INSERT INTO Tools (SKU, category_id, name, unit_price, description, notes) values (118, 3, 'Light Mini Saw', 10.99, 'A lightweight mini saw for small cuts', 'Perfect for hobbyists');
INSERT INTO Tools (SKU, category_id, name, unit_price, description, notes) values (119, 1, 'Heavy Jackhammer', 64.99, 'A heavy jackhammer for heavy-duty concrete work', 'Anti-vibration system');
INSERT INTO Tools (SKU, category_id, name, unit_price, description, notes) values (120, 2, 'Medium Nail Gun', 38.99, 'A medium nail gun for fastening tasks', 'Sequential and bump firing modes');

INSERT INTO Inventory (id, tools_SKU, units_in_hand) VALUES (1,101,26);
INSERT INTO Inventory (id, tools_SKU, units_in_hand) VALUES (2,102,20);
INSERT INTO Inventory (id, tools_SKU, units_in_hand) VALUES (3,103,23);
INSERT INTO Inventory (id, tools_SKU, units_in_hand) VALUES (4,104,12);
INSERT INTO Inventory (id, tools_SKU, units_in_hand) VALUES (5,105,32);
INSERT INTO Inventory (id, tools_SKU, units_in_hand) VALUES (6,106,4);
INSERT INTO Inventory (id, tools_SKU, units_in_hand) VALUES (7,107,33);
INSERT INTO Inventory (id, tools_SKU, units_in_hand) VALUES (8,108,35);
INSERT INTO Inventory (id, tools_SKU, units_in_hand) VALUES (9,109,18);
INSERT INTO Inventory (id, tools_SKU, units_in_hand) VALUES (10,110,14);
INSERT INTO Inventory (id, tools_SKU, units_in_hand) VALUES (11,111,19);
INSERT INTO Inventory (id, tools_SKU, units_in_hand) VALUES (12,112,40);
INSERT INTO Inventory (id, tools_SKU, units_in_hand) VALUES (13,113,42);
INSERT INTO Inventory (id, tools_SKU, units_in_hand) VALUES (14,114,8);
INSERT INTO Inventory (id, tools_SKU, units_in_hand) VALUES (15,115,24);
INSERT INTO Inventory (id, tools_SKU, units_in_hand) VALUES (16,116,4);
INSERT INTO Inventory (id, tools_SKU, units_in_hand) VALUES (17,117,35);
INSERT INTO Inventory (id, tools_SKU, units_in_hand) VALUES (18,118,26);
INSERT INTO Inventory (id, tools_SKU, units_in_hand) VALUES (19,119,37);
INSERT INTO Inventory (id, tools_SKU, units_in_hand) VALUES (20,120,43);

INSERT INTO Address (id, house_address, city, province, postal_code) VALUES (1,'5526 Hendrerit Avenue','Tsiigehtchic','British Columbia','R8Y 0J5');
INSERT INTO Address (id, house_address, city, province, postal_code) VALUES (2,'527-5030 Mauris Rd.','Yellowknife','Saskatchewan','12W 6X7');
INSERT INTO Address (id, house_address, city, province, postal_code) VALUES (3,'Ap #374-8118 Vel, Rd.','Aklavik','Alberta','83N 2P7');
INSERT INTO Address (id, house_address, city, province, postal_code) VALUES (4,'482-5388 Dui. Av.','Hay River','Quebec','T2M 2Z1');
INSERT INTO Address (id, house_address, city, province, postal_code) VALUES (5,'Ap #823-8641 Amet, St.','Burin','British Columbia','21G 4R4');
INSERT INTO Address (id, house_address, city, province, postal_code) VALUES (6,'P.O. Box 958, 2117 Tortor Road','Guysborough','Alberta','A4K 2K1');
INSERT INTO Address (id, house_address, city, province, postal_code) VALUES (7,'P.O. Box 716, 2451 Etiam Street','Ponoka','Nunavut','B2B 7C7');
INSERT INTO Address (id, house_address, city, province, postal_code) VALUES (8,'Ap #843-6273 Non, Street','Iqaluit','Saskatchewan','N4R 5C1');
INSERT INTO Address (id, house_address, city, province, postal_code) VALUES (9,'305-3639 Suspendisse Rd.','Prince Albert','Manitoba','33H 5P9');
INSERT INTO Address (id, house_address, city, province, postal_code) VALUES (10,'3341 Et Ave','Langenburg','British Columbia','K7C 6J9');
INSERT INTO Address (id, house_address, city, province, postal_code) VALUES (11,'5834 Velit Ave','Dieppe','Newfoundland and Labrador','E5Y 1N5');
INSERT INTO Address (id, house_address, city, province, postal_code) VALUES (12,'Ap #161-4564 Turpis Rd.','Kearny','Manitoba','S4R 1L8');
INSERT INTO Address (id, house_address, city, province, postal_code) VALUES (13,'Ap #106-3662 Nec St.','Silverton','Newfoundland and Labrador','H7E 7M9');
INSERT INTO Address (id, house_address, city, province, postal_code) VALUES (14,'Ap #952-7982 Aliquet Rd.','Fort Simpson','Alberta','T5H 5K6');
INSERT INTO Address (id, house_address, city, province, postal_code) VALUES (15,'Ap #562-3847 Lacinia St.','Minitonas','Yukon','A1Y 4N5');
INSERT INTO Address (id, house_address, city, province, postal_code) VALUES (16,'121-7015 Est Rd.','Scarborough','Quebec','Y1M 9M0');
INSERT INTO Address (id, house_address, city, province, postal_code) VALUES (17,'P.O. Box 211, 8785 Et St.','Cape Breton Island','Yukon','B8H 2S3');
INSERT INTO Address (id, house_address, city, province, postal_code) VALUES (18,'P.O. Box 126, 1046 Erat St.','Guelph','Newfoundland and Labrador','T2S 2E8');
INSERT INTO Address (id, house_address, city, province, postal_code) VALUES (19,'Ap #761-6135 Scelerisque Road','Gjoa Haven','New Brunswick','M6E 3B0');
INSERT INTO Address (id, house_address, city, province, postal_code) VALUES (20,'Ap #943-9592 Scelerisque Street','Spruce Grove','Manitoba','S1B 6Z3');
INSERT INTO Address (id, house_address, city, province, postal_code) VALUES (21,'Ap #932-8949 Ullamcorper. Ave','Bathurst','Yukon','A9B 7Y3');
INSERT INTO Address (id, house_address, city, province, postal_code) VALUES (22,'305-603 Vitae St.','Rigolet','Prince Edward Island','74X 9P9');
INSERT INTO Address (id, house_address, city, province, postal_code) VALUES (23,'1087 Sed Av.','Wha Ti','Newfoundland and Labrador','A4C 5R5');
INSERT INTO Address (id, house_address, city, province, postal_code) VALUES (24,'299-4707 Nulla Road','Fogo','Saskatchewan','G7X 0L6');
INSERT INTO Address (id, house_address, city, province, postal_code) VALUES (25,'716-8345 In Rd.','Montague','Ontario','S7W 2W1');
INSERT INTO Address (id, house_address, city, province, postal_code) VALUES (26,'254-6702 Dolor Rd.','Watson Lake','Alberta','64E 7S1');
INSERT INTO Address (id, house_address, city, province, postal_code) VALUES (27,'9474 Eget Street','Warburg','Saskatchewan','P2H 4P7');
INSERT INTO Address (id, house_address, city, province, postal_code) VALUES (28,'656-6046 Interdum St.','Watson Lake','Yukon','45Z 5N7');
INSERT INTO Address (id, house_address, city, province, postal_code) VALUES (29,'160-7016 Mattis Street','Rigolet','Ontario','T7B 4P7');
INSERT INTO Address (id, house_address, city, province, postal_code) VALUES (30,'847-5006 Felis Rd.','Fernie','Nunavut','K3J 2R4');
INSERT INTO Address (id, house_address, city, province, postal_code) VALUES (31,'982-7450 Fames St.','Fort McPherson','Newfoundland and Labrador','J1C 3Z5');
INSERT INTO Address (id, house_address, city, province, postal_code) VALUES (32,'945-9408 Dolor. Rd.','New Sarepta','Ontario','64E 2R2');
INSERT INTO Address (id, house_address, city, province, postal_code) VALUES (33,'420-9446 Arcu. Road','Pangnirtung','Ontario','S4H 4J0');
INSERT INTO Address (id, house_address, city, province, postal_code) VALUES (34,'436-1380 Semper. Road','Lloydminster','Newfoundland and Labrador','R0S 6L2');
INSERT INTO Address (id, house_address, city, province, postal_code) VALUES (35,'Ap #754-2644 Eu Rd.','Charlottetown','Northwest Territories','A6C 0J2');
INSERT INTO Address (id, house_address, city, province, postal_code) VALUES (36,'6635 Molestie Rd.','Watson Lake','Alberta','Y7J 8X5');
INSERT INTO Address (id, house_address, city, province, postal_code) VALUES (37,'Ap #175-8215 Sed, St.','Yorkton','Newfoundland and Labrador','L3H 1V8');
INSERT INTO Address (id, house_address, city, province, postal_code) VALUES (38,'P.O. Box 692, 1366 Eleifend. Av.','Gander','Manitoba','M3G 5G4');
INSERT INTO Address (id, house_address, city, province, postal_code) VALUES (39,'925-2113 Ligula. Rd.','Stratford','Manitoba','67Y 2W5');
INSERT INTO Address (id, house_address, city, province, postal_code) VALUES (40,'Ap #412-4005 Sapien St.','Montague','British Columbia','Y4N 7Y3');
INSERT INTO Address (id, house_address, city, province, postal_code) VALUES (41,'4398 Primis St.','Cumberland County','Saskatchewan','R0V 0C7');
INSERT INTO Address (id, house_address, city, province, postal_code) VALUES (42,'1774 Ut St.','Alert Bay','Quebec','N2B 3N5');
INSERT INTO Address (id, house_address, city, province, postal_code) VALUES (43,'4235 Enim Road','Estevan','Nova Scotia','R5G 4H4');
INSERT INTO Address (id, house_address, city, province, postal_code) VALUES (44,'Ap #439-1342 Lorem Road','Annapolis County','Newfoundland and Labrador','67G 5Y8');
INSERT INTO Address (id, house_address, city, province, postal_code) VALUES (45,'704-1535 Mauris. Avenue','Burns Lake','Nunavut','J3V 1M2');
INSERT INTO Address (id, house_address, city, province, postal_code) VALUES (46,'Ap #906-2016 Arcu Av.','North Battleford','British Columbia','B7J 3B2');
INSERT INTO Address (id, house_address, city, province, postal_code) VALUES (47,'9969 Dignissim Avenue','Cabano','Newfoundland and Labrador','S7R 7G8');
INSERT INTO Address (id, house_address, city, province, postal_code) VALUES (48,'462-6901 Vestibulum Ave','Cumberland County','Nova Scotia','T0J 3R4');
INSERT INTO Address (id, house_address, city, province, postal_code) VALUES (49,'Ap #276-4128 Aliquam Street','Whitehorse','British Columbia','R2N 0L4');
INSERT INTO Address (id, house_address, city, province, postal_code) VALUES (50,'788-7994 Ornare Rd.','Fort Laird','Alberta','B8J 2Y5');


INSERT INTO Customer (id, name, email, phone_number, address_id, birthday, notes, vip_level) VALUES (1,'Vernon Brennan','risus.varius@aol.ca','1-432-875-6852',44,TO_DATE('1959-07-22', 'YYYY-MM-DD'),'nisi. Aenean eget',3);
INSERT INTO Customer (id, name, email, phone_number, address_id, birthday, notes, vip_level) VALUES (2, 'Natalie Boyd', 'lacinia.mattis.integer@protonmail.ca', '(896) 744-9514', 40, TO_DATE('1984-11-08', 'YYYY-MM-DD'), 'augue id ante dictum cursus. Nunc', 2);
INSERT INTO Customer (id, name, email, phone_number, address_id, birthday, notes, vip_level) VALUES (3, 'Amethyst Hodges', 'malesuada.vel.convallis@protonmail.org', '(282) 664-3678', 30, TO_DATE('1988-08-31', 'YYYY-MM-DD'), 'dolor dolor,', 3);
INSERT INTO Customer (id, name, email, phone_number, address_id, birthday, notes, vip_level) VALUES (4, 'Moana Goodman', 'at.egestas@protonmail.com', '(459) 462-2081', 45, TO_DATE('1986-04-10', 'YYYY-MM-DD'), 'risus. Nunc ac sem', 3);
INSERT INTO Customer (id, name, email, phone_number, address_id, birthday, notes, vip_level) VALUES (5, 'Connor Black', 'lorem.tristique@icloud.edu', '(566) 710-7902', 19, TO_DATE('1962-01-11', 'YYYY-MM-DD'), 'feugiat. Lorem', 3);
INSERT INTO Customer (id, name, email, phone_number, address_id, birthday, notes, vip_level) VALUES (6, 'Guy Nash', 'dictum.eu@protonmail.com', '1-273-665-5330', 9, TO_DATE('1981-10-04', 'YYYY-MM-DD'), 'facilisis lorem', 1);
INSERT INTO Customer (id, name, email, phone_number, address_id, birthday, notes, vip_level) VALUES (7, 'Quentin Collier', 'odio@outlook.org', '1-473-582-4877', 33, TO_DATE('1975-12-15', 'YYYY-MM-DD'), 'neque pellentesque', 1);
INSERT INTO Customer (id, name, email, phone_number, address_id, birthday, notes, vip_level) VALUES (8, 'Kyra Barrera', 'magnis@protonmail.ca', '(214) 358-2929', 15, TO_DATE('1969-04-26', 'YYYY-MM-DD'), 'posuere vulputate, lacus. Cras interdum.', 2);
INSERT INTO Customer (id, name, email, phone_number, address_id, birthday, notes, vip_level) VALUES (9, 'Ocean Mullen', 'mauris@protonmail.couk', '(363) 342-1641', 32, TO_DATE('1962-01-14', 'YYYY-MM-DD'), 'vitae erat vel pede blandit congue.', 2);
INSERT INTO Customer (id, name, email, phone_number, address_id, birthday, notes, vip_level) VALUES (10, 'Patience Bush', 'ultricies@outlook.org', '(793) 815-8445', 1, TO_DATE('1969-07-19', 'YYYY-MM-DD'), 'ut dolor dapibus gravida. Aliquam', 3);
INSERT INTO Customer (id, name, email, phone_number, address_id, birthday, notes, vip_level) VALUES (11, 'Cullen Delgado', 'molestie.arcu.sed@protonmail.net', '(308) 643-1452', 37, TO_DATE('1980-07-28', 'YYYY-MM-DD'), 'Nunc mauris sapien,', 2);
INSERT INTO Customer (id, name, email, phone_number, address_id, birthday, notes, vip_level) VALUES (12, 'Brock Miranda', 'eu@hotmail.com', '1-736-606-3476', 11, TO_DATE('1983-08-02', 'YYYY-MM-DD'), 'nec urna et arcu imperdiet ullamcorper.', 4);
INSERT INTO Customer (id, name, email, phone_number, address_id, birthday, notes, vip_level) VALUES (13, 'Paki Giles', 'arcu.vel@protonmail.net', '1-539-341-4577', 21, TO_DATE('1975-02-03', 'YYYY-MM-DD'), 'convallis est, vitae sodales', 2);
INSERT INTO Customer (id, name, email, phone_number, address_id, birthday, notes, vip_level) VALUES (14, 'Leo Hopper', 'curabitur.massa@google.couk', '(793) 447-8174', 1, TO_DATE('1964-12-30', 'YYYY-MM-DD'), 'nunc risus varius orci, in', 3);
INSERT INTO Customer (id, name, email, phone_number, address_id, birthday, notes, vip_level) VALUES (15, 'Violet Russell', 'mi.felis@protonmail.net', '1-528-873-9832', 47, TO_DATE('1986-10-08', 'YYYY-MM-DD'), 'facilisis vitae, orci.', 3);
INSERT INTO Customer (id, name, email, phone_number, address_id, birthday, notes, vip_level) VALUES (16, 'Nasim Norman', 'duis.elementum.dui@outlook.net', '1-619-492-5423', 22, TO_DATE('1960-08-12', 'YYYY-MM-DD'), 'Nunc laoreet lectus quis', 5);
INSERT INTO Customer (id, name, email, phone_number, address_id, birthday, notes, vip_level) VALUES (17, 'Allen Mosley', 'integer@google.ca', '(254) 335-5826', 30, TO_DATE('1972-02-07', 'YYYY-MM-DD'), 'ornare lectus justo eu', 3);
INSERT INTO Customer (id, name, email, phone_number, address_id, birthday, notes, vip_level) VALUES (18, 'Scarlett Neal', 'fringilla.euismod.enim@outlook.edu', '(707) 724-4218', 30, TO_DATE('1965-01-31', 'YYYY-MM-DD'), 'vulputate, lacus. Cras interdum. Nunc sollicitudin', 5);
INSERT INTO Customer (id, name, email, phone_number, address_id, birthday, notes, vip_level) VALUES (19, 'Carl Wooten', 'montes@aol.ca', '(315) 598-7039', 17, TO_DATE('1961-01-04', 'YYYY-MM-DD'), 'imperdiet ullamcorper. Duis at lacus.', 2);
INSERT INTO Customer (id, name, email, phone_number, address_id, birthday, notes, vip_level) VALUES (20, 'Illana Bradshaw', 'tellus.phasellus@protonmail.net', '(756) 618-9427', 45, TO_DATE('1964-05-09', 'YYYY-MM-DD'), 'est, congue a,', 5);
INSERT INTO Customer (id, name, email, phone_number, address_id, birthday, notes, vip_level) VALUES (21, 'Chelsea Dillon', 'amet.risus.donec@hotmail.ca', '1-372-218-7721', 29, TO_DATE('1983-01-09', 'YYYY-MM-DD'), 'primis in faucibus', 2);
INSERT INTO Customer (id, name, email, phone_number, address_id, birthday, notes, vip_level) VALUES (22, 'Ahmed Pratt', 'suspendisse@outlook.edu', '1-268-327-1005', 18, TO_DATE('1968-10-24', 'YYYY-MM-DD'), 'blandit. Nam nulla', 3);
INSERT INTO Customer (id, name, email, phone_number, address_id, birthday, notes, vip_level) VALUES (23, 'Gray Lewis', 'nullam.feugiat@icloud.org', '(386) 107-1436', 4, TO_DATE('1972-10-27', 'YYYY-MM-DD'), 'auctor, nunc', 1);
INSERT INTO Customer (id, name, email, phone_number, address_id, birthday, notes, vip_level) VALUES (24, 'Davis Foster', 'lorem.donec.elementum@yahoo.net', '1-645-267-3713', 4, TO_DATE('1980-12-25', 'YYYY-MM-DD'), 'Donec', 1);
INSERT INTO Customer (id, name, email, phone_number, address_id, birthday, notes, vip_level) VALUES (25, 'Fritz Wooten', 'nullam.ut@google.net', '(432) 854-5892', 4, TO_DATE('1958-11-14', 'YYYY-MM-DD'), 'lobortis mauris. Suspendisse aliquet molestie', 5);
INSERT INTO Customer (id, name, email, phone_number, address_id, birthday, notes, vip_level) VALUES (26, 'Daryl Curtis', 'pede@protonmail.ca', '(628) 598-2621', 31, TO_DATE('1973-06-03', 'YYYY-MM-DD'), 'fringilla,', 4);
INSERT INTO Customer (id, name, email, phone_number, address_id, birthday, notes, vip_level) VALUES (27, 'Maxine Hart', 'nec@yahoo.couk', '1-444-430-1387', 44, TO_DATE('1963-12-19', 'YYYY-MM-DD'), 'luctus ut,', 4);
INSERT INTO Customer (id, name, email, phone_number, address_id, birthday, notes, vip_level) VALUES (28, 'Kay Vazquez', 'fringilla.mi.lacinia@google.ca', '(870) 125-7270', 6, TO_DATE('1972-04-18', 'YYYY-MM-DD'), 'mauris a nunc. In at', 4);
INSERT INTO Customer (id, name, email, phone_number, address_id, birthday, notes, vip_level) VALUES (29, 'Jameson Hays', 'neque.morbi@outlook.couk', '(341) 365-3824', 30, TO_DATE('1981-10-10', 'YYYY-MM-DD'), 'dignissim. Maecenas', 2);
INSERT INTO Customer (id, name, email, phone_number, address_id, birthday, notes, vip_level) VALUES (30, 'Chanda Curtis', 'natoque.penatibus@google.edu', '1-268-808-5789', 15, TO_DATE('1964-02-21', 'YYYY-MM-DD'), 'scelerisque mollis. Phasellus', 4);
INSERT INTO Customer (id, name, email, phone_number, address_id, birthday, notes, vip_level) VALUES (31, 'Aiko Holloway', 'sed.turpis.nec@yahoo.edu', '(451) 586-4616', 12, TO_DATE('1967-04-04', 'YYYY-MM-DD'), 'parturient montes, nascetur ridiculus', 2);
INSERT INTO Customer (id, name, email, phone_number, address_id, birthday, notes, vip_level) VALUES (32, 'Brian Wynn', 'id.enim.curabitur@hotmail.couk', '1-586-158-1167', 39, TO_DATE('1962-03-23', 'YYYY-MM-DD'), 'tortor. Nunc commodo auctor', 3);
INSERT INTO Customer (id, name, email, phone_number, address_id, birthday, notes, vip_level) VALUES (33, 'Damian Dudley', 'ultricies.ornare.elit@hotmail.com', '1-384-838-6496', 15, TO_DATE('1965-04-28', 'YYYY-MM-DD'), 'est mauris, rhoncus', 4);
INSERT INTO Customer (id, name, email, phone_number, address_id, birthday, notes, vip_level) VALUES (34, 'Cairo Bray', 'nunc.quisque@protonmail.org', '1-371-407-8759', 7, TO_DATE('1986-12-28', 'YYYY-MM-DD'), 'dictum augue malesuada malesuada. Integer', 1);
INSERT INTO Customer (id, name, email, phone_number, address_id, birthday, notes, vip_level) VALUES (35, 'Madeline Sheppard', 'urna@icloud.couk', '1-811-793-9522', 3, TO_DATE('1975-05-28', 'YYYY-MM-DD'), 'vulputate, lacus. Cras interdum.', 4);
INSERT INTO Customer (id, name, email, phone_number, address_id, birthday, notes, vip_level) VALUES (36, 'Oleg Morton', 'nam.nulla@outlook.ca', '1-512-711-2802', 34, TO_DATE('1962-11-27', 'YYYY-MM-DD'), 'at, egestas a, scelerisque sed, sapien.', 2);
INSERT INTO Customer (id, name, email, phone_number, address_id, birthday, notes, vip_level) VALUES (37, 'Hilel Shelton', 'diam.at@aol.net', '1-838-993-8132', 4, TO_DATE('1973-04-13', 'YYYY-MM-DD'), 'ac metus', 5);
INSERT INTO Customer (id, name, email, phone_number, address_id, birthday, notes, vip_level) VALUES (38, 'Giselle Lynch', 'mi.lorem@hotmail.edu', '1-316-834-1261', 38, TO_DATE('1980-02-08', 'YYYY-MM-DD'), 'eu odio tristique pharetra. Quisque', 2);
INSERT INTO Customer (id, name, email, phone_number, address_id, birthday, notes, vip_level) VALUES (39, 'Sylvia Miranda', 'ligula.tortor@google.net', '1-327-137-0632', 48, TO_DATE('1979-01-22', 'YYYY-MM-DD'), 'magna et ipsum cursus vestibulum. Mauris', 4);
INSERT INTO Customer (id, name, email, phone_number, address_id, birthday, notes, vip_level) VALUES (40, 'Aphrodite Turner', 'elit.pede.malesuada@hotmail.ca', '(942) 610-7953', 33, TO_DATE('1982-04-17', 'YYYY-MM-DD'), 'nec, euismod in,', 3);
INSERT INTO Customer (id, name, email, phone_number, address_id, birthday, notes, vip_level) VALUES (41, 'Forrest Salazar', 'quis.pede@google.com', '(827) 624-7326', 17, TO_DATE('1959-12-09', 'YYYY-MM-DD'), 'Duis risus odio, auctor vitae,', 4);
INSERT INTO Customer (id, name, email, phone_number, address_id, birthday, notes, vip_level) VALUES (42, 'Teegan Hayes', 'neque@icloud.net', '(775) 881-3009', 32, TO_DATE('1984-05-11', 'YYYY-MM-DD'), 'orci', 4);
INSERT INTO Customer (id, name, email, phone_number, address_id, birthday, notes, vip_level) VALUES (43, 'Rana Stokes', 'non.justo@google.net', '1-284-311-7342', 42, TO_DATE('1961-04-27', 'YYYY-MM-DD'), 'et ultrices posuere cubilia', 4);
INSERT INTO Customer (id, name, email, phone_number, address_id, birthday, notes, vip_level) VALUES (44, 'Maris Collier', 'at.iaculis.quis@yahoo.com', '(214) 519-9334', 30, TO_DATE('1976-04-05', 'YYYY-MM-DD'), 'sed, sapien. Nunc', 4);
INSERT INTO Customer (id, name, email, phone_number, address_id, birthday, notes, vip_level) VALUES (45, 'Kevyn Hale', 'mauris@yahoo.org', '(275) 855-5423', 44, TO_DATE('1959-11-22', 'YYYY-MM-DD'), 'nec, eleifend non, dapibus', 4);
INSERT INTO Customer (id, name, email, phone_number, address_id, birthday, notes, vip_level) VALUES (46, 'Mariko Boyle', 'amet@protonmail.net', '1-696-507-3231', 13, TO_DATE('1967-09-13', 'YYYY-MM-DD'), 'Proin vel arcu', 5);
INSERT INTO Customer (id, name, email, phone_number, address_id, birthday, notes, vip_level) VALUES (47, 'Gavin Franks', 'nisl.quisque@outlook.org', '1-771-233-4357', 48, TO_DATE('1963-09-13', 'YYYY-MM-DD'), 'magna et ipsum cursus', 4);
INSERT INTO Customer (id, name, email, phone_number, address_id, birthday, notes, vip_level) VALUES (48, 'Dorothy Bryant', 'diam.proin@google.ca', '(257) 258-1918', 21, TO_DATE('1965-06-29', 'YYYY-MM-DD'), 'non arcu.', 4);
INSERT INTO Customer (id, name, email, phone_number, address_id, birthday, notes, vip_level) VALUES (49, 'Lareina Everett', 'penatibus.et@aol.ca', '(515) 536-8439', 13, TO_DATE('1980-08-11', 'YYYY-MM-DD'), 'quam', 4);
INSERT INTO Customer (id, name, email, phone_number, address_id, birthday, notes, vip_level) VALUES (50, 'Timon Clarke', 'nunc.sed@protonmail.org', '1-785-764-6058', 38, TO_DATE('1962-01-17', 'YYYY-MM-DD'), 'ullamcorper. Duis at lacus. Quisque', 4);


INSERT INTO Manager (id, name) VALUES (1,'Jolie Mccormick');
INSERT INTO Manager (id, name) VALUES (2,'Hyatt Cohen');
INSERT INTO Manager (id, name) VALUES (3,'Kennedy Montgomery');
INSERT INTO Manager (id, name) VALUES (4,'Mari Cervantes');
INSERT INTO Manager (id, name) VALUES (5,'Marah Galloway');


INSERT INTO Employee (id, name, manager_id, phone_number, email) VALUES (1,'Gay Chavez',2,'(750) 375-1978','egestas@aol.com');
INSERT INTO Employee (id, name, manager_id, phone_number, email) VALUES (2,'Maryam Walls',4,'(732) 757-7507','imperdiet.nec@outlook.net');
INSERT INTO Employee (id, name, manager_id, phone_number, email) VALUES (3,'Alma Olson',3,'(353) 314-3855','lectus.nullam@outlook.couk');
INSERT INTO Employee (id, name, manager_id, phone_number, email) VALUES (4,'Sierra Farley',2,'(467) 655-6288','morbi.metus@yahoo.ca');
INSERT INTO Employee (id, name, manager_id, phone_number, email) VALUES (5,'Oren Sanchez',2,'1-568-319-1666','convallis.est@icloud.edu');
INSERT INTO Employee (id, name, manager_id, phone_number, email) VALUES (6,'Lucius Munoz',4,'(365) 762-2270','viverra.maecenas@google.net');
INSERT INTO Employee (id, name, manager_id, phone_number, email) VALUES (7,'Nicholas Ayers',3,'(483) 667-5155','lacinia.mattis.integer@outlook.com');
INSERT INTO Employee (id, name, manager_id, phone_number, email) VALUES (8,'Xandra Watson',2,'(887) 537-5532','fermentum.convallis@yahoo.com');
INSERT INTO Employee (id, name, manager_id, phone_number, email) VALUES (9,'Warren O''donnell',1,'(768) 412-5914','fringilla@icloud.ca');
INSERT INTO Employee (id, name, manager_id, phone_number, email) VALUES (10,'Kuame Slater',2,'1-143-201-2886','donec.elementum@google.ca');
INSERT INTO Employee (id, name, manager_id, phone_number, email) VALUES (11,'Sebastian Chang',1,'(512) 443-4501','quisque.varius.nam@aol.net');
INSERT INTO Employee (id, name, manager_id, phone_number, email) VALUES (12,'Allistair Barber',1,'1-708-732-3664','lectus@google.org');
INSERT INTO Employee (id, name, manager_id, phone_number, email) VALUES (13,'Allen Pittman',2,'1-920-204-4353','volutpat@yahoo.net');
INSERT INTO Employee (id, name, manager_id, phone_number, email) VALUES (14,'Sonia Russo',2,'1-648-556-0844','curabitur.ut.odio@outlook.com');
INSERT INTO Employee (id, name, manager_id, phone_number, email) VALUES (15,'Alika Drake',3,'(263) 351-7022','ante.nunc.mauris@google.net');
INSERT INTO Employee (id, name, manager_id, phone_number, email) VALUES (16,'Maxwell Guerrero',4,'(705) 476-5149','egestas.fusce@protonmail.net');
INSERT INTO Employee (id, name, manager_id, phone_number, email) VALUES (17,'Kelly Graves',4,'(724) 113-6747','tellus.justo@aol.edu');
INSERT INTO Employee (id, name, manager_id, phone_number, email) VALUES (18,'Wang Pruitt',2,'1-561-489-3983','nisi.aenean@hotmail.couk');
INSERT INTO Employee (id, name, manager_id, phone_number, email) VALUES (19,'Kareem Justice',1,'1-743-327-1879','libero@aol.net');
INSERT INTO Employee (id, name, manager_id, phone_number, email) VALUES (20,'Howard Simon',5,'(707) 880-8484','ut.pharetra.sed@icloud.couk');
INSERT INTO Employee (id, name, manager_id, phone_number, email) VALUES (21,'Rhoda Mclean',4,'1-617-552-0822','convallis.ante@yahoo.ca');
INSERT INTO Employee (id, name, manager_id, phone_number, email) VALUES (22,'Kenneth Lang',4,'(267) 870-7731','malesuada.ut@protonmail.com');
INSERT INTO Employee (id, name, manager_id, phone_number, email) VALUES (23,'Ulric Vincent',2,'1-836-181-5632','pellentesque@aol.edu');
INSERT INTO Employee (id, name, manager_id, phone_number, email) VALUES (24,'Virginia Boyd',4,'(323) 453-4229','ultrices.posuere@protonmail.com');
INSERT INTO Employee (id, name, manager_id, phone_number, email) VALUES (25,'Hammett Daniels',3,'(576) 594-5832','quis.lectus.nullam@google.net');

INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (1, TO_DATE('2023-02-05', 'YYYY-MM-DD'), 0.11, 5, 116, 12, 37);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (2, TO_DATE('2023-06-15', 'YYYY-MM-DD'), 0.14, 6, 111, 10, 32);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (3, TO_DATE('2023-07-16', 'YYYY-MM-DD'), 0.10, 2, 118, 21, 36);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (4, TO_DATE('2024-03-01', 'YYYY-MM-DD'), 0.17, 2, 108, 17, 49);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (5, TO_DATE('2023-04-25', 'YYYY-MM-DD'), 0.13, 3, 115, 24, 25);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (6, TO_DATE('2022-11-10', 'YYYY-MM-DD'), 0.10, 3, 112, 10, 10);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (7, TO_DATE('2023-09-23', 'YYYY-MM-DD'), 0.14, 2, 112, 7, 25);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (8, TO_DATE('2023-04-15', 'YYYY-MM-DD'), 0.15, 8, 108, 6, 29);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (9, TO_DATE('2024-07-30', 'YYYY-MM-DD'), 0.6, 9, 106, 24, 44);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (10, TO_DATE('2024-01-12', 'YYYY-MM-DD'), 0.16, 5, 108, 11, 29);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (11, TO_DATE('2023-04-15', 'YYYY-MM-DD'), 0.17, 4, 110, 23, 33);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (12, TO_DATE('2024-02-01', 'YYYY-MM-DD'), 0.16, 5, 119, 2, 4);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (13, TO_DATE('2023-05-28', 'YYYY-MM-DD'), 0.8, 8, 102, 8, 14);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (14, TO_DATE('2023-09-25', 'YYYY-MM-DD'), 0.14, 5, 113, 21, 29);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (15, TO_DATE('2024-08-19', 'YYYY-MM-DD'), 0.17, 2, 114, 18, 7);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (16, TO_DATE('2023-07-03', 'YYYY-MM-DD'), 0.12, 9, 109, 16, 9);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (17, TO_DATE('2023-02-15', 'YYYY-MM-DD'), 0.19, 2, 101, 24, 14);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (18, TO_DATE('2022-12-05', 'YYYY-MM-DD'), 0.8, 4, 117, 10, 10);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (19, TO_DATE('2023-05-26', 'YYYY-MM-DD'), 0.8, 7, 115, 17, 41);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (20, TO_DATE('2023-02-12', 'YYYY-MM-DD'), 0.14, 4, 115, 5, 34);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (21, TO_DATE('2024-03-03', 'YYYY-MM-DD'), 0.7, 2, 101, 19, 42);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (22, TO_DATE('2024-03-27', 'YYYY-MM-DD'), 0.11, 8, 108, 16, 34);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (23, TO_DATE('2023-02-20', 'YYYY-MM-DD'), 0.13, 10, 103, 15, 21);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (24, TO_DATE('2023-02-05', 'YYYY-MM-DD'), 0.11, 9, 115, 5, 35);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (25, TO_DATE('2023-03-18', 'YYYY-MM-DD'), 0.7, 4, 109, 8, 13);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (26, TO_DATE('2024-08-05', 'YYYY-MM-DD'), 0.16, 1, 117, 25, 49);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (27, TO_DATE('2023-12-27', 'YYYY-MM-DD'), 0.9, 4, 113, 17, 12);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (28, TO_DATE('2024-08-16', 'YYYY-MM-DD'), 0.14, 9, 105, 20, 11);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (29, TO_DATE('2022-12-10', 'YYYY-MM-DD'), 0.12, 9, 112, 17, 36);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (30, TO_DATE('2023-05-08', 'YYYY-MM-DD'), 0.19, 9, 113, 19, 16);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (31, TO_DATE('2024-08-19', 'YYYY-MM-DD'), 0.10, 5, 109, 6, 9);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (32, TO_DATE('2024-02-28', 'YYYY-MM-DD'), 0.16, 2, 113, 12, 38);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (33, TO_DATE('2024-01-05', 'YYYY-MM-DD'), 0.14, 9, 109, 17, 21);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (34, TO_DATE('2023-11-23', 'YYYY-MM-DD'), 0.7, 10, 103, 7, 26);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (35, TO_DATE('2023-02-23', 'YYYY-MM-DD'), 0.15, 9, 104, 23, 4);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (36, TO_DATE('2023-03-15', 'YYYY-MM-DD'), 0.9, 8, 109, 7, 2);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (37, TO_DATE('2023-02-07', 'YYYY-MM-DD'), 0.7, 8, 104, 18, 20);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (38, TO_DATE('2023-09-26', 'YYYY-MM-DD'), 0.20, 6, 102, 4, 39);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (39, TO_DATE('2022-10-19', 'YYYY-MM-DD'), 0.6, 7, 117, 2, 24);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (40, TO_DATE('2023-04-10', 'YYYY-MM-DD'), 0.14, 5, 114, 21, 37);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (41, TO_DATE('2024-07-31', 'YYYY-MM-DD'), 0.17, 5, 112, 18, 49);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (42, TO_DATE('2024-04-12', 'YYYY-MM-DD'), 0.10, 7, 107, 2, 42);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (43, TO_DATE('2023-08-12', 'YYYY-MM-DD'), 0.19, 4, 110, 11, 42);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (44, TO_DATE('2023-01-14', 'YYYY-MM-DD'), 0.11, 9, 102, 3, 2);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (45, TO_DATE('2024-04-24', 'YYYY-MM-DD'), 0.9, 3, 115, 4, 30);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (46, TO_DATE('2022-10-21', 'YYYY-MM-DD'), 0.16, 2, 109, 2, 50);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (47, TO_DATE('2024-03-03', 'YYYY-MM-DD'), 0.18, 5, 104, 4, 39);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (48, TO_DATE('2024-02-21', 'YYYY-MM-DD'), 0.8, 3, 105, 7, 46);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (49, TO_DATE('2024-04-11', 'YYYY-MM-DD'), 0.6, 7, 117, 7, 43);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (50, TO_DATE('2022-11-14', 'YYYY-MM-DD'), 0.19, 6, 116, 9, 16);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (51, TO_DATE('2023-03-03', 'YYYY-MM-DD'), 0.12, 1, 107, 14, 48);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (52, TO_DATE('2024-01-12', 'YYYY-MM-DD'), 0.16, 8, 101, 9, 46);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (53, TO_DATE('2023-02-10', 'YYYY-MM-DD'), 0.14, 5, 116, 11, 3);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (54, TO_DATE('2022-12-20', 'YYYY-MM-DD'), 0.15, 8, 107, 19, 38);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (55, TO_DATE('2023-02-12', 'YYYY-MM-DD'), 0.14, 10, 107, 13, 41);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (56, TO_DATE('2022-12-17', 'YYYY-MM-DD'), 0.5, 9, 103, 14, 2);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (57, TO_DATE('2024-07-01', 'YYYY-MM-DD'), 0.9, 10, 114, 12, 39);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (58, TO_DATE('2023-12-06', 'YYYY-MM-DD'), 0.9, 2, 114, 3, 49);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (59, TO_DATE('2024-08-16', 'YYYY-MM-DD'), 0.9, 5, 103, 20, 7);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (60, TO_DATE('2023-04-07', 'YYYY-MM-DD'), 0.18, 7, 118, 5, 13);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (61, TO_DATE('2024-02-18', 'YYYY-MM-DD'), 0.11, 2, 109, 10, 49);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (62, TO_DATE('2024-06-05', 'YYYY-MM-DD'), 0.5, 5, 120, 20, 8);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (63, TO_DATE('2024-10-11', 'YYYY-MM-DD'), 0.16, 4, 105, 2, 9);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (64, TO_DATE('2023-10-28', 'YYYY-MM-DD'), 0.6, 6, 102, 10, 22);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (65, TO_DATE('2024-04-21', 'YYYY-MM-DD'), 0.13, 3, 118, 11, 31);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (66, TO_DATE('2024-01-15', 'YYYY-MM-DD'), 0.16, 7, 111, 24, 33);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (67, TO_DATE('2023-05-24', 'YYYY-MM-DD'), 0.18, 3, 108, 23, 34);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (68, TO_DATE('2024-02-22', 'YYYY-MM-DD'), 0.15, 3, 104, 24, 8);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (69, TO_DATE('2024-02-18', 'YYYY-MM-DD'), 0.11, 5, 118, 22, 40);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (70, TO_DATE('2023-09-03', 'YYYY-MM-DD'), 0.16, 2, 116, 16, 11);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (71, TO_DATE('2023-06-12', 'YYYY-MM-DD'), 0.6, 2, 117, 7, 15);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (72, TO_DATE('2024-01-30', 'YYYY-MM-DD'), 0.15, 9, 111, 1, 36);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (73, TO_DATE('2023-03-22', 'YYYY-MM-DD'), 0.15, 9, 105, 13, 43);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (74, TO_DATE('2024-05-31', 'YYYY-MM-DD'), 0.15, 3, 102, 11, 6);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (75, TO_DATE('2024-08-19', 'YYYY-MM-DD'), 0.19, 2, 112, 13, 22);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (76, TO_DATE('2024-02-24', 'YYYY-MM-DD'), 0.16, 5, 113, 12, 46);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (77, TO_DATE('2024-09-07', 'YYYY-MM-DD'), 0.19, 9, 110, 17, 25);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (78, TO_DATE('2023-07-06', 'YYYY-MM-DD'), 0.15, 8, 111, 6, 27);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (79, TO_DATE('2023-07-13', 'YYYY-MM-DD'), 0.15, 1, 112, 13, 39);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (80, TO_DATE('2023-08-27', 'YYYY-MM-DD'), 0.19, 2, 106, 13, 38);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (81, TO_DATE('2023-04-30', 'YYYY-MM-DD'), 0.14, 1, 115, 19, 22);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (82, TO_DATE('2022-12-10', 'YYYY-MM-DD'), 0.16, 5, 108, 10, 6);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (83, TO_DATE('2023-05-18', 'YYYY-MM-DD'), 0.14, 5, 106, 7, 49);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (84, TO_DATE('2023-09-07', 'YYYY-MM-DD'), 0.6, 7, 109, 8, 24);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (85, TO_DATE('2023-07-29', 'YYYY-MM-DD'), 0.11, 1, 107, 16, 7);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (86, TO_DATE('2024-07-02', 'YYYY-MM-DD'), 0.19, 3, 110, 13, 31);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (87, TO_DATE('2023-05-07', 'YYYY-MM-DD'), 0.8, 6, 120, 7, 16);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (88, TO_DATE('2024-10-10', 'YYYY-MM-DD'), 0.20, 5, 103, 13, 12);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (89, TO_DATE('2023-07-03', 'YYYY-MM-DD'), 0.14, 3, 114, 2, 40);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (90, TO_DATE('2024-02-14', 'YYYY-MM-DD'), 0.15, 1, 101, 19, 6);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (91, TO_DATE('2024-07-22', 'YYYY-MM-DD'), 0.10, 2, 117, 9, 49);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (92, TO_DATE('2023-05-05', 'YYYY-MM-DD'), 0.9, 1, 103, 21, 37);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (93, TO_DATE('2024-06-28', 'YYYY-MM-DD'), 0.5, 7, 118, 8, 1);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (94, TO_DATE('2024-02-04', 'YYYY-MM-DD'), 0.7, 2, 117, 22, 33);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (95, TO_DATE('2022-11-07', 'YYYY-MM-DD'), 0.8, 8, 102, 10, 31);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (96, TO_DATE('2023-04-16', 'YYYY-MM-DD'), 0.8, 3, 109, 10, 13);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (97, TO_DATE('2024-02-18', 'YYYY-MM-DD'), 0.14, 10, 102, 23, 46);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (98, TO_DATE('2023-11-25', 'YYYY-MM-DD'), 0.5, 5, 112, 8, 13);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (99, TO_DATE('2023-05-10', 'YYYY-MM-DD'), 0.7, 3, 106, 3, 8);
INSERT INTO "Order" (id, date_of_rental, estimated_rental_revenue, tool_quantity, tools_SKU, employee_id, customer_id)
VALUES (100, TO_DATE('2023-03-24', 'YYYY-MM-DD'), 0.6, 6, 115, 11, 3);

INSERT INTO RevenueFromOrders (id, order_id, order_Tools_SKU, gross_revenue, quarter, year) VALUES (1,1,111,0.3,2,24);
INSERT INTO RevenueFromOrders (id, order_id, order_Tools_SKU, gross_revenue, quarter, year) VALUES (2,2,108,0.17,2,22);
INSERT INTO RevenueFromOrders (id, order_id, order_Tools_SKU, gross_revenue, quarter, year) VALUES (3,3,115,0.24,2,23);
INSERT INTO RevenueFromOrders (id, order_id, order_Tools_SKU, gross_revenue, quarter, year) VALUES (4,4,102,0.21,3,23);
INSERT INTO RevenueFromOrders (id, order_id, order_Tools_SKU, gross_revenue, quarter, year) VALUES (5,5,101,0.13,4,23);
INSERT INTO RevenueFromOrders (id, order_id, order_Tools_SKU, gross_revenue, quarter, year) VALUES (6,6,116,0.13,1,23);
INSERT INTO RevenueFromOrders (id, order_id, order_Tools_SKU, gross_revenue, quarter, year) VALUES (7,7,107,0.13,2,23);
INSERT INTO RevenueFromOrders (id, order_id, order_Tools_SKU, gross_revenue, quarter, year) VALUES (8,8,101,0.07,4,24);
INSERT INTO RevenueFromOrders (id, order_id, order_Tools_SKU, gross_revenue, quarter, year) VALUES (9,9,107,0.22,2,23);
INSERT INTO RevenueFromOrders (id, order_id, order_Tools_SKU, gross_revenue, quarter, year) VALUES (10,10,114,0.3,1,22);
INSERT INTO RevenueFromOrders (id, order_id, order_Tools_SKU, gross_revenue, quarter, year) VALUES (11,11,103,0.23,2,23);
INSERT INTO RevenueFromOrders (id, order_id, order_Tools_SKU, gross_revenue, quarter, year) VALUES (12,12,117,0.06,1,24);
INSERT INTO RevenueFromOrders (id, order_id, order_Tools_SKU, gross_revenue, quarter, year) VALUES (13,13,111,0.05,3,23);
INSERT INTO RevenueFromOrders (id, order_id, order_Tools_SKU, gross_revenue, quarter, year) VALUES (14,14,114,0.04,4,24);
INSERT INTO RevenueFromOrders (id, order_id, order_Tools_SKU, gross_revenue, quarter, year) VALUES (15,15,108,0.19,3,24);
INSERT INTO RevenueFromOrders (id, order_id, order_Tools_SKU, gross_revenue, quarter, year) VALUES (16,16,109,0.23,4,23);
INSERT INTO RevenueFromOrders (id, order_id, order_Tools_SKU, gross_revenue, quarter, year) VALUES (17,17,104,0.21,2,23);
INSERT INTO RevenueFromOrders (id, order_id, order_Tools_SKU, gross_revenue, quarter, year) VALUES (18,18,105,0.16,3,23);
INSERT INTO RevenueFromOrders (id, order_id, order_Tools_SKU, gross_revenue, quarter, year) VALUES (19,19,114,0.18,3,23);
INSERT INTO RevenueFromOrders (id, order_id, order_Tools_SKU, gross_revenue, quarter, year) VALUES (20,20,108,0.05,2,22);
INSERT INTO RevenueFromOrders (id, order_id, order_Tools_SKU, gross_revenue, quarter, year) VALUES (21,21,120,0.22,4,23);
INSERT INTO RevenueFromOrders (id, order_id, order_Tools_SKU, gross_revenue, quarter, year) VALUES (22,22,102,0.4,2,23);
INSERT INTO RevenueFromOrders (id, order_id, order_Tools_SKU, gross_revenue, quarter, year) VALUES (23,23,102,0.11,2,23);
INSERT INTO RevenueFromOrders (id, order_id, order_Tools_SKU, gross_revenue, quarter, year) VALUES (24,24,116,0.21,1,23);
INSERT INTO RevenueFromOrders (id, order_id, order_Tools_SKU, gross_revenue, quarter, year) VALUES (25,25,119,0.21,2,23);
INSERT INTO RevenueFromOrders (id, order_id, order_Tools_SKU, gross_revenue, quarter, year) VALUES (26,26,111,0.23,3,23);
INSERT INTO RevenueFromOrders (id, order_id, order_Tools_SKU, gross_revenue, quarter, year) VALUES (27,27,114,0.13,3,23);
INSERT INTO RevenueFromOrders (id, order_id, order_Tools_SKU, gross_revenue, quarter, year) VALUES (28,28,114,0.04,2,23);
INSERT INTO RevenueFromOrders (id, order_id, order_Tools_SKU, gross_revenue, quarter, year) VALUES (29,29,118,0.08,3,23);
INSERT INTO RevenueFromOrders (id, order_id, order_Tools_SKU, gross_revenue, quarter, year) VALUES (30,30,105,0.12,2,23);
INSERT INTO RevenueFromOrders (id, order_id, order_Tools_SKU, gross_revenue, quarter, year) VALUES (31,31,106,0.3,1,22);
INSERT INTO RevenueFromOrders (id, order_id, order_Tools_SKU, gross_revenue, quarter, year) VALUES (32,32,116,0.3,2,23);
INSERT INTO RevenueFromOrders (id, order_id, order_Tools_SKU, gross_revenue, quarter, year) VALUES (33,33,107,0.21,1,23);
INSERT INTO RevenueFromOrders (id, order_id, order_Tools_SKU, gross_revenue, quarter, year) VALUES (34,34,111,0.12,1,23);
INSERT INTO RevenueFromOrders (id, order_id, order_Tools_SKU, gross_revenue, quarter, year) VALUES (35,35,107,0.5,1,24);
INSERT INTO RevenueFromOrders (id, order_id, order_Tools_SKU, gross_revenue, quarter, year) VALUES (36,36,117,0.21,3,22);
INSERT INTO RevenueFromOrders (id, order_id, order_Tools_SKU, gross_revenue, quarter, year) VALUES (37,37,115,0.17,2,24);
INSERT INTO RevenueFromOrders (id, order_id, order_Tools_SKU, gross_revenue, quarter, year) VALUES (38,38,119,0.20,3,24);
INSERT INTO RevenueFromOrders (id, order_id, order_Tools_SKU, gross_revenue, quarter, year) VALUES (39,39,117,0.22,4,24);
INSERT INTO RevenueFromOrders (id, order_id, order_Tools_SKU, gross_revenue, quarter, year) VALUES (40,40,103,0.6,3,22);
INSERT INTO RevenueFromOrders (id, order_id, order_Tools_SKU, gross_revenue, quarter, year) VALUES (41,41,107,0.16,2,23);
INSERT INTO RevenueFromOrders (id, order_id, order_Tools_SKU, gross_revenue, quarter, year) VALUES (42,42,117,0.4,2,24);
INSERT INTO RevenueFromOrders (id, order_id, order_Tools_SKU, gross_revenue, quarter, year) VALUES (43,43,102,0.11,2,23);
INSERT INTO RevenueFromOrders (id, order_id, order_Tools_SKU, gross_revenue, quarter, year) VALUES (44,44,116,0.9,2,24);
INSERT INTO RevenueFromOrders (id, order_id, order_Tools_SKU, gross_revenue, quarter, year) VALUES (45,45,112,0.14,4,22);
INSERT INTO RevenueFromOrders (id, order_id, order_Tools_SKU, gross_revenue, quarter, year) VALUES (46,46,115,0.21,2,23);
INSERT INTO RevenueFromOrders (id, order_id, order_Tools_SKU, gross_revenue, quarter, year) VALUES (47,47,110,0.18,1,23);
INSERT INTO RevenueFromOrders (id, order_id, order_Tools_SKU, gross_revenue, quarter, year) VALUES (48,48,103,0.09,4,23);
INSERT INTO RevenueFromOrders (id, order_id, order_Tools_SKU, gross_revenue, quarter, year) VALUES (49,49,104,0.06,4,23);
INSERT INTO RevenueFromOrders (id, order_id, order_Tools_SKU, gross_revenue, quarter, year) VALUES (50,50,115,0.12,2,23);

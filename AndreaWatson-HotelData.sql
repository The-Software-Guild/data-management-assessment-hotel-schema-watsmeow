USE AndreaWatsonHotelDB;

INSERT INTO Addresses (`AddressID`,`Address`,`City`,`State`,`Zip`) VALUES (1,'1234 Fake Address','Tampa','FL','33604');
INSERT INTO Addresses (`AddressID`,`Address`,`City`,`State`,`Zip`) VALUES (2,'379 Old Shore Street','Council Bluffs','IA','51501');
INSERT INTO Addresses (`AddressID`,`Address`,`City`,`State`,`Zip`) VALUES (3,'750 Wintergreen Dr.','Wasilla','AK','99654');
INSERT INTO Addresses (`AddressID`,`Address`,`City`,`State`,`Zip`) VALUES (4,'9662 Foxrun Lane','Harlingen','TX','78552');
INSERT INTO Addresses (`AddressID`,`Address`,`City`,`State`,`Zip`) VALUES (5,'9378 W. Augusta Ave.','West Deptford','NJ','8096');
INSERT INTO Addresses (`AddressID`,`Address`,`City`,`State`,`Zip`) VALUES (6,'762 Wild Rose Street','Saginaw','MI','48601');
INSERT INTO Addresses (`AddressID`,`Address`,`City`,`State`,`Zip`) VALUES (7,'7 Poplar Dr.','Arvada','CO','80003');
INSERT INTO Addresses (`AddressID`,`Address`,`City`,`State`,`Zip`) VALUES (8,'70 Oakwood St.','Zion','IL','60099');
INSERT INTO Addresses (`AddressID`,`Address`,`City`,`State`,`Zip`) VALUES (9,'7556 Arrowhead St.','Cumberland','RI','2864');
INSERT INTO Addresses (`AddressID`,`Address`,`City`,`State`,`Zip`) VALUES (10,'77 West Surrey Street','Oswego','NY','13126');
INSERT INTO Addresses (`AddressID`,`Address`,`City`,`State`,`Zip`) VALUES (11,'939 Linda Rd.','Burke','VA','22015');
INSERT INTO Addresses (`AddressID`,`Address`,`City`,`State`,`Zip`) VALUES (12,'87 Queen St.','Drexel Hill','PA','19026');

INSERT INTO PhoneNumbers (`PhoneNumberID`,`PhoneNumber`) VALUES (1,'(291) 111-1111');
INSERT INTO PhoneNumbers (`PhoneNumberID`,`PhoneNumber`) VALUES (2,'(291) 553-0508');
INSERT INTO PhoneNumbers (`PhoneNumberID`,`PhoneNumber`) VALUES (3,'(478) 277-9632');
INSERT INTO PhoneNumbers (`PhoneNumberID`,`PhoneNumber`) VALUES (4,'(308) 494-0198');
INSERT INTO PhoneNumbers (`PhoneNumberID`,`PhoneNumber`) VALUES (5,'(214) 730-0298');
INSERT INTO PhoneNumbers (`PhoneNumberID`,`PhoneNumber`) VALUES (6,'(377) 507-0974');
INSERT INTO PhoneNumbers (`PhoneNumberID`,`PhoneNumber`) VALUES (7,'(814) 485-2615');
INSERT INTO PhoneNumbers (`PhoneNumberID`,`PhoneNumber`) VALUES (8,'(279) 491-0960');
INSERT INTO PhoneNumbers (`PhoneNumberID`,`PhoneNumber`) VALUES (9,'(446) 396-6785');
INSERT INTO PhoneNumbers (`PhoneNumberID`,`PhoneNumber`) VALUES (10,'(834) 727-1001');
INSERT INTO PhoneNumbers (`PhoneNumberID`,`PhoneNumber`) VALUES (11,'(446) 351-6860');
INSERT INTO PhoneNumbers (`PhoneNumberID`,`PhoneNumber`) VALUES (12,'(231) 893-2755');

INSERT INTO Guests (`GuestID`,`GuestName`,`AddressID`,`PhoneNumberID`) VALUES (1,'Andrea Watson',1,1);
INSERT INTO Guests (`GuestID`,`GuestName`,`AddressID`,`PhoneNumberID`) VALUES (2,'Mack Simmer',2,2);
INSERT INTO Guests (`GuestID`,`GuestName`,`AddressID`,`PhoneNumberID`) VALUES (3,'Bettyann Seery',3,3);
INSERT INTO Guests (`GuestID`,`GuestName`,`AddressID`,`PhoneNumberID`) VALUES (4,'Duane Cullison',4,4);
INSERT INTO Guests (`GuestID`,`GuestName`,`AddressID`,`PhoneNumberID`) VALUES (5,'Karie Yang',5,5);
INSERT INTO Guests (`GuestID`,`GuestName`,`AddressID`,`PhoneNumberID`) VALUES (6,'Aurore Lipton',6,6);
INSERT INTO Guests (`GuestID`,`GuestName`,`AddressID`,`PhoneNumberID`) VALUES (7,'Zachery Luechtefeld',7,7);
INSERT INTO Guests (`GuestID`,`GuestName`,`AddressID`,`PhoneNumberID`) VALUES (8,'Jeremiah Pendergrass',8,8);
INSERT INTO Guests (`GuestID`,`GuestName`,`AddressID`,`PhoneNumberID`) VALUES (9,'Walter Holaway',9,9);
INSERT INTO Guests (`GuestID`,`GuestName`,`AddressID`,`PhoneNumberID`) VALUES (10,'Wilfred Vise',10,10);
INSERT INTO Guests (`GuestID`,`GuestName`,`AddressID`,`PhoneNumberID`) VALUES (11,'Maritza Tilton',11,11);
INSERT INTO Guests (`GuestID`,`GuestName`,`AddressID`,`PhoneNumberID`) VALUES (12,'Joleen Tison',12,12);

INSERT INTO RoomType (`RoomTypeID`,`RoomType`) VALUES (1,'Single');
INSERT INTO RoomType (`RoomTypeID`,`RoomType`) VALUES (2,'Double');
INSERT INTO RoomType (`RoomTypeID`,`RoomType`) VALUES (3,'Suite');

INSERT INTO Ammenities (`AmmenitiesID`,`Ammenities`) VALUES (1,'Refrigerator');
INSERT INTO Ammenities (`AmmenitiesID`,`Ammenities`) VALUES (2,'Microwave, Jacuzzi');
INSERT INTO Ammenities (`AmmenitiesID`,`Ammenities`) VALUES (3,'Microwave, Refrigerator, Jacuzzi');
INSERT INTO Ammenities (`AmmenitiesID`,`Ammenities`) VALUES (4,'Microwave, Refrigerator');
INSERT INTO Ammenities (`AmmenitiesID`,`Ammenities`) VALUES (5,'Microwave, Refrigerator, Oven');

INSERT INTO Rooms (`RoomNumber`,`ADAAccessible`,`StandardOccupancy`,`MaxOccupancy`,`BasePrice`,`ExtraPerson`,`RoomTypeID`,`AmmenitiesID`) VALUES (201,0,2,4,199.99,10,2,2);
INSERT INTO Rooms (`RoomNumber`,`ADAAccessible`,`StandardOccupancy`,`MaxOccupancy`,`BasePrice`,`ExtraPerson`,`RoomTypeID`,`AmmenitiesID`) VALUES (202,1,2,4,174.99,10,2,1);
INSERT INTO Rooms (`RoomNumber`,`ADAAccessible`,`StandardOccupancy`,`MaxOccupancy`,`BasePrice`,`ExtraPerson`,`RoomTypeID`,`AmmenitiesID`) VALUES (203,0,2,4,199.99,10,2,2);
INSERT INTO Rooms (`RoomNumber`,`ADAAccessible`,`StandardOccupancy`,`MaxOccupancy`,`BasePrice`,`ExtraPerson`,`RoomTypeID`,`AmmenitiesID`) VALUES (204,1,2,4,174.99,10,2,1);
INSERT INTO Rooms (`RoomNumber`,`ADAAccessible`,`StandardOccupancy`,`MaxOccupancy`,`BasePrice`,`ExtraPerson`,`RoomTypeID`,`AmmenitiesID`) VALUES (205,0,2,2,174.99,NULL,1,3);
INSERT INTO Rooms (`RoomNumber`,`ADAAccessible`,`StandardOccupancy`,`MaxOccupancy`,`BasePrice`,`ExtraPerson`,`RoomTypeID`,`AmmenitiesID`) VALUES (206,1,2,2,149.99,NULL,1,4);
INSERT INTO Rooms (`RoomNumber`,`ADAAccessible`,`StandardOccupancy`,`MaxOccupancy`,`BasePrice`,`ExtraPerson`,`RoomTypeID`,`AmmenitiesID`) VALUES (207,0,2,2,174.99,NULL,1,3);
INSERT INTO Rooms (`RoomNumber`,`ADAAccessible`,`StandardOccupancy`,`MaxOccupancy`,`BasePrice`,`ExtraPerson`,`RoomTypeID`,`AmmenitiesID`) VALUES (208,1,2,2,149.99,NULL,1,4);
INSERT INTO Rooms (`RoomNumber`,`ADAAccessible`,`StandardOccupancy`,`MaxOccupancy`,`BasePrice`,`ExtraPerson`,`RoomTypeID`,`AmmenitiesID`) VALUES (301,0,2,4,199.99,10,2,2);
INSERT INTO Rooms (`RoomNumber`,`ADAAccessible`,`StandardOccupancy`,`MaxOccupancy`,`BasePrice`,`ExtraPerson`,`RoomTypeID`,`AmmenitiesID`) VALUES (302,1,2,4,174.99,10,2,1);
INSERT INTO Rooms (`RoomNumber`,`ADAAccessible`,`StandardOccupancy`,`MaxOccupancy`,`BasePrice`,`ExtraPerson`,`RoomTypeID`,`AmmenitiesID`) VALUES (303,0,2,4,199.99,10,2,2);
INSERT INTO Rooms (`RoomNumber`,`ADAAccessible`,`StandardOccupancy`,`MaxOccupancy`,`BasePrice`,`ExtraPerson`,`RoomTypeID`,`AmmenitiesID`) VALUES (304,1,2,4,174.99,10,2,1);
INSERT INTO Rooms (`RoomNumber`,`ADAAccessible`,`StandardOccupancy`,`MaxOccupancy`,`BasePrice`,`ExtraPerson`,`RoomTypeID`,`AmmenitiesID`) VALUES (305,0,2,2,174.99,NULL,1,3);
INSERT INTO Rooms (`RoomNumber`,`ADAAccessible`,`StandardOccupancy`,`MaxOccupancy`,`BasePrice`,`ExtraPerson`,`RoomTypeID`,`AmmenitiesID`) VALUES (306,1,2,2,149.99,NULL,1,4);
INSERT INTO Rooms (`RoomNumber`,`ADAAccessible`,`StandardOccupancy`,`MaxOccupancy`,`BasePrice`,`ExtraPerson`,`RoomTypeID`,`AmmenitiesID`) VALUES (307,0,2,2,174.99,NULL,1,3);
INSERT INTO Rooms (`RoomNumber`,`ADAAccessible`,`StandardOccupancy`,`MaxOccupancy`,`BasePrice`,`ExtraPerson`,`RoomTypeID`,`AmmenitiesID`) VALUES (308,1,2,2,149.99,NULL,1,4);
INSERT INTO Rooms (`RoomNumber`,`ADAAccessible`,`StandardOccupancy`,`MaxOccupancy`,`BasePrice`,`ExtraPerson`,`RoomTypeID`,`AmmenitiesID`) VALUES (401,1,3,8,399.99,20,3,5);
INSERT INTO Rooms (`RoomNumber`,`ADAAccessible`,`StandardOccupancy`,`MaxOccupancy`,`BasePrice`,`ExtraPerson`,`RoomTypeID`,`AmmenitiesID`) VALUES (402,1,3,8,399.99,20,3,5);

INSERT INTO Reservations (`ReservationID`,`Adults`,`Children`,`StartDate`,`EndDate`,`TotalCost`,`RoomNumber`,`GuestNameID`) VALUES (1,1,0,'2023-02-02','2023-02-04',299.98,308,2);
INSERT INTO Reservations (`ReservationID`,`Adults`,`Children`,`StartDate`,`EndDate`,`TotalCost`,`RoomNumber`,`GuestNameID`) VALUES (2,2,1,'2023-02-05','2023-02-10',999.95,203,3);
INSERT INTO Reservations (`ReservationID`,`Adults`,`Children`,`StartDate`,`EndDate`,`TotalCost`,`RoomNumber`,`GuestNameID`) VALUES (3,2,0,'2023-02-22','2023-02-24',349.98,305,4);
INSERT INTO Reservations (`ReservationID`,`Adults`,`Children`,`StartDate`,`EndDate`,`TotalCost`,`RoomNumber`,`GuestNameID`) VALUES (4,2,2,'2023-03-06','2023-03-07',199.99,201,5);
INSERT INTO Reservations (`ReservationID`,`Adults`,`Children`,`StartDate`,`EndDate`,`TotalCost`,`RoomNumber`,`GuestNameID`) VALUES (5,1,1,'2023-03-17','2023-03-20',524.97,307,1);
INSERT INTO Reservations (`ReservationID`,`Adults`,`Children`,`StartDate`,`EndDate`,`TotalCost`,`RoomNumber`,`GuestNameID`) VALUES (6,3,0,'2023-03-18','2023-03-23',924.95,302,6);
INSERT INTO Reservations (`ReservationID`,`Adults`,`Children`,`StartDate`,`EndDate`,`TotalCost`,`RoomNumber`,`GuestNameID`) VALUES (7,2,2,'2023-03-29','2023-03-31',349.98,202,7);
INSERT INTO Reservations (`ReservationID`,`Adults`,`Children`,`StartDate`,`EndDate`,`TotalCost`,`RoomNumber`,`GuestNameID`) VALUES (8,2,0,'2023-03-31','2023-04-05',874.95,304,8);
INSERT INTO Reservations (`ReservationID`,`Adults`,`Children`,`StartDate`,`EndDate`,`TotalCost`,`RoomNumber`,`GuestNameID`) VALUES (9,1,0,'2023-04-09','2023-04-13',799.96,301,9);
INSERT INTO Reservations (`ReservationID`,`Adults`,`Children`,`StartDate`,`EndDate`,`TotalCost`,`RoomNumber`,`GuestNameID`) VALUES (10,1,1,'2023-04-23','2023-04-24',174.99,207,10);
INSERT INTO Reservations (`ReservationID`,`Adults`,`Children`,`StartDate`,`EndDate`,`TotalCost`,`RoomNumber`,`GuestNameID`) VALUES (11,2,4,'2023-05-30','2023-06-02',1199.97,401,11);
INSERT INTO Reservations (`ReservationID`,`Adults`,`Children`,`StartDate`,`EndDate`,`TotalCost`,`RoomNumber`,`GuestNameID`) VALUES (12,2,0,'2023-06-10','2023-06-14',599.96,206,12);
INSERT INTO Reservations (`ReservationID`,`Adults`,`Children`,`StartDate`,`EndDate`,`TotalCost`,`RoomNumber`,`GuestNameID`) VALUES (13,1,0,'2023-06-10','2023-06-14',599.96,208,12);
INSERT INTO Reservations (`ReservationID`,`Adults`,`Children`,`StartDate`,`EndDate`,`TotalCost`,`RoomNumber`,`GuestNameID`) VALUES (14,3,0,'2023-06-17','2023-06-18',184.99,304,6);
INSERT INTO Reservations (`ReservationID`,`Adults`,`Children`,`StartDate`,`EndDate`,`TotalCost`,`RoomNumber`,`GuestNameID`) VALUES (15,2,0,'2023-06-28','2023-07-02',699.96,205,1);
INSERT INTO Reservations (`ReservationID`,`Adults`,`Children`,`StartDate`,`EndDate`,`TotalCost`,`RoomNumber`,`GuestNameID`) VALUES (16,3,1,'2023-07-13','2023-07-14',184.99,204,9);
INSERT INTO Reservations (`ReservationID`,`Adults`,`Children`,`StartDate`,`EndDate`,`TotalCost`,`RoomNumber`,`GuestNameID`) VALUES (17,4,2,'2023-07-18','2023-07-21',1259.97,401,10);
INSERT INTO Reservations (`ReservationID`,`Adults`,`Children`,`StartDate`,`EndDate`,`TotalCost`,`RoomNumber`,`GuestNameID`) VALUES (18,2,1,'2023-07-28','2023-07-29',199.99,303,3);
INSERT INTO Reservations (`ReservationID`,`Adults`,`Children`,`StartDate`,`EndDate`,`TotalCost`,`RoomNumber`,`GuestNameID`) VALUES (19,1,0,'2023-08-30','2023-09-01',349.98,305,3);
INSERT INTO Reservations (`ReservationID`,`Adults`,`Children`,`StartDate`,`EndDate`,`TotalCost`,`RoomNumber`,`GuestNameID`) VALUES (20,2,0,'2023-09-16','2023-09-17',149.99,208,2);
INSERT INTO Reservations (`ReservationID`,`Adults`,`Children`,`StartDate`,`EndDate`,`TotalCost`,`RoomNumber`,`GuestNameID`) VALUES (21,2,2,'2023-09-13','2023-09-15',399.98,203,5);
INSERT INTO Reservations (`ReservationID`,`Adults`,`Children`,`StartDate`,`EndDate`,`TotalCost`,`RoomNumber`,`GuestNameID`) VALUES (22,2,2,'2023-11-22','2023-11-25',1199.97,401,4);
INSERT INTO Reservations (`ReservationID`,`Adults`,`Children`,`StartDate`,`EndDate`,`TotalCost`,`RoomNumber`,`GuestNameID`) VALUES (23,2,0,'2023-11-22','2023-11-25',449.97,206,2);
INSERT INTO Reservations (`ReservationID`,`Adults`,`Children`,`StartDate`,`EndDate`,`TotalCost`,`RoomNumber`,`GuestNameID`) VALUES (24,2,2,'2023-11-22','2023-11-25',599.97,301,2);
INSERT INTO Reservations (`ReservationID`,`Adults`,`Children`,`StartDate`,`EndDate`,`TotalCost`,`RoomNumber`,`GuestNameID`) VALUES (25,2,0,'2023-12-24','2023-12-28',699.96,302,11);

SET SQL_SAFE_UPDATES = 0;

DELETE FROM Reservations
WHERE GuestNameID = 8;

DELETE FROM Guests
WHERE GuestID = 8;

DELETE FROM Addresses
WHERE AddressID = 8;

DELETE FROM PhoneNumbers
WHERE PhoneNumberID = 8;

SET SQL_SAFE_UPDATES = 1;
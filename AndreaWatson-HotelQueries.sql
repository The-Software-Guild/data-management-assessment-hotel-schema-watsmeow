/*Write a query that returns a list of reservations that end in July 2023, 
including the name of the guest, the room number(s), and the reservation dates.*/
SELECT StartDate, EndDate, GuestName, RoomNumber
FROM Reservations
JOIN Guests ON Guests.GuestID = Reservations.GuestNameID
WHERE EndDate BETWEEN "2023-07-01" AND "2023-07-31";
/*
2023-06-28	2023-07-02	Andrea Watson	205
2023-07-13	2023-07-14	Walter Holaway	204
2023-07-18	2023-07-21	Wilfred Vise	401
2023-07-28	2023-07-29	Bettyann Seery	303*/


/*Write a query that returns a list of all reservations for rooms with a jacuzzi, 
displaying the guest's name, the room number, and the dates of the reservation.*/
SELECT Ammenities, Rooms.RoomNumber, Guests.GuestName, StartDate, EndDate
FROM Reservations
JOIN Guests ON Guests.GuestID = Reservations.GuestNameID
JOIN Rooms ON Rooms.RoomNumber = Reservations.RoomNumber
JOIN Ammenities ON Ammenities.AmmenitiesID = Rooms.AmmenitiesID
WHERE Ammenities.Ammenities LIKE '%Jacuzzi%';
/*
Microwave, Jacuzzi	201	Karie Yang	2023-03-06	2023-03-07
Microwave, Jacuzzi	203	Bettyann Seery	2023-02-05	2023-02-10
Microwave, Jacuzzi	203	Karie Yang	2023-09-13	2023-09-15
Microwave, Jacuzzi	301	Walter Holaway	2023-04-09	2023-04-13
Microwave, Jacuzzi	301	Mack Simmer	2023-11-22	2023-11-25
Microwave, Jacuzzi	303	Bettyann Seery	2023-07-28	2023-07-29
Microwave, Refrigerator, Jacuzzi	205	Andrea Watson	2023-06-28	2023-07-02
Microwave, Refrigerator, Jacuzzi	207	Wilfred Vise	2023-04-23	2023-04-24
Microwave, Refrigerator, Jacuzzi	305	Duane Cullison	2023-02-22	2023-02-24
Microwave, Refrigerator, Jacuzzi	305	Bettyann Seery	2023-08-30	2023-09-01
Microwave, Refrigerator, Jacuzzi	307	Andrea Watson	2023-03-17	2023-03-20*/

/*Write a query that returns all the rooms reserved for a specific guest, including the guest's name, the room(s) reserved, the starting date of the reservation, 
and how many people were included in the reservation. (Choose a guest's name from the existing data.)*/
SELECT Guests.GuestName, Rooms.RoomNumber, StartDate, EndDate, (Adults + Children) AS NumberofGuests
FROM Reservations
JOIN Guests ON Guests.GuestID = Reservations.GuestNameID
JOIN Rooms ON Rooms.RoomNumber = Reservations.RoomNumber
WHERE Guests.GuestName = "Maritza Tilton";
/*
Maritza Tilton	401	2023-05-30	2023-06-02	6
Maritza Tilton	302	2023-12-24	2023-12-28	2*/

/*Write a query that returns a list of rooms, reservation ID, and per-room cost for each reservation. 
The results should include all rooms, whether or not there is a reservation associated with the room. */
SELECT Rooms.RoomNumber, Reservations.ReservationID, Rooms.BasePrice
FROM Rooms
LEFT OUTER JOIN Reservations ON Rooms.RoomNumber = Reservations.RoomNumber;
/*201	4	199.99
202	7	174.99
203	2	199.99
203	21	199.99
204	16	174.99
205	15	174.99
206	12	149.99
206	23	149.99
207	10	174.99
208	13	149.99
208	20	149.99
301	9	199.99
301	24	199.99
302	6	174.99
302	25	174.99
303	18	199.99
304	14	174.99
305	3	174.99
305	19	174.99
306		149.99
307	5	174.99
308	1	149.99
401	11	399.99
401	17	399.99
401	22	399.99
402		399.99*/

/*Write a query that returns all rooms with a capacity of three or more 
and that are reserved on any date in April 2023. */
SELECT Rooms.RoomNumber, MaxOccupancy, StartDate, EndDate
FROM Rooms
JOIN Reservations ON Rooms.RoomNumber = Reservations.RoomNumber
WHERE MaxOccupancy >= 3 AND StartDate >= "2023-04-01" AND EndDate <= "2023-04-30";
/*301	4	2023-04-09	2023-04-13*/

/*Write a query that returns a list of all guest names and the number of reservations per guest, 
sorted starting with the guest with the most reservations and then by the guest's last name. */
SELECT Guests.GuestName, COUNT(ReservationID)
FROM Guests
JOIN Reservations ON Guests.GuestID = Reservations.GuestNameID
GROUP BY Guests.GuestName
ORDER BY COUNT(ReservationID) DESC, SUBSTRING_INDEX(SUBSTRING_INDEX(Guests.GuestName, ' ', 3), ' ', -1);
/*
Mack Simmer	4
Bettyann Seery	3
Duane Cullison	2
Walter Holaway	2
Aurore Lipton	2
Maritza Tilton	2
Joleen Tison	2
Wilfred Vise	2
Andrea Watson	2
Karie Yang	2
Zachery Luechtefeld	1*/

/*Write a query that displays the name, address, and phone number of a guest based on their phone number. 
(Choose a phone number from the existing data.) */
SELECT GuestName, Address, City, State, Zip, PhoneNumber
From Guests
JOIN Addresses ON Guests.AddressID = Addresses.AddressID
JOIN PhoneNumbers ON Guests.PhoneNumberID = PhoneNumbers.PhoneNumberID
WHERE PhoneNumbers.PhoneNumberID = 2;
/*Mack Simmer	379 Old Shore Street	Council Bluffs	IA	51501	(291) 553-0508*/
CREATE DATABASE AndreaWatsonHotelDB;

CREATE TABLE Addresses (
	AddressID INT PRIMARY KEY, 
    Address VARCHAR(500) NOT NULL,
    City VARCHAR(100) NOT NULL,
    State VARCHAR(2) NOT NULL, 
    Zip VARCHAR(10) NOT NULL
);

CREATE TABLE PhoneNumbers (
	PhoneNumberID INT PRIMARY KEY,
    PhoneNumber VARCHAR(50) NOT NULL
);

CREATE TABLE Guests (
	GuestID INT PRIMARY KEY,
    GuestName VARCHAR(100) NOT NULL,
    FOREIGN KEY fk_AddressID (AddressID) 
		REFERENCES Addresses(AddressID),
	FOREIGN KEY fk_PhoneNumberID (PhoneNumberID)
		REFERENCES PhoneNumbers(PhoneNumberID)
);

CREATE TABLE RoomType (
	RoomTypeID INT PRIMARY KEY,
    RoomType VARCHAR(10) NOT NULL
);

CREATE TABLE Ammenities (
	AmmenitiesID INT PRIMARY KEY,
    Ammenities VARCHAR(100) NOT NULL
);

CREATE TABLE Rooms (
	RoomNumber INT PRIMARY KEY,
    ADAAccessible BOOLEAN NOT NULL,
    StandardOccupancy INT NOT NULL,
    MaxOccupancy INT NOT NULL, 
    BasePrice FLOAT NOT NULL, 
    ExtraPerson FLOAT NULL,
	FOREIGN KEY fk_RoomTypeID (RoomTypeID) 
		REFERENCES RoomType(RoomTypeID),
	FOREIGN KEY fk_AmmenitiesID (AmmenitiesID)
		REFERENCES Ammenities(AmmenitiesID)
);

CREATE TABLE Reservations (
	ReservationID INT PRIMARY KEY,
	Adults INT NOT NULL,
    Children INT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL,
    TotalCost FLOAT NOT NULL,
	FOREIGN KEY fk_RoomNumberID (RoomNumber) 
		REFERENCES Rooms(RoomNumber),
	FOREIGN KEY fk_NameID (GuestNameID)
		REFERENCES Guests(GuestID)
);
create table Clients (
ClientID int not null,
FullName VARCHAR(100),
Addresse varchar(255),
Phone varchar(100),
primary key (ClientID)
);
create table Cars (
RegistrationNumber varchar(100) not null,
Brand varchar(100),
Model varchar(100),
Year YEAR,
primary key (RegistrationNumber)
);
create table Contracts (
ContractNumber varchar(100) not null,
StartDate date,
EndDate date,
Duration int,
ClientID int,
RegistrationNumber varchar(100),
primary key (ContractNumber),
foreign key (ClientID) references Clients(ClientID),
foreign key (RegistrationNumber) references Cars(RegistrationNumber)
);
insert into Clients (ClientID,FullName,Addresse,Phone)
values (1,'Saad el Quaul','Safi Morocco','+212616889565'),
		(2,'Hafsa Sami','Agadir Morocco','+212655896585'),
		(3,'Omar Bo salem','Merrakech Morocco','+212655448899');

insert into Cars (RegistrationNumber,Brand,Model,`Year`)
values ('5658XYY','Toyota','Corolla',`2010`),
		('7878XYX','Renault','Clio',`2021`),
		('9698XZZ','Kia','Rio S Sedan','2018');

update clients
set Phone = '+212655449900'
where ClientID = 3;
update
	Cars
set
	`Year` = '2020'
where
	RegistrationNumber = '9698XZZ';

delete from clients where clientid=2;

delete from cars where registrationNumber = '7878XYX';


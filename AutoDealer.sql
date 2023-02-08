use dealership;
show tables;
insert into Make (Make) 
Values ('Buick'),('Chevrolet'),('Chrysler'),('Dodge'),('Hummer'),('Jeep'),('Ram'),('Saturn'),('Tesla'),('Acura'),('Honda'),('Hyundai'),('Lexus'),('Mazda'),('Nissan'),('Subaru');
select * from Make order by ID;
insert into Model (Model) 
Values ('Rogue'),('Titan'),('Altima'),('Frontier'),('Atenza'),('CX-3'),('Axela'),('Demio'),('Renegade'),('Compass'),('Wrangler');
select * from Model order by ID;
insert into Transmission (Transmission)
	Values ('9 Speed Automatic');

select * from Transmission order by ID;
   select * from Type order by ID;

select * from make order by ID;
select * from Model order by ID;

select * from Color order by ID;
select * from Engine order by ID;
select * from Cylinders order by ID;
select * from Transmission order by ID;
select * from odometer order by ID;
insert into Vehicle ( type, make, model, color, engine, cylinders, transmission, vin, odometer, retail, year)

	values 
	('9', '18', '32', '2', '6', '3', '5', 
'JF1SG63685H737629', '5', '27360.00', '2023'),

('7', '18', '33', '4', '4', '4', '8', 
'2HGEJ6617YH561116', '8', '39700.00', '2023' ),

 ('1', '18', '34', '6', '6', '3', '5', '1N6AD0EV9BC405351', '2', '26385.00', '2023'),

('5', '18', '35', '8', '3', '3', '8', 
'2T1BU4EE4AC381738', '10', '39914.00', '2023'),

('4', '17', '36', '3', '1', '8', '4', 
'1G8JW54RX3Y520537', '18000', '41700.00', '2021'),

('1', '17', '38', '6', '7', '8', '4', 
'1FMJU1J5XAEA76057', '26000', '19635.00', '2019'),

('8', '17', '39', '9', '8', '8', '2', '4S4BRCDC2E3267937',
'53000', '12151.00', '2014'),

('9', '17', '37', '12', '1', '8', '2', 'JM1BJ245221484094', '21000', 
'15991.00', '2019'),

('9', '9', '40', '14', '8', '8', '4', 
'4T4BF1FK1ER374026', '10', '29745.00', '2023'),

('9', '9', '41', '16', '8', '8', '2', '1FMZU63W72ZB66847', '9000', 
'24495.00', '2021'),

('9', '9', '42', '18', '1', '8', '1', '1GKKRRED3BJ228168', 
'12000', '46900.00', '2020');
select * from vehicle;
create table makeModel (

makeID integer not null,
modelID integer not null,
PRIMARY KEY(makeID,modelID),
foreign key (makeID) References make(ID) ,
foreign key (modelID) References model(ID)
);
show create table makeModel;


insert into makeModel (makeID , modelID)
	select distinct Make , Model
	from vehicle;
select * from makeModel;
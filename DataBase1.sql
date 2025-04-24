create database F1;
use F1;
create table Racer(
RacerID INT,
Name varchar(40),
Team varchar(20),
Age INT,
Nationality varchar(30));
insert into Racer values
(1,'Lewis Hamilton','Ferrari',40,'UK');
insert into Racer values
(2,'Max Verstappen','Red Bull',27,'BEL');
insert into Racer values
(3,'Checo Pérez','Red Bull',35,'MXN');
insert into Racer values
(4,'Fernando Alonso','Aston Martin',43,'ESP');
insert into Racer values
(5,'Franco Colapinto','Alpine',21,'ARG');

alter table Racer add column (Points INT);
alter table Racer add column (LabsTime time);
alter table Racer add column (DateRace DATE);
update Racer set Points=240 where RacerID = 1;
update Racer set Points=359 where RacerID = 2;
update Racer set Points=305 where RacerID = 3;
update Racer set Points=406 where RacerID = 4;
update Racer set Points=5 where RacerID = 5;

update Racer set LabsTime='05:23:34' where RacerID = 1;
update Racer set LabsTime='04:43:54' where RacerID = 2;
update Racer set LabsTime='06:01:10' where RacerID = 3;
update Racer set LabsTime='05:59:55' where RacerID = 4;
update Racer set LabsTime='05:39:25' where RacerID = 5;

update Racer set DateRace='2025-03-16' where RacerID = 1;
update Racer set DateRace='2025-03-16' where RacerID = 2;
update Racer set DateRace='2025-03-16' where RacerID = 3;
update Racer set DateRace='2025-03-16' where RacerID = 4;
update Racer set DateRace='2025-03-16' where RacerID = 5;

select Name from Racer where Age>=30 and LabsTime;
select Name from Racer where Team='Red Bull' and Points >=300 ;
select Nationality from Racer where Age <=25 and Points <=300 ;
select Team from Racer where Points>=300 or Age>=30 ;
select Team from Racer where Points>=300 and DateRace= '2025-03-16' or Age<=30 ;

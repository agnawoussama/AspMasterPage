create database masterPage
use masterPage
create table Etudiants(
NE varchar(20) primary key,
Nom varchar(30),
Prenom varchar(30),
DateNaissance date)

INSERT INTO Etudiants VALUES
('t001', 'Leila', 'Sabir', '2000-02-01'),
('t002', 'Ahlam', 'Alami', '2002-02-10'),
('t003', 'Karim', 'Kabiri', '2001-12-23'),
('t004', 'Maha', 'Nwar', '2000-05-04')

select * from Etudiants


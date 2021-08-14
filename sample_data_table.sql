create table patients(
customer_name varchar(255) not null,
customer_id int(18) not null,
customer_open_date date not null,
last_consulted_date date,
vaccination_type varchar(5),
doctor_consulted varchar(255),
state varchar(5),
country varchar(5),
post_code int(6),
date_of_birth date,
is_active varchar(1),
primary key(customer_name)
);
insert into patients(
customer_name,customer_id,customer_open_date,last_consulted_date,vaccination_type,doctor_consulted,state,country,post_code,date_of_birth,is_active
)
values
('Robin',12345,'2005-05-12','2005-05-17','MVD','Dr.Paul','ODI','IND',756004,'1975-05-17','A'),
('Lila',12346,'2005-06-15','2005-07-24','MVD','Dr.Kaul','UP','IND',756023,'1977-03-27','A'),
('Anna',12347,'2005-07-11','2005-08-14','MVD','Dr.Paul','ODI','IND',756004,'1975-07-27','A'),
('Rabi',12348,'2005-08-21','2005-09-19','MVD','Dr.Hezzel','KU','AGN',756043,'1977-05-14','A'),
('Mohit',12349,'2005-09-21','2005-10-14','MVD','Dr.Kaul','ODI','IND',756004,'1970-03-10','A'),
('Alex',12350,'2005-02-22','2005-05-14','MVD','Dr.Paul','SA','US',756033,'1975-04-17','A'),
('Sradha',12351,'2005-04-12','2005-05-18','MVD','Dr.Paul','ODI','IND',756004,'1973-05-12','A'),
('Manoj',12352,'2005-05-12','2005-07-14','MVD','Dr.Kaul','UP','IND',756023,'1974-05-17','A'),
('Aniket',12353,'2004-05-02','2005-05-19','MVD','Dr.Paul','NSW','AUS',756053,'1974-07-24','A'),
('John',12354,'2003-02-11','2005-05-14','MVD','Dr.Hezzel','SA','US',756033,'1975-02-27','A'),
('Manjeet',12355,'2004-06-20','2005-05-14','MVD','Dr.Paul','ODI','IND',756004,'1971-05-13','A'),
('Alexa',12356,'2005-03-21','2005-05-22','MVD','Dr.Paul','UP','IND',756023,'1976-04-17','A'),
('Som',12357,'2011-08-12','2012-05-14','MVD','Dr.Paul','SU','AGN',756063,'1965-05-27','A'),
('Subrat',12358,'2012-12-12','2015-05-14','MVD','Dr.Kaul','ODI','IND',756004,'1972-05-14','A'),
('Rick',12359,'2005-03-12','2006-05-21','MVD','Dr.Paul','UP','IND',756023,'1971-03-14','A'),
('Morty',12360,'2005-01-12','2005-07-19','MVD','Dr.Hezzel','NSW','AUS',756053,'1977-07-17','A'),
('Anu',12361,'2004-11-12','2005-05-14','MVD','Dr.Paul','SA','US',756033,'1975-03-17','A'),
('David',12362,'2005-05-12','2005-07-18','MVD','Dr.Kaul','ODI','IND',756004,'1974-02-13','A'),
('Ron',12363,'2005-05-12','2005-05-14','MVD','Dr.Hezzel','NSW','AUS',756053,'1976-05-14','A'),
('Johnson',12364,'2005-05-12','2005-05-14','MVD','Dr.Paul','UP','IND',756023,'1972-02-12','A'),
('Ruhi',12365,'2005-05-12','2005-05-14','MVD','Dr.Paul','NSW','AUS',756053,'1970-06-14','A'),
('Rin',12366,'2005-05-12','2005-05-14','MVD','Dr.Hezzel','SA','US',756033,'1971-08-18','A')
;



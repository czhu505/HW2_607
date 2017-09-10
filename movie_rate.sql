DROP TABLE IF EXISTS movie_rate;

CREATE TABLE movie_rate 
(
  Movie varchar(50) NOT NULL,
  Rate varchar(2) NOT NULL,
  Genre varchar(10) NOT NULL,
  Sex varchar(2) NOT NULL,
  Age int NOT NULL,
  FamilySize int NOT NULL,
   
  constraint movieR_Rate_CC check((rate='1') or (rate='2') 
	or (rate='3') or (rate='4') or (rate='5')),
  constraint movieR_Sex_CC check((Sex='f') or (Sex='m'))
);

/*insert data in the table */
insert into movie_rate (Movie,Rate,Genre,Sex,Age,FamilySize)
value
('War for the Planet of the Apes','3','action','f',2,2),
('War for the Planet of the Apes','2','action','m',33,2),
('War for the Planet of the Apes','5','action','m',28,3),
('War for the Planet of the Apes','3','action','m',34,1),
('War for the Planet of the Apes','1','action','f',27,1),
('War for the Planet of the Apes','4','action','m',38,3),
('War for the Planet of the Apes','3','action','f',33,3),
('War for the Planet of the Apes','4','action','m',41,4),



('Wonder Woman','5','action','f',2,2),
('Wonder Woman','3','action','m',33,2),
('Wonder Woman','4','action','m',28,3),
('Wonder Woman','5','action','m',34,1),
('Wonder Woman','4','action','f',27,1),
('Wonder Woman','5','action','m',38,3),
('Wonder Woman','5','action','f',33,3),
('Wonder Woman','3','action','m',41,4),

('Spider-Man: Homecoming','4','action','f',2,2),
('Spider-Man: Homecoming','3','action','m',33,2),
('Spider-Man: Homecoming','4','action','m',28,3),
('Spider-Man: Homecoming','5','action','m',34,1),
('Spider-Man: Homecoming','4','action','f',27,1),
('Spider-Man: Homecoming','4','action','m',38,3),
('Spider-Man: Homecoming','3','action','f',33,3),
('Spider-Man: Homecoming','3','action','f',41,4),

('Beauty and the Beast','4','romantic','f',2,2),
('Beauty and the Beast','1','romantic','m',33,2),
('Beauty and the Beast','5','romantic','m',28,3),
('Beauty and the Beast','4','romantic','m',34,1),
('Beauty and the Beast','3','romantic','f',27,1),
('Beauty and the Beast','3','romantic','m',38,3),
('Beauty and the Beast','2','romantic','m',41,4),

('Alien: Covenant','3','horror','f',2,2),
('Alien: Covenant','3','horror','m',33,2),
('Alien: Covenant','2','horror','m',28,3),
('Alien: Covenant','2','horror','m',34,1),
('Alien: Covenant','1','horror','f',27,1),
('Alien: Covenant','3','horror','m',38,3),
('Alien: Covenant','2','horror','f',33,3),
('Alien: Covenant','4','horror','m',41,4),

('John Wick: Chapter 2','3','action','f',2,2),
('John Wick: Chapter 2','1','action','m',33,2),
('John Wick: Chapter 2','5','action','m',28,3),
('John Wick: Chapter 2','5','action','m',34,1),
('John Wick: Chapter 2','4','action','f',27,1),
('John Wick: Chapter 2','4','action','m',38,3),
('John Wick: Chapter 2','4','action','m',41,4),

('Pirates of the Caribbean: Dead Men Tell No Tales','3','action','f',2,2),
('Pirates of the Caribbean: Dead Men Tell No Tales','3','action','m',33,2),
('Pirates of the Caribbean: Dead Men Tell No Tales','3','action','m',28,3),
('Pirates of the Caribbean: Dead Men Tell No Tales','3','action','m',34,1),
('Pirates of the Caribbean: Dead Men Tell No Tales','3','action','f',27,1),
('Pirates of the Caribbean: Dead Men Tell No Tales','2','action','m',38,3),
('Pirates of the Caribbean: Dead Men Tell No Tales','3','action','f',33,3),
('Pirates of the Caribbean: Dead Men Tell No Tales','3','action','m',41,4)
;

/*view dataset from movie_rate  */
select * from movie_rate

/*show all hided file  */
SHOW VARIABLES LIKE "secure_file_priv";

/* export movie_rate db and store at C:\\ProgramData\\MySQL\\MySQL Server 5.7\\Uploads  */
SELECT * 
INTO outfile'C:\\ProgramData\\MySQL\\MySQL Server 5.7\\Uploads\\movie_rate.csv'
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
ESCAPED BY '\\'
LINES TERMINATED BY '\n'
  FROM movie_rate
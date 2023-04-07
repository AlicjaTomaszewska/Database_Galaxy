CREATE TABLE Reports (
    report_code int PRIMARY KEY,
    topic char(100) NOT NULL,
    start_date date,
    deadline date,
    status char(11) NOT NULL DEFAULT 'not started',
	time_consumption smallint,
	result text,
	CONSTRAINT CHK_time_consumption CHECK (time_consumption BETWEEN 1 AND 9999),
	CONSTRAINT CHK_deadline CHECK (deadline >= GETDATE()),
	CONSTRAINT CHK_report_code CHECK (report_code BETWEEN 1 AND 99999),
	CONSTRAINT CHK_status CHECK (status = 'not started' OR status = 'in progress' OR status = 'completed') 
);

CREATE TABLE Plans (
    plan_ID int PRIMARY KEY,
    planned_date_of_observation date,
	goal text NOT NULL,
	planned_time_consumption smallint,
    deadline date NOT NULL,
	CONSTRAINT CHK_planned_time_consumption CHECK (planned_time_consumption BETWEEN 1 AND 9999),
	CONSTRAINT CHECK_deadline CHECK (deadline >= GETDATE()),
	CONSTRAINT CHK_planned_date_of_observation CHECK (planned_date_of_observation >= GETDATE()),
	CONSTRAINT CHK_plan_ID CHECK (plan_ID BETWEEN 1 AND 99999),
	CONSTRAINT CHK_date_of_observation_deadline CHECK (deadline >= planned_date_of_observation)
);

CREATE TABLE Equipments (
    equipment_ID int PRIMARY KEY,
	name char(100) NOT NULL,
    date_of_production date,
	mass int,
	CONSTRAINT CHK_mass CHECK (mass > 0),
	CONSTRAINT CHK_date_of_production CHECK (date_of_production < GETDATE()),
	CONSTRAINT CHK_equipment_ID CHECK (equipment_ID >= 1)
);

CREATE TABLE Persons (
    person_ID int PRIMARY KEY,
	name char(100) NOT NULL,
	surname char(100) NOT NULL,
	date_of_birth date NOT NULL,
	phone_number char(9) UNIQUE,
	gender char(9) NOT NULL,
	type char(7),
	CONSTRAINT CHK_person_ID CHECK (person_ID BETWEEN 1 AND 99999),
	CONSTRAINT CHK_name CHECK (name NOT LIKE '%[0-9!@#$%^&*]%'),
	CONSTRAINT CHK_surname CHECK (surname NOT LIKE '%[0-9!@#$%^&*]%'),
	CONSTRAINT CHK_date_of_birth CHECK (date_of_birth < GETDATE()),
	CONSTRAINT CHK_phone_number CHECK (phone_number LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
	CONSTRAINT CHK_gender CHECK (gender = 'female' OR gender = 'male' OR gender = 'nonbinary'),
	CONSTRAINT CHK_type CHECK (type = 'teacher' OR type = 'student')
);

CREATE TABLE Observed_Objects(
    object_ID int PRIMARY KEY,
    latitude char(10),
    longitude char(10),
	CONSTRAINT CHK_object_ID CHECK (object_ID BETWEEN 1 AND 99999),
	CONSTRAINT CHK_latitude CHECK (latitude LIKE '[-, +][0-9][0-9]⁰[0-9][0-9]’[N, S]'),
	CONSTRAINT CHK_longitude CHECK (longitude LIKE '[0-3][0-9][0-9]⁰[0-9][0-9]’[E, W]')
);

CREATE TABLE Atmospheric_Conditions(
  atmospheric_condition_ID int PRIMARY KEY,
  cloudiness char(6),
  breeziness char(6),
  air_humidity char(6),
  fogging char(6),
  temperature char(5),
  visibility char(6),
  CONSTRAINT CHK_atmospheric_condition_ID CHECK (atmospheric_condition_ID BETWEEN 1 AND 99999),
  CONSTRAINT CHECK_cloudiness CHECK (cloudiness='small' OR cloudiness='medium' OR cloudiness='full'),
  CONSTRAINT CHECK_breeziness CHECK (breeziness='small' OR breeziness='medium' OR breeziness='strong'),
  CONSTRAINT CHECK_air_humidity CHECK (air_humidity='small' OR air_humidity='medium' OR air_humidity='big'),
  CONSTRAINT CHECK_fogging CHECK (fogging='small' OR fogging='medium' OR fogging='big'),
  CONSTRAINT CHECK_temperature CHECK (temperature LIKE '[+, -][0-4][0-9][°][C]'),
  CONSTRAINT CHECK_visibility CHECK (visibility='small' OR visibility='medium' OR visibility='good')
);


CREATE TABLE Observations(
  observation_ID int PRIMARY KEY,
  date_of_observation date,
  starting_hour_of_observation time(0),
  status char(11) DEFAULT 'not started',
  time_consumption smallint,
  report_code int FOREIGN KEY REFERENCES Reports(report_code) ON DELETE SET NULL,
  plan_ID int FOREIGN KEY REFERENCES Plans(plan_ID) ON DELETE SET NULL,
  atmospheric_condition_ID int FOREIGN KEY REFERENCES Atmospheric_Conditions(atmospheric_condition_ID) ON DELETE SET NULL,
  object_ID int NOT NULL FOREIGN KEY REFERENCES Observed_Objects(object_ID),
  CONSTRAINT CHK_observation_ID CHECK (observation_ID BETWEEN 1 AND 99999),
  CONSTRAINT CHK_date_of_observation CHECK (date_of_observation <= GETDATE()),
  CONSTRAINT CHECK_status CHECK (status = 'not started' OR status = 'in progress' OR status = 'completed') ,
  CONSTRAINT CHECK_time_consumption CHECK (time_consumption BETWEEN 1 AND 9999),
);


CREATE TABLE Measurements(
  measurement_ID int PRIMARY KEY,
  distance char(30),
  radius char(30),
  mass char(30),
  volume char(30),
  density char(30),
  average_orbital_speed char(30),
  area char(30),
  object_ID int NOT NULL FOREIGN KEY REFERENCES Observed_Objects(object_ID),
  CONSTRAINT CHK_measurement_ID CHECK (measurement_ID BETWEEN 1 AND 99999),
  CONSTRAINT CHK_distance CHECK (distance NOT LIKE '%[!@#$%&]%'),
  CONSTRAINT CHK_radius CHECK (radius NOT LIKE '%[!@#$%&]%'),
  CONSTRAINT CHECK_mass CHECK (mass NOT LIKE '%[!@#$%&]%'),
  CONSTRAINT CHK_volume CHECK (mass NOT LIKE '%[!@#$%&]%'),
  CONSTRAINT CHK_density CHECK (density NOT LIKE '%[!@#$%&]%'),
  CONSTRAINT CHK_average_orbital_speed CHECK (average_orbital_speed NOT LIKE '%[!@#$%&]%'),
  CONSTRAINT CHK_area CHECK (area NOT LIKE '%[!@#$%&]%'),
);

CREATE TABLE Constellations(
constellation_ID int NOT NULL PRIMARY KEY FOREIGN KEY REFERENCES Observed_Objects(object_ID),
constellation_name char(30) UNIQUE NOT NULL,
brightest_star char(30),
number_of_stars int,
abbreviation char(10) UNIQUE,
CONSTRAINT CHK_constellation_name CHECK (constellation_name NOT LIKE '%[!@#$%^&*]%'),
CONSTRAINT CHK_brightest_star CHECK (brightest_star NOT LIKE '%[!@#$%^&*]%'),
CONSTRAINT CHK_number_of_stars CHECK (number_of_stars > 0),
CONSTRAINT CHK_abbreviation CHECK (abbreviation NOT LIKE '%[!@#$%^&*]%'),
);


CREATE TABLE Stars(
star_ID int NOT NULL PRIMARY KEY FOREIGN KEY REFERENCES Observed_Objects(object_ID),
star_name char(30) UNIQUE NOT NULL,
temperature char(20),
CONSTRAINT CHK_star_name CHECK (star_name NOT LIKE '%[!@#$%^&*]%'),
CONSTRAINT temperature CHECK (temperature NOT LIKE '%[!@#$%^&*A-JL-Za-jl-z]%')
);


CREATE TABLE Galaxies(
galaxy_ID int NOT NULL PRIMARY KEY FOREIGN KEY REFERENCES Observed_Objects(object_ID),
galaxy_name char(30) UNIQUE NOT NULL,
type char(10),
brightness char(10),
CONSTRAINT CHK_galaxy_name CHECK (galaxy_name NOT LIKE '%[!@#$%^&*]%'),
CONSTRAINT CHECK_type CHECK (type = 'spiral' OR type = 'elliptical' OR type = 'peculiar' OR type = 'irregular'),
CONSTRAINT CHK_brightness CHECK (brightness NOT LIKE '%[A-Za-z!@#$%^&*]%'),
);

CREATE TABLE Planetoids(
planetoid_ID int NOT NULL PRIMARY KEY FOREIGN KEY REFERENCES Observed_Objects(object_ID),
planetoid_name char(30) UNIQUE NOT NULL,
planetoid_number int UNIQUE NOT NULL,
date_of_discovery date,
explorer char(50),
galaxy_ID int NOT NULL FOREIGN KEY REFERENCES Galaxies(galaxy_ID),
CONSTRAINT CHK_planetoid_name CHECK (planetoid_name NOT LIKE '%[!@#$%^&*]%'),
CONSTRAINT CHK_planetoid_number CHECK (planetoid_number BETWEEN 1 AND 99999999),
CONSTRAINT CHECK_explorer CHECK (explorer NOT LIKE '%[!@#$%^&*]%'),
CONSTRAINT CHECK_date_of_discovery CHECK (date_of_discovery <= GETDATE()),
);


CREATE TABLE Planets(
planet_ID int NOT NULL PRIMARY KEY FOREIGN KEY REFERENCES Observed_Objects(object_ID),
planet_name char(30) UNIQUE NOT NULL,
type char(20),
star_ID int FOREIGN KEY REFERENCES Stars(star_ID) ON DELETE SET NULL,
galaxy_ID int NOT NULL FOREIGN KEY REFERENCES Galaxies(galaxy_ID),
CONSTRAINT CHK_planet_name CHECK (planet_name NOT LIKE '%[!@#$%^&*]%'),
CONSTRAINT type CHECK (type='Chthonian planet'OR type= 'Carbon planet'OR type='Coreless planet'OR type= 'Desert planet'OR type='Gas dwarf'OR type='Gas giant'OR type= 'Helium planet'OR type='Hycean planet'OR type= 'Ice giant'OR type= 'Ice planet'OR type= 'Iron planet'OR type= 'Lava planet'OR type= 'Ocean planet'OR type= 'Protoplanet'OR type='Puffy planet'OR type= 'Silicate planet'OR type= 'Terrestrial planet')
);

CREATE TABLE Moons(
moon_ID int NOT NULL PRIMARY KEY FOREIGN KEY REFERENCES Observed_Objects(object_ID),
moon_name char(30) UNIQUE NOT NULL,
explorer char(50),
date_of_discovery date,
planet_ID int NOT NULL FOREIGN KEY REFERENCES Planets(planet_ID),
CONSTRAINT CHK_moon_name CHECK (moon_name NOT LIKE '%[!@#$%^&*]%'),
CONSTRAINT CHK_explorer CHECK (explorer NOT LIKE '%[!@#$%^&*]%'),
CONSTRAINT CHK_date_of_discovery CHECK (date_of_discovery <= GETDATE()),
);


CREATE TABLE Need(
equipment_ID int NOT NULL FOREIGN KEY REFERENCES Equipments(equipment_ID) ON DELETE CASCADE ON UPDATE CASCADE,
observation_ID int NOT NULL FOREIGN KEY REFERENCES Observations(observation_ID)  ON DELETE CASCADE ON UPDATE CASCADE,
PRIMARY KEY(equipment_ID , observation_ID)
);


CREATE TABLE Coming_under(
constellation_ID int FOREIGN KEY REFERENCES Constellations(constellation_ID),
galaxy_ID int NOT NULL FOREIGN KEY REFERENCES Galaxies(galaxy_ID),
PRIMARY KEY(constellation_ID, galaxy_ID)
);


CREATE TABLE Belonging(
constellation_ID int FOREIGN KEY REFERENCES Constellations(constellation_ID),
star_ID int NOT NULL FOREIGN KEY REFERENCES Stars(star_ID),
PRIMARY KEY(constellation_ID, star_ID)
);


CREATE TABLE Made_by(
person_ID int NOT NULL FOREIGN KEY REFERENCES persons(person_ID) ON DELETE CASCADE ON UPDATE CASCADE,
observation_ID int FOREIGN KEY REFERENCES Observations(observation_ID) ON DELETE CASCADE ON UPDATE CASCADE,
PRIMARY KEY(person_ID, observation_ID)
);


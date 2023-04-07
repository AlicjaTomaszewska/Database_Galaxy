--1.Find all plans which planned_date_of_observation is the same as date_of_observation
SELECT Plans.plan_ID, Observations.observation_ID, Plans.planned_date_of_observation, Observations.date_of_observation, Plans.goal
FROM Plans
INNER JOIN Observations ON Plans.plan_ID = Observations.plan_ID 
WHERE Plans.planned_date_of_observation = Observations.date_of_observation
ORDER BY planned_date_of_observation DESC;


--2.Find all persons which in particular date of observation used specific equipment.
SELECT  Made_by.person_ID, Persons.name, Persons.surname, Persons.type, Observations.date_of_observation, Need.equipment_ID
FROM Made_by
INNER JOIN Observations ON Made_by.observation_ID = Observations.observation_ID
INNER JOIN Persons ON Made_by.person_ID = Persons.person_ID
INNER JOIN Need ON Need.observation_ID = Observations.observation_ID
WHERE Observations.date_of_observation = '2022-12-17' 
AND Need.equipment_ID = 3;


--3.Find all reports made by person X that are not completed and order them by deadline (the urgency of the task).
SELECT Made_by.person_ID, Persons.name, Persons.Surname, Reports.report_code, Reports.deadline
FROM Observations
INNER JOIN Made_by ON Observations.observation_ID = Made_by.observation_ID
INNER JOIN Reports ON Observations.report_code = Reports.report_code
INNER JOIN Persons ON Persons.person_ID = Made_by.person_ID
WHERE Reports.status!='completed' 
AND Made_by.person_ID = 5
ORDER BY Reports.deadline


--4.Find which students done the most observations and order them by the declining numer of observations.
SELECT Made_by.person_ID, COUNT(observation_ID) How_many_observations
FROM Made_by
INNER JOIN Persons ON Made_by.person_ID = Persons.person_ID
WHERE Persons.type = 'student'
GROUP BY Made_by.person_ID
HAVING COUNT(observation_ID) > 1
ORDER BY COUNT(Made_by.person_ID) DESC;


--5.Find all planets that are in the Milky Way, circle around the Sun and are gas giants.
SELECT planet_ID, planet_name, type
FROM Planets
WHERE type = 'Gas giant' AND
galaxy_ID IN
(SELECT galaxy_ID
FROM Galaxies
WHERE galaxy_name = 'Milky Way')
AND star_ID IN
(SELECT star_ID
FROM Stars
WHERE star_name = 'Sun')

SELECT planet_ID, planet_name, Planets.type
FROM Planets
INNER JOIN Galaxies ON Galaxies.galaxy_ID = Planets.galaxy_ID
INNER JOIN Stars ON Planets.star_ID = Stars.star_ID
WHERE star_name = 'Sun' 
AND galaxy_name = 'Milky Way' 
AND Planets.type = 'Gas giant'


--6.Find all equipment that will not be returned soon because the observation in which that equipment is used is in progress and will not be finished the same day due to the bad atmospheric conditions.
SELECT Equipments.equipment_ID, Equipments.name, Observations.status, Atmospheric_Conditions.fogging, Atmospheric_Conditions.breeziness, Atmospheric_Conditions.visibility, Atmospheric_Conditions.cloudiness
FROM Equipments
INNER JOIN Need ON Need.equipment_ID = Equipments.equipment_ID
INNER JOIN Observations ON Observations.observation_ID = Need.observation_ID
INNER JOIN Atmospheric_Conditions ON Observations.atmospheric_condition_ID = Atmospheric_Conditions.atmospheric_condition_ID
WHERE Observations.status = 'in progress'
AND (visibility = 'small' OR fogging = 'big' OR breeziness = 'strong' OR cloudiness = 'full')


--7.Find which equipment was used most times considering only equipment produced before X date.
SELECT Need.equipment_ID, COUNT(observation_ID) How_Many_Times_Used 
FROM Need
INNER JOIN Equipments ON Need.equipment_ID = Equipments.equipment_ID
WHERE Equipments.date_of_production < '2020-12-31'
GROUP BY Need.equipment_ID
HAVING COUNT(Need.equipment_ID) > 1
ORDER BY COUNT(Need.equipment_ID) DESC;


--8.Find all students whose time-consumption of making observations and writing reports is smaller than average time-consumption
SELECT Made_by.person_ID, Persons.name, Persons.surname, Persons.type
FROM Made_by
INNER JOIN Persons ON Made_by.person_ID = Persons.person_ID
WHERE Persons.type = 'student' AND Made_by.observation_ID IN
	(SELECT observation_ID
		FROM Observations
		WHERE Observations.time_consumption < (SELECT AVG(Observations.time_consumption) FROM Observations)
		AND report_code IN
			(SELECT report_code 
				FROM Reports
				WHERE Reports.time_consumption < (SELECT AVG(Reports.time_consumption) FROM Reports)))


CREATE VIEW [obsAndRepFastWritten] AS
SELECT observation_ID
		FROM Observations
		WHERE Observations.time_consumption < (SELECT AVG(Observations.time_consumption) FROM Observations)
		AND report_code IN
			(SELECT report_code 
				FROM Reports
				WHERE Reports.time_consumption < (SELECT AVG(Reports.time_consumption) FROM Reports))

SELECT* FROM [obsAndRepFastWritten] ;
DROP VIEW [obsAndRepFastWritten];

SELECT Made_by.person_ID, Persons.name, Persons.surname, Persons.type
FROM Made_by
INNER JOIN Persons ON Made_by.person_ID = Persons.person_ID
WHERE Persons.type = 'student' AND Made_by.observation_ID IN (SELECT observation_ID FROM [obsAndRepFastWritten])

SELECT Made_by.person_ID, Persons.name, Persons.surname, Persons.type
FROM Made_by
INNER JOIN Persons ON Made_by.person_ID = Persons.person_ID
INNER JOIN Observations ON Made_by.observation_ID = Observations.observation_ID
INNER JOIN Reports ON Observations.report_code = Reports.report_code
WHERE Persons.type = 'student' AND
Observations.time_consumption < (SELECT AVG(Observations.time_consumption) FROM Observations)  AND
Reports.time_consumption < (SELECT AVG(Reports.time_consumption) FROM Reports)


--9.Find all constellations that comes under Milky Way and their number of stars i bigger than average number of stars forr all constellations in the database, use descending order.
SELECT constellation_name, abbreviation, number_of_stars
FROM Constellations
INNER JOIN Coming_under ON Coming_under.constellation_ID = Constellations.constellation_ID
INNER JOIN Galaxies ON Coming_under.galaxy_ID = Galaxies.galaxy_ID
WHERE galaxy_name = 'Milky Way'
AND number_of_stars > (SELECT AVG(number_of_stars) FROM Constellations)
ORDER BY number_of_stars DESC

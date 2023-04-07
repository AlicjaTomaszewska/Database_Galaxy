INSERT INTO Reports VALUES( 1, 'determining the parameters of Milky Way galaxy', '2022-12-08', '2023-01-13', 'completed', 10, 'all the parameters of Milky Way galaxy were determined');
INSERT INTO Reports VALUES( 2, 'determining the parameters of Andromeda galaxy', '2022-12-07', '2023-01-09', 'completed', 15, 'all the parameters of Andromeda galaxy were determined');
INSERT INTO Reports VALUES( 3, 'determining the parameters of Backward galaxy', NULL, '2023-01-25', 'not started', NULL, NULL);
INSERT INTO Reports VALUES( 4, 'determining the parameters of Orion constellation', '2022-12-11', '2023-01-05', 'completed', 20, 'all the parameters of Orion constellation were determined');
INSERT INTO Reports VALUES( 5, 'determining the parameters of Andromeda constellation', '2022-12-15', '2023-01-10', 'completed', 16, 'all the parameters of Orion constellation were determined');
INSERT INTO Reports VALUES( 6, 'determining the parameters of Virgo constellation', '2022-12-20', '2023-01-09', 'in progress', NULL, NULL);
INSERT INTO Reports VALUES( 7, 'determining the parameters of Spica', '2022-12-15', '2023-01-13', 'completed', 12, 'all the parameters of Spica were determined');
INSERT INTO Reports VALUES( 8, 'determining the parameters of Sun', '2022-12-17', '2023-01-15', 'completed', 21, 'all the parameters of Sun were determined');
INSERT INTO Reports VALUES( 9, 'determining the parameters of Alpheratz', '2022-12-18', '2023-01-16', 'completed', 18, 'all the parameters of Alpheratz were determined');
INSERT INTO Reports VALUES( 10, 'determining the parameters of Saturn', '2022-12-19', '2023-01-27', 'completed', 27, 'all the parameters of Saturn were determined');
INSERT INTO Reports VALUES( 11, 'determining the parameters of Mars', '2022-12-15', '2023-01-23', 'completed', 23, 'all the parameters of Mars were determined');
INSERT INTO Reports VALUES( 12, 'determining the parameters of Mercury', NULL, '2023-01-31', 'not started', NULL, NULL);
INSERT INTO Reports VALUES( 13, 'determining the parameters of Neptune', '2022-12-17', '2023-01-26', 'completed', 21, 'all the parameters of Neptune were determined');
INSERT INTO Reports VALUES( 14, 'determining the parameters of Tytan', '2022-12-16', '2023-01-28', 'completed', 13, 'all the parameters of Tytan were determined');
INSERT INTO Reports VALUES( 15, 'determining the parameters of Tetyda', '2022-12-15', '2023-01-30', 'in progress', NULL, NULL);
INSERT INTO Reports VALUES( 16, 'determining the parameters of Phobos', '2022-12-19', '2023-02-02', 'completed', 11, 'all the parameters of Phobos were determined');
INSERT INTO Reports VALUES( 17, 'determining the parameters of Tryton', '2022-12-20', '2023-02-04', 'completed', 15, 'all the parameters of Tryton were determined');
INSERT INTO Reports VALUES( 18, 'determining the parameters of Niger', '2022-12-21', '2023-02-03', 'in progress', NULL, NULL);
INSERT INTO Reports VALUES( 19, 'determining the parameters of Kelvin', NULL, '2023-02-07', 'not started', NULL, NULL);
INSERT INTO Reports VALUES( 20, 'determining the parameters of Genta', NULL, '2023-02-09', 'not started', NULL, NULL);
SELECT* FROM Reports
UPDATE Reports
SET status = 'not started'
WHERE report_code= 14;


INSERT INTO Plans VALUES( 1, '2022-12-17', 'to measure the parameters of Milky Way galaxy', 25, '2022-12-19');
INSERT INTO Plans VALUES( 2, '2022-12-17', 'to measure the parameters of Andromeda galaxy', 30, '2022-12-19');
INSERT INTO Plans VALUES( 3, '2022-12-17', 'to measure the parameters of Backward galaxy', 27, '2022-12-19');
INSERT INTO Plans VALUES( 4, '2022-12-17', 'to measure the parameters of Orion constellation', 18, '2022-12-19');
INSERT INTO Plans VALUES( 5, '2022-12-18', 'to measure the parameters of Andromeda constellation', 17, '2022-12-23');
INSERT INTO Plans VALUES( 6, '2022-12-20', 'to measure the parameters of Virgo constellation', 15, '2022-12-27');
INSERT INTO Plans VALUES( 7, '2022-12-23', 'to measure the parameters of Spica', 10, '2022-12-29');
INSERT INTO Plans VALUES( 8, '2022-12-25', 'to measure the parameters of Sun', 15, '2022-12-31');
INSERT INTO Plans VALUES( 9, '2022-12-29', 'to measure the parameters of Alpheratz', 14, '2023-01-12');
INSERT INTO Plans VALUES( 10, '2022-12-30', 'to measure the parameters of Saturn', 10, '2023-01-05');
INSERT INTO Plans VALUES( 11, '2022-12-31', 'to measure the parameters of Mars', 13, '2023-01-11');
INSERT INTO Plans VALUES( 12, '2023-01-02', 'to measure the parameters of Mercury', 14, '2023-01-13');
INSERT INTO Plans VALUES( 13, '2023-01-04', 'to measure the parameters of Neptune', 16, '2023-01-15');
INSERT INTO Plans VALUES( 14, '2023-01-06', 'to measure the parameters of Tytan', 18, '2023-01-14');
INSERT INTO Plans VALUES( 15, '2023-01-07', 'to measure the parameters of Tetyda', 11, '2023-01-18');
INSERT INTO Plans VALUES( 16, '2023-01-09', 'to measure the parameters of Phobos', 15, '2023-01-19');
INSERT INTO Plans VALUES( 17, '2023-01-10', 'to measure the parameters of Tryton', 14, '2023-01-22');
INSERT INTO Plans VALUES( 18, '2023-01-13', 'to measure the parameters of Niger planetoid', 12, '2023-01-27');
INSERT INTO Plans VALUES( 19, '2023-01-14', 'to measure the parameters of Kelvin planetoid', 19, '2023-01-28');
INSERT INTO Plans VALUES( 20, '2023-01-16', 'to measure the parameters of Genta planetoid', 23, '2023-01-30');
SELECT* FROM Plans



INSERT INTO Equipments VALUES( 1, 'Teleskop CELESTRON Travel Scope 50','2008-10-27', 10);
INSERT INTO Equipments VALUES( 2, 'LUNETA TERMOWIZYJNA INFIRAY TUBE TH50','2010-08-17', 25);
INSERT INTO Equipments VALUES( 3, 'Teleskop Celestron CPC 1100 GPS XLT', '2011-10-03',38);
INSERT INTO Equipments VALUES( 4, 'LUNETA TERMOWIZYJNA INFIRAY TUBE TL35 V2', '2012-02-19', 55);
INSERT INTO Equipments VALUES( 5, 'Meade LX 600 Teleskop 16','2014-10-29', 14);
INSERT INTO Equipments VALUES( 6, 'Teleskop NexStar Evolution 8 HD StarSense', '2014-12-16', 11);
INSERT INTO Equipments VALUES( 7, 'Celestron Advanced VX 11" SCT7','2016-01-05', 42);
INSERT INTO Equipments VALUES( 8, 'Teleskop Celestron Advanced VX 9,25 SCT','2018-07-04', 18);
INSERT INTO Equipments VALUES( 9, 'Teleskop LEVENHUK Dobsona Ra 250N','2018-05-30', 23);
INSERT INTO Equipments VALUES( 10, 'Teleskop AP 50/200 VESPERA','2019-12-05', 35);
INSERT INTO Equipments VALUES( 11, 'Teleskop Pro Astrograph N 150/420 OTA CEM40-EC','2020-09-08', 15);
INSERT INTO Equipments VALUES( 12, 'Refraktor apochromatyczny AP 80/400 STELLINA', '2020-03-23', 26);
INSERT INTO Equipments VALUES( 13, 'Teleskop Cassegraina Pro CC 154/1848 CEM26 LiteRoc', '2022-01-19', 28);
INSERT INTO Equipments VALUES( 14, 'Teleskop Pro Astrograph N 150/420 OTA CEM26 LiteRoc','2022-05-11', 20);
INSERT INTO Equipments VALUES( 15, 'Teleskop ACF-SC 254/2032 Starlock LX600', '2022-09-24', 33);
SELECT* FROM Equipments


INSERT INTO Persons VALUES( 1, 'Alicja','Tomaszewska', '2002-05-16', '531680460', 'female', 'student');
INSERT INTO Persons VALUES( 2, 'Agnieszka','Kuleta', '2002-05-22', '657432987', 'female', 'student');
INSERT INTO Persons VALUES( 3, 'S³awomir','Wiœniewski', '1975-01-12', '696327895', 'male', 'teacher');
INSERT INTO Persons VALUES( 4, 'Krzysztof','Nowak', '1967-10-26', '763210953', 'male', 'teacher');
INSERT INTO Persons VALUES( 5, 'Anna','Kowalska', '2001-07-04', '621063458', 'female', 'student');
INSERT INTO Persons VALUES( 6, 'Adam','Zieliñski', '1985-09-27', '563219474', 'male', 'teacher');
INSERT INTO Persons VALUES( 7, 'Maria','Witkowska', '2000-11-26', '536203723', 'female', 'student');
INSERT INTO Persons VALUES( 8, 'Alex','Gasin', '1999-08-03', '745321906', 'nonbinary', 'student');
INSERT INTO Persons VALUES( 9, 'Wiktor','Peszka', '1979-02-14', '846532048', 'male', 'teacher');
INSERT INTO Persons VALUES( 10, 'Patrycja','Matuszewska', '1989-11-18', '763315953', 'female', 'teacher');
INSERT INTO Persons VALUES( 11, 'Patrycja','Zych', '2002-04-04', '753097443', 'female', 'student');
INSERT INTO Persons VALUES( 12, 'Julita','Bussler', '2003-05-03', '563219274', 'female', 'teacher');
INSERT INTO Persons VALUES( 13, 'Agata','Fenska', '2002-04-02', '621065258', 'female', 'student');
INSERT INTO Persons VALUES( 14, 'Vanessa','Kuœnierz', '2002-02-15', '563089474', 'male', 'student');
INSERT INTO Persons VALUES( 15, 'Witold','Kamiñski', '1982-12-02', '536410923', 'male', 'teacher');
SELECT* FROM Persons


INSERT INTO Observed_Objects VALUES( 1, '+23°24’S', '323°24’E');
INSERT INTO Observed_Objects VALUES( 2, '+35°54’S', '254°42’E');
INSERT INTO Observed_Objects VALUES( 3, '-67°60’N', '034°49’W');
INSERT INTO Observed_Objects VALUES( 4, '+89°21’N', '194°23’E');
INSERT INTO Observed_Objects VALUES( 5, '-06°29’S', '358°59’W');
INSERT INTO Observed_Objects VALUES( 6, '-78°20’S', '058°36’E');
INSERT INTO Observed_Objects VALUES( 7, '-67°38’N', '128°45’W');
INSERT INTO Observed_Objects VALUES( 8, '+29°34’S', '332°56’E');
INSERT INTO Observed_Objects VALUES( 9, '+39°56’N', '212°41’E');
INSERT INTO Observed_Objects VALUES( 10, '-12°59’N', '028°23’W');
INSERT INTO Observed_Objects VALUES( 11, '+88°26’N', '173°49’E');
INSERT INTO Observed_Objects VALUES( 12, '-08°54’S', '349°58’W');
INSERT INTO Observed_Objects VALUES( 13, '+74°43’S', '028°32’E');
INSERT INTO Observed_Objects VALUES( 14, '-84°57’N', '125°15’W');
INSERT INTO Observed_Objects VALUES( 15, '+35°36’N', '328°34’E');
INSERT INTO Observed_Objects VALUES( 16, '-28°58’S', '254°42’E');
INSERT INTO Observed_Objects VALUES( 17, '-67°60’N', '034°49’W');
INSERT INTO Observed_Objects VALUES( 18, '+89°21’N', '194°23’E');
INSERT INTO Observed_Objects VALUES( 19, '-06°29’S', '358°59’W');
INSERT INTO Observed_Objects VALUES( 20, '-78°47’S', '058°36’E');
SELECT* FROM Observed_Objects



INSERT INTO Atmospheric_Conditions VALUES( 1, 'small', 'strong', 'big', 'medium', '+20°C', 'small');
INSERT INTO Atmospheric_Conditions VALUES( 2, 'full', 'medium', 'big', 'small', '+13°C', 'good');
INSERT INTO Atmospheric_Conditions VALUES( 3, 'medium', 'medium', 'small', 'medium', '-01°C', 'small');
INSERT INTO Atmospheric_Conditions VALUES( 4, 'medium', 'strong', 'big', 'medium', '+22°C', 'good');
INSERT INTO Atmospheric_Conditions VALUES( 5, 'full', 'small', 'small', 'big', '+25°C', 'medium');
INSERT INTO Atmospheric_Conditions VALUES( 6, 'small', 'small', 'big', 'medium', '-07°C', 'medium');
INSERT INTO Atmospheric_Conditions VALUES( 7, 'small', 'medium', 'big', 'medium', '+21°C', 'small');
INSERT INTO Atmospheric_Conditions VALUES( 8, 'full', 'small', 'medium', 'medium', '+07°C', 'good');
INSERT INTO Atmospheric_Conditions VALUES( 9, 'medium', 'medium', 'big', 'big', '+09°C', 'good');
INSERT INTO Atmospheric_Conditions VALUES( 10, 'small', 'strong', 'medium', 'medium', '+14°C', 'good');
INSERT INTO Atmospheric_Conditions VALUES( 11, 'medium', 'strong', 'medium', 'small', '+17°C', 'good');
INSERT INTO Atmospheric_Conditions VALUES( 12, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Atmospheric_Conditions VALUES( 13, 'small', 'small', 'big', 'medium', '+12°C', 'good');
INSERT INTO Atmospheric_Conditions VALUES( 14, 'full', 'medium', 'big', 'small', '-05°C', 'good');
INSERT INTO Atmospheric_Conditions VALUES( 15, 'full', 'medium', 'medium', 'medium', '+09°C', 'good');
INSERT INTO Atmospheric_Conditions VALUES( 16, 'medium', 'medium', 'big', 'big', '+03°C', 'small');
INSERT INTO Atmospheric_Conditions VALUES( 17, 'small', 'small', 'big', 'big', '+07°C', 'medium');
INSERT INTO Atmospheric_Conditions VALUES( 18, 'small', 'strong', 'small', 'medium', '+22°C', 'good');
INSERT INTO Atmospheric_Conditions VALUES( 19, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Atmospheric_Conditions VALUES( 20, 'full', 'medium', 'medium', 'small', '-02°C', 'good');
SELECT* FROM Atmospheric_Conditions



INSERT INTO Observations VALUES( 1, '2022-12-01', '12:35', 'completed', 10, 1, 1, 1, 1);
INSERT INTO Observations VALUES( 2, '2022-12-03', '15:55', 'completed', 15, 2, 2, 2, 2);
INSERT INTO Observations VALUES( 3, '2022-12-09', '11:20', 'in progress', NULL, 3, 3, 3, 3);
INSERT INTO Observations VALUES( 4, '2022-12-05', '11:40', 'completed', 27, 4, 4, 4, 4);
INSERT INTO Observations VALUES( 5, '2022-12-07', '10:25', 'completed', 15, 5, 5, 5, 5);
INSERT INTO Observations VALUES( 6, '2022-12-04', '07:45', 'completed', 13, 6, 6, 6, 6);
INSERT INTO Observations VALUES( 7, '2022-11-29', '10:00', 'completed', 28, 7, 7, 7, 7);
INSERT INTO Observations VALUES( 8, '2022-11-30', '12:25', 'completed', 24, 8, 8, 8, 8);
INSERT INTO Observations VALUES( 9, '2022-12-07', '16:05', 'completed', 17, 9, 9, 9, 9);
INSERT INTO Observations VALUES( 10, '2022-12-08', '13:00', 'completed', 12, 10, 10, 10, 10);
INSERT INTO Observations VALUES( 11, '2022-12-04', '15:50', 'completed', 29, 11, 11, 11, 11);
INSERT INTO Observations VALUES( 12, NULL, NULL, 'not started', NULL, 12, 12, 12, 12);
INSERT INTO Observations VALUES( 13, '2022-12-03', '16:00', 'completed', 23, 13, 13, 13, 13);
INSERT INTO Observations VALUES( 14, '2022-12-02', '14:30', 'completed', 26, 14, 14, 14, 14);
INSERT INTO Observations VALUES( 15, '2022-11-27', '11:35', 'completed', 30, 15, 15, 15, 15);
INSERT INTO Observations VALUES( 16, '2022-12-04', '12:00', 'completed', 21, 16, 16, 16, 16);
INSERT INTO Observations VALUES( 17, '2022-12-08', '15:55', 'completed', 14, 17, 17, 17, 17);
INSERT INTO Observations VALUES( 18, '2022-12-07', '14:00', 'completed',32, 18, 18, 18, 18);
INSERT INTO Observations VALUES( 19, NULL, NULL, 'not started', NULL, 19, 19, 19, 19);
INSERT INTO Observations VALUES( 20, '2022-12-09', '12:35', 'in progress', NULL, 20, 20, 20, 20);
SELECT* FROM Observations
UPDATE Observations
SET status = 'in progress'
WHERE observation_ID = 5;


INSERT INTO Measurements VALUES( 1, '5*10^26 km', '3.6*10^15 km', '3*10^266 kg', '6*10^98 km^3', '8*10^7 kg/m^34', '4*10^18 km/s^667', '9*10^6 km^688', 1);
INSERT INTO Measurements VALUES( 2, '4*10^17 km', '5.9*10^25 km', '2*10^373 kg', '7*10^86 km^3', '7*10^7 kg/m^35', '4*10^18 km/s^235', '9*10^6 km^223', 2);
INSERT INTO Measurements VALUES( 3, '9*10^16 km', '7.5*10^16 km', '4*10^874 kg', NULL, NULL, NULL, NULL, 3);
INSERT INTO Measurements VALUES( 4, '6*10^18 km', '7.9*10^5 km', '9*10^23 kg', '6*10^75 km^3', '9*10^7 kg/m^39', '1*10^18 km/s^27', '9*10^6 km^24', 4);
INSERT INTO Measurements VALUES( 5, '3*10^29 km', '5.9*10^4 km', '8*10^38 kg', '9*10^86 km^3', '2*10^7 kg/m^14', '4*10^18 km/s^28', '1*10^6 km^29', 5);
INSERT INTO Measurements VALUES( 6, '2*10^15 km', '7.9*10^6 km', '4*10^25 kg', '5*10^38 km^3', '1*10^7 kg/m^34', '2*10^18 km/s^33', '2*10^6 km^28', 6);
INSERT INTO Measurements VALUES( 7, '7*10^11 km', '7.1*10^7 km', '1*10^34 kg', '3*10^33 km^3', '4*10^7 kg/m^63', '7*10^18 km/s^27', '9*10^6 km^25', 7);
INSERT INTO Measurements VALUES( 8, '2*10^13 km', '3.3*10^8 km', '4*10^11 kg', '9*10^34 km^3', '5*10^7 kg/m^25', '5*10^18 km/s^32', '8*10^6 km^26', 8);
INSERT INTO Measurements VALUES( 9, '6*10^23 km', '3.6*10^9 km', '6*10^21 kg', '4*10^27 km^3', '7*10^7 kg/m^13', '7*10^18 km/s^29', '9*10^6 km^29', 9);
INSERT INTO Measurements VALUES( 10, '4*10^21 km', '2.9*10^15 km', '9*10^19 kg', '7*10^23 km^3', '2*10^7 kg/m^9', '9*10^18 km/s^28', '2*10^6 km^12', 10);
INSERT INTO Measurements VALUES( 11, '2*10^16 km', '3.0*10^6 km', '7*10^13 kg', '9*10^31 km^3', '6*10^7 kg/m^31', '3*10^18 km/s^24', '3*10^6 km^22', 11);
INSERT INTO Measurements VALUES( 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12);
INSERT INTO Measurements VALUES( 13, '9*10^23 km', '1.9*10^3 km', '2*10^15 kg', '1*10^38 km^3', '6*10^7 kg/m^23', '4*10^18 km/s^22', '5*10^6 km^19', 13);
INSERT INTO Measurements VALUES( 14, '8*10^9 km', '4.9*10^4 km', '1*10^4 kg', '4*10^13 km^3', '8*10^7 kg/m^7', '2*10^18 km/s^13', '4*10^6 km^21', 14);
INSERT INTO Measurements VALUES( 15, '4*10^10 km', '1.3*10^5 km', '3*10^9 kg', '2*10^14 km^3', '5*10^7 kg/m^4', '9*10^18 km/s^9', '9*10^6 km^18', 15);
INSERT INTO Measurements VALUES( 16, '5*10^14 km', '3.7*10^8 km', '4*10^5 kg', '7*10^17 km^3', '4*10^7 kg/m^3', '4*10^18 km/s^8', '6*10^6 km^12', 16);
INSERT INTO Measurements VALUES( 17, '7*10^15 km', '3.1*10^2 km', '5*10^6 kg', '8*10^31 km^3', '2*10^7 kg/m^2', '1*10^18 km/s^4', '8*10^6 km^14', 17);
INSERT INTO Measurements VALUES( 18, '4*10^17 km', '6.6*10^3 km', '7*10^5 kg', '3*10^18 km^3', '5*10^7 kg/m^3', '3*10^18 km/s^3', '9*10^6 km^9', 18);
INSERT INTO Measurements VALUES( 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19);
INSERT INTO Measurements VALUES( 20, '5*10^19 km', '5.8*10^4 km', '9*10^8 kg', NULL, NULL, '4*10^8 km/s^2', '9*10^7 km^2', 20);
SELECT* FROM Measurements

INSERT INTO Constellations VALUES( 4, 'Orion',  'Rigel', 987, 'Ori');
INSERT INTO Constellations VALUES( 5, 'Andromeda',  'Alpheratz', 1303, 'And');
INSERT INTO Constellations VALUES( 6, 'Virgo',  'Spica', 96, 'Vir');
SELECT* FROM Constellations
UPDATE Constellations
SET number_of_stars = 987
WHERE constellation_ID= 4;

INSERT INTO Stars VALUES( 7, 'Spica',  '+24000K');
INSERT INTO Stars VALUES( 8, 'Sun',  '+5778K');
INSERT INTO Stars VALUES( 9, 'Alpheratz',  '+13000K');
SELECT* FROM Stars


INSERT INTO Galaxies VALUES( 1, 'Milky Way', 'spiral', '20.2');
INSERT INTO Galaxies VALUES( 2, 'Andromeda', 'spiral', '21.5');
INSERT INTO Galaxies VALUES( 3, 'Backward', 'spiral', '19.4');
SELECT* FROM Galaxies



INSERT INTO Planets VALUES( 10, 'Saturn',  'Gas giant', 8, 1);
INSERT INTO Planets VALUES( 11, 'Mars',  'Terrestrial planet', 8, 1);
INSERT INTO Planets VALUES( 12, 'Mercury',  'Terrestrial planet', 8, 1);
INSERT INTO Planets VALUES( 13, 'Neptune',  'Gas giant', 8, 1);
SELECT* FROM Planets


INSERT INTO Moons VALUES( 14, 'Tytan', 'Christiaan Huygens', '1655-03-25', 10);
INSERT INTO Moons VALUES( 15, 'Tetyda', 'Giovanni Cassini', '1684-03-21', 10);
INSERT INTO Moons VALUES( 16, 'Phobos', 'Asaph Hall', '1877-08-18', 11);
INSERT INTO Moons VALUES( 17, 'Tryton', 'William Lassell', '1846-10-10', 13);
SELECT* FROM Moons

INSERT INTO Planetoids VALUES( 18, 'Niger', '8766', '1973-09-29', 'Cornelis van Houten', 1);
INSERT INTO Planetoids VALUES( 19, 'Kelvin', '8003', '1987-09-01', 'Eric Elst', 1);
INSERT INTO Planetoids VALUES( 20, 'Genta', '8824', '1988-01-18', 'Masanori Matsuyama', 1);
SELECT* FROM Planetoids

INSERT INTO Need VALUES(3, 1);
INSERT INTO Need VALUES(4, 2);
INSERT INTO Need VALUES(9, 2);
INSERT INTO Need VALUES(10, 3);
INSERT INTO Need VALUES(3, 4);
INSERT INTO Need VALUES(5, 5);
INSERT INTO Need VALUES(12, 6);
INSERT INTO Need VALUES(15, 7);
INSERT INTO Need VALUES(14, 8);
INSERT INTO Need VALUES(10, 9);
INSERT INTO Need VALUES(11, 10);
INSERT INTO Need VALUES(13, 10);
INSERT INTO Need VALUES(12, 11);
INSERT INTO Need VALUES(2, 12);
INSERT INTO Need VALUES(7, 13);
INSERT INTO Need VALUES(10, 14);
INSERT INTO Need VALUES(8, 15);
INSERT INTO Need VALUES(9, 16);
INSERT INTO Need VALUES(1, 17);
INSERT INTO Need VALUES(12, 18);
INSERT INTO Need VALUES(9, 19);
INSERT INTO Need VALUES(9, 20);
SELECT* FROM Need

INSERT INTO Coming_under VALUES(4, 1);
INSERT INTO Coming_under VALUES(5, 1);
INSERT INTO Coming_under VALUES(5, 2);
INSERT INTO Coming_under VALUES(6, 1);
SELECT* FROM Coming_under

INSERT INTO Belonging VALUES(6, 7);
INSERT INTO Belonging VALUES(5, 9);
SELECT* FROM Belonging

INSERT INTO Made_by VALUES(14, 1);
INSERT INTO Made_by VALUES(13, 1);
INSERT INTO Made_by VALUES(3, 1);
INSERT INTO Made_by VALUES(5, 2);
INSERT INTO Made_by VALUES(5, 3);
INSERT INTO Made_by VALUES(6, 4);
INSERT INTO Made_by VALUES(4, 5);
INSERT INTO Made_by VALUES(9, 6);
INSERT INTO Made_by VALUES(15, 7);
INSERT INTO Made_by VALUES(1, 7);
INSERT INTO Made_by VALUES(13, 8);
INSERT INTO Made_by VALUES(2, 9);
INSERT INTO Made_by VALUES(10, 9);
INSERT INTO Made_by VALUES(8, 10);
INSERT INTO Made_by VALUES(11, 11);
INSERT INTO Made_by VALUES(12, 12);
INSERT INTO Made_by VALUES(15, 13);
INSERT INTO Made_by VALUES(5, 14);
INSERT INTO Made_by VALUES(8, 15);
INSERT INTO Made_by VALUES(1, 16);
INSERT INTO Made_by VALUES(2, 17);
INSERT INTO Made_by VALUES(3, 18);
INSERT INTO Made_by VALUES(7, 19);
INSERT INTO Made_by VALUES(10, 20);
SELECT* FROM Made_by





DROP TABLE IF EXISTS Region;
DROP TABLE IF EXISTS EO;
DROP TABLE IF EXISTS Person;
DROP TABLE IF EXISTS Ukr;
DROP TABLE IF EXISTS Hist;
DROP TABLE IF EXISTS Math;
DROP TABLE IF EXISTS Phys;
DROP TABLE IF EXISTS Chem;
DROP TABLE IF EXISTS Bio;
DROP TABLE IF EXISTS Geo;
DROP TABLE IF EXISTS Eng;
DROP TABLE IF EXISTS Fra;
DROP TABLE IF EXISTS Deu;
DROP TABLE IF EXISTS Spa;

CREATE TABLE Region (
	Region_index	SERIAL,
	REGNAME	TEXT,
	AREANAME	TEXT,
	TERNAME	TEXT,
	TerTypeName	TEXT,
	PRIMARY KEY (Region_index)
);

CREATE TABLE EO (
    EO_index SERIAL,
	EONAME	TEXT,
	EOTYPENAME	TEXT,
	EORegName	TEXT,
	EOAreaName	TEXT,
	EOTerName	TEXT,
	EOParent	TEXT,
	PRIMARY KEY (EO_index)
);

CREATE TABLE Person (
	OUTID	TEXT,
	Birth	INTEGER,
	SEXTYPENAME	TEXT,
	Year	INTEGER,
	Region_index	SERIAL,
	REGTYPENAME	TEXT,
	ClassProfileNAME	TEXT,
	ClassLangName	TEXT,
	EO_index	SERIAL,
	PRIMARY KEY (OUTID),
	FOREIGN KEY (Region_index) REFERENCES Region (Region_index),
	FOREIGN KEY (EO_index) REFERENCES EO (EO_index)
);

CREATE TABLE Ukr (
	OUTID	TEXT,
	UkrTest	TEXT,
	UkrTestStatus	TEXT,
	UkrBall100	VARCHAR(255),
	UkrBall12	VARCHAR(255),
	UkrBall	VARCHAR(255),
	UkrAdaptScale	FLOAT,
	UkrPTName	TEXT,
	UkrPTRegName	TEXT,
	UkrPTAreaName	TEXT,
	UkrPTTerName	TEXT,
	PRIMARY KEY (OUTID, UkrTest),
	FOREIGN KEY (OUTID) REFERENCES Person (OUTID)
);

CREATE TABLE Hist (
	OUTID	TEXT,
	histTest	TEXT,
	HistLang	TEXT,
	histTestStatus	TEXT,
	histBall100	VARCHAR(255),
	histBall12	VARCHAR(255),
	histBall	VARCHAR(255),
	histPTName	TEXT,
	histPTRegName	TEXT,
	histPTAreaName	TEXT,
	histPTTerName	TEXT,
	PRIMARY KEY (OUTID, histTest),
	FOREIGN KEY (OUTID) REFERENCES Person (OUTID)
);

CREATE TABLE Math (
	OUTID	TEXT,
	mathTest	TEXT,
	mathLang	TEXT,
	mathTestStatus	TEXT,
	mathBall100	VARCHAR(255),
	mathBall12	VARCHAR(255),
	mathBall	VARCHAR(255),
	mathPTName	TEXT,
	mathPTRegName	TEXT,
	mathPTAreaName	TEXT,
	mathPTTerName	TEXT,
	PRIMARY KEY (OUTID, mathTest),
	FOREIGN KEY (OUTID) REFERENCES Person (OUTID)
);

CREATE TABLE Phys (
	OUTID	TEXT,
	physTest	TEXT,
	physLang	TEXT,
	physTestStatus	TEXT,
	physBall100	VARCHAR(255),
	physBall12	VARCHAR(255),
	physBall	VARCHAR(255),
	physPTName	TEXT,
	physPTRegName	TEXT,
	physPTAreaName	TEXT,
	physPTTerName	TEXT,
	PRIMARY KEY (OUTID, physTest),
	FOREIGN KEY (OUTID) REFERENCES Person (OUTID)
);


CREATE TABLE Chem (
	OUTID	TEXT,
	chemTest	TEXT,
	chemLang	TEXT,
	chemTestStatus	TEXT,
	chemBall100	VARCHAR(255),
	chemBall12	VARCHAR(255),
	chemBall	VARCHAR(255),
	chemPTName	TEXT,
	chemPTRegName	TEXT,
	chemPTAreaName	TEXT,
	chemPTTerName	TEXT,
	PRIMARY KEY (OUTID, chemTest),
	FOREIGN KEY (OUTID) REFERENCES Person (OUTID)
);

CREATE TABLE Bio (
	OUTID	TEXT,
	bioTest	TEXT,
	bioLang	TEXT,
	bioTestStatus	TEXT,
	bioBall100	VARCHAR(255),
	bioBall12	VARCHAR(255),
	bioBall	VARCHAR(255),
	bioPTName	TEXT,
	bioPTRegName	TEXT,
	bioPTAreaName	TEXT,
	bioPTTerName	TEXT,
	PRIMARY KEY (OUTID, bioTest),
	FOREIGN KEY (OUTID) REFERENCES Person (OUTID)
);

CREATE TABLE Geo (
	OUTID	TEXT,
	geoTest	TEXT,
	geoLang	TEXT,
	geoTestStatus	TEXT,
	geoBall100	VARCHAR(255),
	geoBall12	VARCHAR(255),
	geoBall	VARCHAR(255),
	geoPTName	TEXT,
	geoPTRegName	TEXT,
	geoPTAreaName	TEXT,
	geoPTTerName	TEXT,
	PRIMARY KEY (OUTID, geoTest),
	FOREIGN KEY (OUTID) REFERENCES Person (OUTID)
);

CREATE TABLE Eng (
	OUTID	TEXT,
	engTest	TEXT,
	engTestStatus	TEXT,
	engBall100	VARCHAR(255),
	engBall12	VARCHAR(255),
	engDPALevel	TEXT,
	engBall	VARCHAR(255),
	engPTName	TEXT,
	engPTRegName	TEXT,
	engPTAreaName	TEXT,
	engPTTerName	TEXT,
	PRIMARY KEY (OUTID, engTest),
	FOREIGN KEY (OUTID) REFERENCES Person (OUTID)
);

CREATE TABLE Fra (
	OUTID	TEXT,
	fraTest	TEXT,
	fraTestStatus	TEXT,
	fraBall100	VARCHAR(255),
	fraBall12	VARCHAR(255),
	fraDPALevel	TEXT,
	fraBall	VARCHAR(255),
	fraPTName	TEXT,
	fraPTRegName	TEXT,
	fraPTAreaName	TEXT,
	fraPTTerName	TEXT,
	PRIMARY KEY (OUTID, fraTest),
	FOREIGN KEY (OUTID) REFERENCES Person (OUTID)
);

CREATE TABLE Deu (
	OUTID	TEXT,
	deuTest	TEXT,
	deuTestStatus	TEXT,
	deuBall100	VARCHAR(255),
	deuBall12	VARCHAR(255),
	deuDPALevel	TEXT,
	deuBall	VARCHAR(255),
	deuPTName	TEXT,
	deuPTRegName	TEXT,
	deuPTAreaName	TEXT,
	deuPTTerName	TEXT,
	PRIMARY KEY (OUTID, deuTest),
	FOREIGN KEY (OUTID) REFERENCES Person (OUTID)
);

CREATE TABLE Spa (
	OUTID	TEXT,
	spaTest	TEXT,
	spaTestStatus	TEXT,
	spaBall100	VARCHAR(255),
	spaBall12	VARCHAR(255),
	spaDPALevel	TEXT,
	spaBall	VARCHAR(255),
	spaPTName	TEXT,
	spaPTRegName	TEXT,
	spaPTAreaName	TEXT,
	spaPTTerName	TEXT,
	PRIMARY KEY (OUTID, spaTest),
	FOREIGN KEY (OUTID) REFERENCES Person (OUTID)
);
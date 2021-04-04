""" Лабораторна робота №1. Орєхова Вікторія, КМ-82.
    Варіант №7
    Завдання. Порівняти найкращий бал з Математики у 2020 та 2019 роках серед тих кому було зараховано тест.
"""
import psycopg2
import psycopg2.errorcodes
import csv

# з'єднання з базою даних
connection = psycopg2.connect(
            host = "localhost",
            database="postgres",
            user = "postgres",
            password = "postgreadminSQL",
            port = "5432")
cursor = connection.cursor()

# видалення таблиці, якщо така існує
cursor.execute("DROP TABLE IF EXISTS ZNO;")
cursor.execute("DROP TABLE IF EXISTS Task;")

# створення таблиці
query1 = '''
CREATE TABLE ZNO (
	OUTID	TEXT	NOT NULL	PRIMARY KEY, 
	Birth	INTEGER		NOT NULL,	
	SEXTYPENAME	TEXT	NOT NULL,	
	REGNAME	TEXT	NOT NULL,	
	AREANAME	TEXT	NOT NULL,	
	TERNAME TEXT	NOT NULL,	
	REGTYPENAME	TEXT	NOT NULL,	
	TerTypeName	TEXT	NOT NULL,	
	ClassProfileNAME	TEXT,	
	ClassLangName	TEXT,	
	EONAME	TEXT,	
	EOTYPENAME	TEXT,	
	EORegName	TEXT,	
	EOAreaName	TEXT,	
	EOTerName	TEXT,	
	EOParent	TEXT,	
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
	Year    INTEGER     NOT NULL    	
);
'''
cursor.execute(query1)

# додавання даних з першого csv файлу у таблицю
cursor.execute("COPY ZNO FROM 'D:\DBIS\Odata2019File.csv' DELIMITER ';' CSV NULL '' HEADER ENCODING 'win1251';")

# додавання даних з другого csv файлу у таблицю
cursor.execute("COPY ZNO FROM 'D:\DBIS\Odata2020File.csv' DELIMITER ';' CSV NULL '' HEADER ENCODING 'win1251';")

# виконання завдання відповідно до варіанту
query2 = '''
SELECT REGNAME AS "Область", Year AS "Рік", max(mathBall100) AS "Максимальний бал" INTO Task1
FROM ZNO
WHERE mathTestStatus = 'Зараховано' 
GROUP BY REGNAME, Year;
'''
cursor.execute(query2)

# запис результату виконаного завдання у csv файл
table = ['Task1']
for t in table:
    with open(t + '.csv', 'w', newline = '') as csvfile:
        cursor.execute('SELECT * FROM ' + t)
        row = cursor.fetchone()
        writeCSV = csv.writer(csvfile, delimiter=',')

        while row:
            writeCSV.writerow(row)
            row = cursor.fetchone()

connection.commit()
cursor.close()
connection.close()

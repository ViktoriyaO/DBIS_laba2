""" Лабораторна робота №2. Орєхова Вікторія, КМ-82.
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

# виконання завдання відповідно до варіанту
query = '''
SELECT Region.REGNAME AS "Область", Person.Year AS "Рік", max(Math.mathBall100) AS "Максимальний бал" INTO Task2
FROM Math JOIN Person ON
    Math.OUTID = Person.OUTID 
JOIN Region ON Person.Region_index = Region.Region_index
WHERE Math.mathTestStatus = 'Зараховано' 
GROUP BY Region.REGNAME, Person.Year;
'''
cursor.execute(query)

# запис результату виконаного завдання у csv файл
table = ['Task2']
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

# DBIS_laba2
# Інструкція по запуску роботи
1. Завантажити flyway.conf та V1__Create.sql у відповідні папки у flyway.
2. Запустити flyway через командний рядок (команда: flyway migrate).
3. Завантажити main1.py, main2.py у папку, в якій міститься папка flyway; V2__Migrate.sql у відповідну папку(sql) у flyway.
4. Запустити main1.py (програма з комп'ютерного практикуму 1, яка створює таблицю ZNO, запонює її даними та виконує завдання відповідно до варіанту).
5. Запустити flyway через командний рядок (команда: flyway migrate).
6. Запустити програму main2.py, яка виконає завдання відповідно до варіанту, використовуючи мігровану базу даних.
7. Результати виконання обох програм запишуться у csv файли Task1.csv і Task2.csv відповідно.
8. Відкривши і порівнявши файли, можна побачити, що вони однакові.

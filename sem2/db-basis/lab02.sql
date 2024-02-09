/*####################WEEK#END#DEVELOPMENT######################
file:         lab02.sql
autor:        BO$
date:         15.03.2022
version:      0x0002
copyrights:   All rights reserved (c) 2024 Week-End Development
================================================================
TASK TOPIC:   Podstawowe operacje SQL
######################WEEK#END#DEVELOPMENT####################*/
-- #01. Wyświetl całą zawartość tabeli departments.
SELECT * FROM departments;
-- #02. Wyświetl tylko nazwy departamentów z tabeli departments.
SELECT department_name FROM departments;
-- #03. Wyświetl bez powtórzeń id wszystkich departamentów z tabeli employees i posortuj je malejąco.
SELECT department_id FROM employees GROUP BY department_id ORDER BY department_id DESC;
-- #04. Wyświetl wszystkich pracowników których przełożonym jest manager o id 102 (z tabeli employees)
SELECT * FROM employees WHERE manager_id = 102;
-- #05. Wyświetl wszystkich pracowników zarabiających więcej niż 60000 rocznie.
SELECT * FROM employees WHERE salary*12 > 60000;
-- #06. Wyświetl wszystkich którzy zarabiają więcej niż 80 tyś ale mniej niż 110 tyś rocznie.
SELECT * FROM employees WHERE salary*12 BETWEEN 80001 AND 109999;
-- #07. Wyświetl wszystkich którzy zarabiają miesięcznie więcej niż 7000$ ale mniej niż 10000$.
SELECT * FROM employees WHERE salary BETWEEN 7001 AND 9999;
-- #08. Wyświetl wszystkich pracowników których imię kończy się na a.
SELECT * FROM employees WHERE first_name LIKE '%a';
-- #09. Wyświetl wszystkich których nazwiska mają w środku literę a i jednocześnie zarabiają więcej niż 80000 dolarów rocznie.
SELECT * FROM employees WHERE last_name LIKE '_%a%_' AND salary*12 > 80000;
-- #10. Wyświetl tych których przełożonymi są managerowie o id 101 i 123.
SELECT * FROM employees WHERE manager_id in(101, 123);
-- #11. Zaokrąglij zarobki pracowników (salary) do wartości tysięcznych i wyświetli tylko wartość w tysiącach np. dla wartości 12008 powinno być 12, a dla 2600 powinno być 3.
SELECT last_name, ROUND(salary/1000, 0) FROM employees;
--####################WEEK#END#DEVELOPMENT######################
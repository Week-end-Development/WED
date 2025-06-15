```yaml
title: "ZAAWANSOWANE SYSTEMY BAZ DANYCH - CHEAT SHEET"
date: 2025-06-16
license: "CC-BY-SA-4.0"
team: "WEEK-END DEVELOPMENT"
```
# ZAAWANSOWANE SYSTEMY BAZ DANYCH - CHEAT SHEET

> [!CAUTION]
> **WEEK-END DEVELOPMENT** *Nie gwarantuje poprawności informacji!*


- [ZAAWANSOWANE SYSTEMY BAZ DANYCH - CHEAT SHEET](#zaawansowane-systemy-baz-danych---cheat-sheet)
  - [TIDY DATA](#tidy-data)
  - [BAZA RELACYJNA](#baza-relacyjna)
    - [Podstawowe komendy SQL](#podstawowe-komendy-sql)
  - [BAZA TYPU KLUCZ-WARTOŚĆ (KEY-VALUE)](#baza-typu-klucz-wartość-key-value)
    - [Klucz (Key)](#klucz-key)
    - [Wartość (Value)](#wartość-value)
    - [ZASTOSOWANIA](#zastosowania)
    - [ZALETY](#zalety)
    - [WADY](#wady)
    - [REDIS](#redis)
      - [Redis - komendy](#redis---komendy)
  - [BAZY PLIKOWE - *DOKUMENTOWE*](#bazy-plikowe---dokumentowe)
    - [ZASTOSOWANIE](#zastosowanie)
    - [Zalety:](#zalety-1)
    - [Wady:](#wady-1)
    - [MongoDB](#mongodb)
  - [Business Intelligence (BI)](#business-intelligence-bi)
    - [Historia i ewolucja:](#historia-i-ewolucja)
    - [Współczesne BI:](#współczesne-bi)
    - [Przykładowe narzędzia:](#przykładowe-narzędzia)
  - [OLTP vs OLAP](#oltp-vs-olap)
    - [OLTP – On-Line Transaction Processing (operacyjne)](#oltp--on-line-transaction-processing-operacyjne)
    - [OLAP – On-Line Analytical Processing (analityczne)](#olap--on-line-analytical-processing-analityczne)
    - [Porównanie:](#porównanie)
  - [PORÓWNANIE TYPÓW BAZ DANYCH](#porównanie-typów-baz-danych)
    - [Uwagi końcowe:](#uwagi-końcowe)
  - [PYTHON](#python)
    - [PANDAS](#pandas)
    - [MATPLOTLIB.PYPLOT](#matplotlibpyplot)
    - [SEABORN](#seaborn)
    - [PLOTLY.EXPRESS](#plotlyexpress)
    - [ORACLE - CONN - PYTHON](#oracle---conn---python)
    - [MONGO\_DB - PYTHON](#mongo_db---python)
    - [REDIS - PYTHON](#redis---python)

## TIDY DATA
Model Tidy Data to standard organizacji danych:
* **Zmienna -> kolumna**
* **Obserwacja -> wiersz**
* **Typ jednostki -> tabela**

**Messy data** to dane niezgodne z tym układem (np. zmienne jako nagłówki, wiele zmiennych w jednej kolumnie itp.).

**Zalety Tidy Data:**
* Ułatwia analizę, wizualizację i modelowanie.
* Wspiera automatyzację i standaryzację narzędzi.
* Opiera się na koncepcji 3. postaci normalnej.

## BAZA RELACYJNA
**Baza relacyjna** to system przechowywania danych w postaci tabel (relacji), gdzie dane są uporządkowane w wierszach i kolumnach, a między tabelami mogą istnieć relacje (np. klucze obce). Dane mają ściśle określony schemat (typy, struktura, ograniczenia) i przestrzegają zasad ACID (atomowość, spójność, izolacja, trwałość).

### Podstawowe komendy SQL
```sql
-- DB STRUCT - TABLE
CREATE TABLE users (
  id INT PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(100) UNIQUE
);

ALTER TABLE users ADD COLUMN created_at DATE;
DROP TABLE users;

-- CREATE
INSERT INTO users (id, name, email) VALUES (1, 'Anna', 'anna@example.com');

-- READ
SELECT * FROM users;
SELECT name FROM users WHERE email LIKE '%@example.com';

-- UPDATE
UPDATE users SET name = 'Jan' WHERE id = 1;

-- DELETE
DELETE FROM users WHERE id = 1;

-- RELATIONS
SELECT orders.id, users.name FROM orders JOIN users ON orders.user_id = users.id;
```

## BAZA TYPU KLUCZ-WARTOŚĆ (KEY-VALUE)
Prosty model baz danych, gdzie każdemu unikalnemu kluczowi przypisana jest jedna wartość (np. liczba, tekst, JSON, obraz).

> [!NOTE]  
> To jest tylko podgląd. [Pełna wersja znajduje się tutaj](https://github.com/Week-end-Development/WED-pro/blob/main/msc/semester01/database_systems_dump_s.pl.md) i jest dostępna dla osób zaangażowanych w projekt.

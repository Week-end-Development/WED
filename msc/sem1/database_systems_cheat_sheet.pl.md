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

### Klucz (Key)
* Unikalny identyfikator (np. `anna`, `2022-02-22`, `user:123`, `UUID`)
* Może być generowany automatycznie lub obliczany
* Zaleca się krótkie klucze (lepsza wydajność)

### Wartość (Value)
* Dane powiązane z kluczem (np. tekst, liczba, JSON, obraz)
* Operacje: **SET**, **GET**, **DEL**
* Brak ograniczeń typu danych, ale istnieją limity rozmiaru (np. w Redis)

### ZASTOSOWANIA
- Cache (np. sesje użytkowników)
- Kolejki (np. Celery, RabbitMQ)
- Liczniki i rankingi (np. top 10 graczy)
- DynamoDB AWS

### ZALETY
- Bardzo szybki dostęp do danych (RAM)
- Prosta struktura i obsługa (GET, SET, DEL)
- Łatwa skalowalność (np. Redis Cluster)

### WADY
- Brak relacji i złożonych zapytań (JOIN, WHERE itp.)
- Ograniczone możliwości analizy danych

### REDIS
- Działa w pamięci (RAM) z opcją zapisu na dysku (RDB/AOF)
- Obsługuje różne typy danych: string, list, set, hash, zset
- Wspiera Pub/Sub, klastrowanie i wysoką dostępność (Sentinel)

#### Redis - komendy

| Komenda          | Opis                                        |
| ---------------- | ------------------------------------------- |
| `SET key value`  | Ustawia wartość dla klucza                  |
| `GET key`        | Pobiera wartość przypisaną do klucza        |
| `DEL key`        | Usuwa klucz i jego wartość                  |
| `INCR key`       | Zwiększa wartość numeryczną o 1             |
| `DECR key`       | Zmniejsza wartość numeryczną o 1            |
| `EXISTS key`     | Sprawdza, czy klucz istnieje (`1` lub `0`)  |
| `EXPIRE key sec` | Ustawia czas życia (TTL) klucza w sekundach |
| `TTL key`        | Sprawdza pozostały czas życia klucza        |
| `FLUSHALL`       | Usuwa wszystkie dane z bazy (ostrożnie!)    |


## BAZY PLIKOWE - *DOKUMENTOWE*
* Przechowują dane w **dokumentach JSON/BSON**, zgrupowanych w **kolekcje** (jak tabele w SQL).
* Każdy dokument to niezależny obiekt z parami **klucz–wartość**.
* Umożliwiają **elastyczną strukturę** – dokumenty w jednej kolekcji mogą się różnić (tzw. polimorfizm).

### ZASTOSOWANIE
- aplikacje webowe,
- logi,
- profile użytkowników,
- dynamiczne dane z częstymi zmianami schematu.

### Zalety:
* Brak wymuszonego schematu (duża elastyczność)
* Prosta obsługa i rozwój (szczególnie w aplikacjach webowych)
* Skalowalność pozioma (sharding)

### Wady:
* Mniejsza spójność danych (brak pełnego ACID)
* Nieoptymalne dla ściśle ustrukturyzowanych danych (np. finanse)
* Walidacja danych po stronie aplikacji

### MongoDB
* Przechowuje dane w formacie **BSON** (rozszerzony JSON)
* Obsługuje typy: `string`, `int`, `array`, `object`, `date`, `boolean`, `null`
* Wspiera agregacje, replikację, sharding, zapytania złożone
* Klienty m.in. dla Pythona (`pymongo`), Node.js, CLI (`mongo`)

> [!NOTE]  
> To jest tylko podgląd. [Pełna wersja znajduje się tutaj](https://github.com/Week-end-Development/WED-pro/blob/main/msc/semester01/database_systems_dump_s.pl.md) i jest dostępna dla osób zaangażowanych w projekt.

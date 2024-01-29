```yaml
title:        "Testowanie aplikacji i systemów"
author:       ["BO$"]
date:         29.01.2024
keywords:     ["testowanie", "testowanie aplikacji"]
tags:         ["notes"]
categories:   ["semester5", "summary"]
comment:      "Zagadnienia do zaliczenia."
copyright:    "All rights reserved (c) 2024 WEEK-END DEVELOPMENT"
organization: "WEEK-END DEVELOPMENT"
status:       "in-progress"
version:      1.0
```
```
       All rights reserved (c) 2024 Week-End Development
██╗    ██╗███████╗███████╗██╗  ██╗     ███████╗███╗   ██╗██████╗
██║    ██║██╔════╝██╔════╝██║ ██╔╝     ██╔════╝████╗  ██║██╔══██╗
██║ █╗ ██║█████╗  █████╗  █████╔╝█████╗█████╗  ██╔██╗ ██║██║  ██║
██║███╗██║██╔══╝  ██╔══╝  ██╔═██╗╚════╝██╔══╝  ██║╚██╗██║██║  ██║
╚███╔███╔╝███████╗███████╗██║  ██╗     ███████╗██║ ╚████║██████╔╝
 ╚══╝╚══╝ ╚══════╝╚══════╝╚═╝  ╚═╝     ╚══════╝╚═╝  ╚═══╝╚═════╝
      ██████╗ ███████╗██╗   ██╗███████╗
      ██╔══██╗██╔════╝██║   ██║██╔════╝
      ██║  ██║█████╗  ██║   ██║███████╗
      ██║  ██║██╔══╝  ╚██╗ ██╔╝╚════██║
      ██████╔╝███████╗ ╚████╔╝ ███████║
      ╚═════╝ ╚══════╝  ╚═══╝  ╚══════╝   PRESENT:
```
# Notatki z wykładów testowanie aplikacji i systemów

> [!WARNING]
> ***MOŻLIWE BŁĘDY I NIEDOSKONAŁOŚCI***
>
> Plik może zawierać **błędy** i **być niekompletny** z powodu ograniczonej kadry, czasu i niewielkiego udziału studentów. Zaleca się ostrożność i dodatkową weryfikację, a także zachęca do kontaktu w razie pytań lub uwag.


# TESTY
## FUNKCJONALNE
Testy funkcjonalne koncentrują się na badaniu elementów systemu pod kątem poprawności funkcjonalności. Obejmują następujące aspekty:
1. **Weryfikacja komunikatów:** Sprawdzanie poprawności wyświetlanych komunikatów w interfejsie użytkownika.
2. **Komunikacja aplikacji z serwerem:** Testowanie poprawności i efektywności komunikacji pomiędzy aplikacją a serwerem.
3. **Działanie funkcjonalności:** Ocena, czy poszczególne funkcjonalności działają zgodnie z założeniami i specyfikacjami.

## NIEFUNKCJONALNE
Testy niefunkcjonalne skupiają się na różnych aspektach działania systemu, niekoniecznie związanych z konkretnymi funkcjonalnościami. Obejmują następujące rodzaje:
1. **Testy obciążeniowe:** Sprawdzanie, jak aplikacja radzi sobie podczas działania w warunkach dużej liczby użytkowników lub dużej ilości danych.
2. **Testy wydajnościowe:** Ocena czasów odpowiedzi, szybkości działania i ogólnej wydajności aplikacji.
3. **Testy przeciążeniowe:** Badanie, jak aplikacja reaguje na nadmierny ruch i czy utrzymuje stabilność.
4. **Testy pielęgnowalności:** Ocena łatwości utrzymania aplikacji, m.in. poprzez badanie czytelności kodu, dokumentacji i możliwości wprowadzania zmian.
5. **Testy użyteczności:** Weryfikacja łatwości użytkowania aplikacji, zrozumiałości interfejsu i satysfakcji użytkownika.
6. **Testy niezawodności:** Badanie stabilności i niezawodności systemu, w tym odporności na awarie.
7. **Testy przenaszalności:** Sprawdzanie, czy aplikacja działa poprawnie na różnych platformach, przeglądarkach czy urządzeniach.

## METODA CZARNEJ SKRZYNKI
Podejście do testowania metodą czarnej skrzynki (black-box testing) skupia się na zewnętrznych aspektach testowanego systemu, a tester nie ma dostępu do wewnętrznej logiki ani kodu źródłowego.

## METODA BIAŁEJ SKRZYNKI
Podejście do testowania metodą białej skrzynki, znane również jako white-box testing, opiera się na pełnej znajomości kodu źródłowego testowanej aplikacji. Testerzy mają dostęp do struktury kodu i wewnętrznej logiki programu, co umożliwia im skoncentrowanie się na różnych ścieżkach wykonania, gałęziach decyzyjnych oraz weryfikacji poprawności algorytmów.

## Co można testować
- **Poprawność** – zgodność faktycznego zachowania programu z oczekiwanym,
- **Wydajność** – spełnianie wymagań czasowych,
- **Niezawodność** – odporność na działanie pod wymaganym obciążeniem,
- **Bezpieczeństwo** – odporność na ataki, ochrona danych.

## KLUCZOWE ASPEKTY TESTOWANIA
1. **Wartości graniczne**
2. **Unikatowe przypadki**
3. **Architektura komputera**
4. **Język programowania**
5. **Algorytm**

## POZIOMY TESTÓW
1. **Poziom jednostkowy (modułowy):**
    - Testowanie indywidualnych jednostek kodu lub modułów.
    - Sprawdzenie poprawności działania pojedynczych funkcji lub procedur.
2. **Poziom integracyjny:**
    - Testowanie integracji różnych modułów lub komponentów.
    - Weryfikacja, czy komponenty współpracują ze sobą zgodnie z oczekiwaniami.
3. **Poziom systemowy:**
    - Testowanie całościowego systemu lub aplikacji.
    - Sprawdzanie funkcji i zachowań systemu jako całości.
4. **Poziom akceptacyjny:**
    - Często obejmuje testy akceptacyjne użytkownika (UAT).
5. **Poziom regresji:**
    - Testowanie mające na celu sprawdzenie, czy wprowadzone zmiany lub nowe funkcje nie wpłynęły negatywnie na istniejącą funkcjonalność.
6. **Poziom wydajnościowy:**
7. **Poziom bezpieczeństwa:**
8. **Poziom kompatybilności:**

## SMOKE
zwane także testowaniem wstępnym lub testowaniem przeglądowym, jest rodzajem testowania, którego celem jest sprawdzenie podstawowej funkcjonalności aplikacji, bez wnikania w szczegóły.

## SANITY
zwane także testowaniem rozsądkowym, jest formą testowania, które sprawdza, czy konkretne funkcje lub obszary systemu działają zgodnie z oczekiwaniami po wprowadzeniu zmian lub aktualizacji.

# METODOLOGIE
# Wybór właściwej metodologii
|               Rodzaj metodologii               | Strukturalna | Strukturalna |     RAD      |      RAD       |           RAD           |    Agile     |
| :--------------------------------------------: | :----------: | :----------: | :----------: | :------------: | :---------------------: | :----------: |
| Zdolność do wytwarzania oprogramowania systemu | wodospadowa  |  równoległa  |   etapowa    | prototypowania | z prototypem odrzuconym |    Agile     |
|    który ma niejasne wymagania użytkownika     |    słaba     |    słaba     |    dobra     |  bardzo dobra  |      bardzo dobra       | bardzo dobra |
| w którym nie znana jest technologia wykonania  |    słaba     |    słaba     |    dobra     |     słaba      |      bardzo dobra       |    słaba     |
|               który jest złożony               |    dobra     |    dobra     |    dobra     |     słaba      |      bardzo dobra       |    słaba     |
|          który jest bardzo wymagający          |    dobra     |    dobra     |    dobra     |     słaba      |      bardzo dobra       |    dobra     |
|       który ma krótki czas na wykonanie        |    słaba     |    dobra     | bardzo dobra |  bardzo dobra  |          dobra          | bardzo dobra |
| który ma nieprzekraczalny termin dostarczenia  |    słaba     |    słaba     | bardzo dobra |  bardzo dobra  |          dobra          |    dobra     |

# PODEJŚCIE TDD - Test Driven Development
to technika wytwarzania oprogramowania, w której proces tworzenia kodu rozpoczyna się od napisania testów automatycznych, a następnie implementacji kodu, który spełnia te testy.
## ZALETY TDD
1. **Szybsze Wykrywanie Błędów:**
2. **Łatwiejsza Refaktoryzacja:**
3. **Dokumentacja Funkcjonalności:**
4. **Zwięzłość Kodu:**
5. **Zwiększenie Pewności:**
## WADY TDD
1. **Nauka i Przyzwyczajenie:**
2. **Wymaga Inwestycji Czasowej:**
3. **Zależność od Zrozumienia Wymagań:**

# CI/CD
## Continuos Integration (CI)
1. **Regularne Integrowanie Kodu:**
   - Programiści regularnie wprowadzają swoje zmiany do wspólnego repozytorium, co prowadzi do częstego łączenia kodu.
2. **Automatyczne Budowanie i Testowanie:**
   - Po każdym wprowadzeniu zmian, system automatycznie buduje aplikację i uruchamia zestaw testów, weryfikując integralność kodu.
3. **Szybkie Wykrywanie Błędów:**
   - Dzięki regularnym integracjom, wszelkie konflikty czy błędy są szybko identyfikowane, co ułatwia ich natychmiastową naprawę.

## Continuous Delivery (CD)
1. **Automatyczne Dostarczanie do Środowiska Testowego:**
   - Po pomyślnym przejściu testów jednostkowych i integracyjnych, aplikacja jest automatycznie dostarczana do środowiska testowego.
2. **Przygotowanie do Wdrożenia:**
   - Kolejnym krokiem jest automatyczne przygotowanie aplikacji do wdrożenia, włączając w to wszelkie niezbędne konfiguracje i skrypty.
3. **Gotowość do Ręcznego Wdrożenia:**
   - Ostateczna decyzja o wdrożeniu do produkcji może być podjęta ręcznie, co daje zespołowi kontrolę nad procesem.

## CI vs CD
1. **Continuous Integration (CI):**
   - Skupia się na regularnym łączeniu kodu i szybkim wykrywaniu błędów.
2. **Continuous Delivery (CD):**
   - Obejmuje proces automatycznego dostarczania aplikacji do środowiska testowego oraz przygotowanie do potencjalnego wdrożenia, jednak decyzja o wdrożeniu pozostaje w rękach zespołu.



# REFAKTORYZACJA
to poprawa jakości kodu bez zmiany jego funkcjonalności.

# STANDARDY I REGUŁY KODOWANIA
Standardy narzucają ustalone, sztywne zestawy wymagań, zazwyczaj bez możliwości wyjątków, które określają, jakie instrukcje programistyczne należy używać, a jakich nie powinno się używać. Reguły kodowania natomiast stanowią sugerowane, praktyczne wskazówki, rekomendacje i zalecenia dla programistów.
1. **Podniesienie niezawodności oprogramowania**
2. **Łatwiejsze czytanie, zrozumienie i modyfikowanie oprogramowania**
3. **Ułatwiona przenośność pomiędzy różnymi platformami systemowymi**
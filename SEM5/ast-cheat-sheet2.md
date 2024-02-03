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
status:       "active"
version:      3.0
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
<h1>NOTATKI Z WYKŁADÓW TESTOWANIE APLIKACJI I SYSTEMÓW</h1>

> [!WARNING]
> ***MOŻLIWE BŁĘDY I NIEDOSKONAŁOŚCI***
>
> Plik może zawierać **błędy** i **być niekompletny** z powodu ograniczonej kadry, czasu i niewielkiego udziału studentów. Zaleca się ostrożność i dodatkową weryfikację, a także zachęca do kontaktu w razie pytań lub uwag.

- [TESTY](#testy)
  - [FUNKCJONALNE](#funkcjonalne)
  - [NIEFUNKCJONALNE](#niefunkcjonalne)
  - [METODA CZARNEJ SKRZYNKI](#metoda-czarnej-skrzynki)
  - [METODA BIAŁEJ SKRZYNKI](#metoda-białej-skrzynki)
  - [Co można testować](#co-można-testować)
  - [KLUCZOWE ASPEKTY TESTOWANIA](#kluczowe-aspekty-testowania)
  - [POZIOMY TESTÓW](#poziomy-testów)
  - [Klasyfikacja testów](#klasyfikacja-testów)
  - [Podział testów](#podział-testów)
    - [Ze względu na sposób przeprowadzania testów:](#ze-względu-na-sposób-przeprowadzania-testów)
    - [Ze względu na testowany zakres aplikacji:](#ze-względu-na-testowany-zakres-aplikacji)
    - [Ze względu na rodzaje testów:](#ze-względu-na-rodzaje-testów)
    - [Ze względu na charakter testów:](#ze-względu-na-charakter-testów)
  - [SMOKE](#smoke)
    - [ZALETY](#zalety)
    - [WADY](#wady)
  - [SANITY](#sanity)
    - [ZALETY](#zalety-1)
    - [WADY](#wady-1)
  - [STRESS TEST](#stress-test)
    - [SPIKE TEST](#spike-test)
  - [Alpha](#alpha)
  - [Beta:](#beta)
  - [Alpha vs Beta testy](#alpha-vs-beta-testy)
  - [TESTY AUTOMATYCZNE](#testy-automatyczne)
    - [ZALETY](#zalety-2)
  - [JEDNOSTKOWE](#jednostkowe)
    - [Asercje](#asercje)
  - [Testowanie Agresywne](#testowanie-agresywne)
  - [Niezależne Testowanie](#niezależne-testowanie)
  - [AKSJOMATY](#aksjomaty)
- [METODOLOGIE](#metodologie)
  - [Wybór właściwej metodologii](#wybór-właściwej-metodologii)
  - [Modele tworzenia oprogramowania](#modele-tworzenia-oprogramowania)
    - [V-Model](#v-model)
- [PODEJŚCIE TDD - Test Driven Development](#podejście-tdd---test-driven-development)
  - [ZALETY TDD](#zalety-tdd)
  - [WADY TDD](#wady-tdd)
- [CI/CD](#cicd)
  - [Continuos Integration (CI)](#continuos-integration-ci)
    - [NARZĘDZIA](#narzędzia)
  - [Continuous Delivery (CD)](#continuous-delivery-cd)
  - [CI vs CD](#ci-vs-cd)
- [Zapewnienie jakości metody](#zapewnienie-jakości-metody)
- [REFAKTORYZACJA](#refaktoryzacja)
- [STANDARDY I REGUŁY KODOWANIA](#standardy-i-reguły-kodowania)
  - [Standard ANSI/IEEE 892/1983](#standard-ansiieee-8921983)
- [Testowanie - Zasada Pareto 80/20](#testowanie---zasada-pareto-8020)
- [Lokalizacja (L10N)](#lokalizacja-l10n)
- [Internacjonalizacja (I18N)](#internacjonalizacja-i18n)
- [WERYFIKACJA vs WALIDACJA](#weryfikacja-vs-walidacja)
  - [WERYFIKACJA](#weryfikacja)
  - [WALIDACJA](#walidacja)
- [ANALIZA](#analiza)
  - [STATYCZNA](#statyczna)
    - [TECHNIKI ANALIZY STATYCZNEJ:](#techniki-analizy-statycznej)
    - [ZALETY:](#zalety-3)
    - [WADY:](#wady-2)
  - [DYNAMICZNA](#dynamiczna)
    - [TECHNIKI ANALIZY STATYCZNEJ:](#techniki-analizy-statycznej-1)
    - [ZALETY:](#zalety-4)
    - [WADY:](#wady-3)
- [MOCKS](#mocks)
  - [FUNKCJE](#funkcje)
  - [ZASTOSOWANIE](#zastosowanie)
  - [FRAMEWORKI](#frameworki)
- [STABS](#stabs)
  - [FUNKCJE](#funkcje-1)
  - [ZASTOSOWANIE](#zastosowanie-1)
- [MOCKS vs STABS](#mocks-vs-stabs)
- [Defekt vs. Błąd](#defekt-vs-błąd)
  - [Rodzaje Błędów:](#rodzaje-błędów)
  - [Rodzaje Błędów ze względu na:](#rodzaje-błędów-ze-względu-na)
  - [Etap Wykrycia:](#etap-wykrycia)

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
    - **Cel:** Sprawdzenie poprawności działania indywidualnych jednostek kodu, najczęściej modułów.
    - **Akcje:** Testowanie funkcji, procedur, czy klas na poziomie kodu źródłowego.
    - **Narzędzia:** Jednostkowe testy jednostkowe, debugowanie.
2. **Poziom integracyjny:**
    - **Cel:** Weryfikacja, czy różne moduły lub komponenty współpracują ze sobą poprawnie.
    - **Akcje:** Testowanie interfejsów między modułami, integracyjne testy jednostkowe.
    - **Narzędzia:** Narzędzia do testowania integracji, narzędzia do zarządzania zależnościami.
3. **Poziom systemowy:**
    - **Cel:** Testowanie systemu jako całości.
    - **Akcje:** Weryfikacja funkcji systemowych, testowanie interakcji między komponentami.
    - **Narzędzia:** Testy funkcjonalne, narzędzia do automatyzacji testów systemowych.
4. **Poziom akceptacyjny:**
    - **Cel:** Weryfikacja, czy system spełnia oczekiwania użytkownika lub klienta.
    - **Akcje:** Testy akceptacyjne, często przeprowadzane przez użytkownika końcowego.
    - **Narzędzia:** Testy akceptacyjne użytkownika (UAT), narzędzia do zarządzania defektami.
5. **Poziom regresji:**
    - **Cel:** Sprawdzenie, czy wprowadzone zmiany nie wpływają negatywnie na istniejącą funkcjonalność.
    - **Akcje:** Ponowne testowanie wcześniej przetestowanych funkcji po wprowadzeniu zmian.
    - **Narzędzia:** Automatyzacja testów regresyjnych.
6. **Poziom wydajnościowy:**
    - **Cel:** Testowanie wydajności, skalowalności i odporności systemu na obciążenie.
    - **Akcje:** Testy obciążeniowe, testy wydajnościowe, testy stabilności.
    - **Narzędzia:** Narzędzia do testów obciążeniowych, narzędzia monitorujące.
7. **Poziom bezpieczeństwa:**
    - **Cel:** Testowanie zabezpieczeń systemu przed potencjalnymi zagrożeniami.
    - **Akcje:** Identyfikacja luk w zabezpieczeniach, testy penetracyjne.
    - **Narzędzia:** Narzędzia do testowania bezpieczeństwa.
8. **Poziom kompatybilności:**
    - **Cel:** Sprawdzenie zgodności systemu z różnymi środowiskami, platformami i konfiguracjami.
    - **Akcje:** Testowanie na różnych systemach operacyjnych, przeglądarkach, urządzeniach.
    - **Narzędzia:** Narzędzia do testowania kompatybilności, maszyny wirtualne.

## Klasyfikacja testów
| Potrzeby klientów <br> $\downarrow$ | $\leftrightarrow$ | Testowanie akceptacyjne <br> $\uparrow$ |
| :---------------------------------: | :---------------: | :-------------------------------------: |
|     Wymagania <br> $\downarrow$     | $\leftrightarrow$ |   Testowanie systemowe<br> $\uparrow$   |
|   Projektowanie <br> $\downarrow$   | $\leftrightarrow$ | Testowanie integracyjne <br> $\uparrow$ |
|           Napisanie kodu            | $\leftrightarrow$ |         Testowanie jednostkowe          |

## Podział testów
### Ze względu na sposób przeprowadzania testów:
1. **Testy Manualne:**
    - Wykonywane ręcznie przez testerów.
    - Tester interaktywnie przeprowadza testy, obserwuje i ocenia wyniki.
2. **Testy Automatyczne:**
  	- Wykonywane przy użyciu narzędzi automatyzacji testów.
  	- Skrypty testowe są tworzone, uruchamiane i oceniane automatycznie.

### Ze względu na testowany zakres aplikacji:
1. **Testy Jednostkowe:**
   	- Skupione na testowaniu indywidualnych jednostek kodu, najczęściej modułów.
   	- Często wykonywane przez programistów.
2. **Testy Integracyjne:**
    - Testowanie integracji i współpracy między różnymi modułami lub komponentami.
3. **Testy Systemowe:**
   	- Sprawdzanie funkcjonalności systemu jako całości.
   	- Testowanie interakcji między komponentami systemu.

### Ze względu na rodzaje testów:
1. **Testy Statyczne:**
   	- Analiza kodu, dokumentacji lub innych artefaktów bez jego faktycznego wykonania.
   	- Przykłady to przeglądy kodu, inspekcje, analiza statyczna.
2. **Testy Dynamiczne:**
   	- Testowanie aplikacji w trakcie jej wykonania.
   	- Przykłady to testy jednostkowe, integracyjne, systemowe.

### Ze względu na charakter testów:
1. **Testy Strukturalne (Białej Skrzynki):**
   	- Oceniają strukturę wewnętrzną kodu.
   	- Przykłady to testy jednostkowe, testy instrukcji, pokrycia kodu.
2. **Testy Funkcjonalne (Czarnej Skrzynki):**
   	- Oceniają funkcjonalność systemu bez wiedzy o jego strukturze wewnętrznej.
   	- Przykłady to testy akceptacyjne, testy przypadków użycia.

## SMOKE
zwane także testowaniem wstępnym lub testowaniem przeglądowym, jest rodzajem testowania, którego celem jest sprawdzenie podstawowej funkcjonalności aplikacji, bez wnikania w szczegóły.
### ZALETY
- Szybkość wykonywania, co pozwala na szybkie uzyskanie informacji o stabilności systemu.
- Identyfikacja ewidentnych błędów bez konieczności przeprowadzania bardziej szczegółowych testów.
### WADY
- Może nie wykryć ukrytych błędów, które wymagają bardziej szczegółowego testowania.
- Ograniczona zdolność do oceny pełnej funkcjonalności systemu.

## SANITY
zwane także testowaniem rozsądkowym, jest formą testowania, które sprawdza, czy konkretne funkcje lub obszary systemu działają zgodnie z oczekiwaniami po wprowadzeniu zmian lub aktualizacji.
### ZALETY
- Szybkość wykonania, co pozwala na szybkie uzyskanie informacji o stabilności obszaru zmian.
- Skupienie się na konkretnym obszarze, co ułatwia szybkie identyfikowanie problemów.
### WADY
- Ograniczona zdolność do oceny pełnej funkcjonalności systemu.
- Nie zawsze jest odpowiednie do zastosowania po wprowadzeniu bardzo obszernych zmian w aplikacji.

## STRESS TEST
Testowanie typu Stress to rodzaj testowania niefunkcjonalnego, którego celem jest zbadanie stabilności systemu podczas ekstremalnych warunków obciążenia.
### SPIKE TEST
Testowanie typu Spike to rodzaj testowania niefunkcjonalnego, które ma na celu zbadanie, jak system radzi sobie z nagłym, krótkotrwałym wzrostem obciążenia.

## Alpha
- **Kiedy są przeprowadzane:** Testy Alfa są przeprowadzane przez zespół deweloperski w środowisku deweloperskim przed udostępnieniem oprogramowania użytkownikom zewnętrznym.
- **Uczestnicy:** Uczestnikami testów alfa są zazwyczaj programiści, testerzy wewnętrzni i inni członkowie zespołu deweloperskiego.
- **Charakterystyka:** Testy Alfa mają na celu przetestowanie wszystkich funkcji systemu w środowisku kontrolowanym przez deweloperów. Mogą obejmować testy jednostkowe, testy integracyjne, a nawet testy funkcjonalne.
- **Cele:** Identyfikacja wczesnych błędów, ocena ogólnej jakości systemu, sprawdzenie zgodności z wymaganiami.

## Beta:
- **Kiedy są przeprowadzane:** Testy Beta są przeprowadzane po zakończeniu testów alfa, gdy oprogramowanie jest udostępniane grupie użytkowników zewnętrznych do testów.
- **Uczestnicy:** Uczestnikami testów beta są zewnętrzni użytkownicy końcowi, którzy korzystają z oprogramowania w rzeczywistych warunkach.
- **Charakterystyka:** Testy Beta mają na celu ocenę zachowania oprogramowania w środowisku produkcyjnym. Użytkownicy testują funkcje, zgłaszają błędy, a deweloperzy zbierają informacje zwrotne.
- **Cele:** Ocena stabilności systemu w warunkach rzeczywistych, identyfikacja problemów, które mogą pojawić się tylko w realnych scenariuszach użycia.

## Alpha vs Beta testy
|         .         |                        ALPHA                         |                    BETA                     |
| :---------------: | :--------------------------------------------------: | :-----------------------------------------: |
| Środowisko testów |                    developerskie                     |                  produkcja                  |
|    Uczestnicy     |                     developerzy                      |             użytkownicy końcowi             |
|        Cel        | wykrycie wczesnych błędów oraz ocene jakości systemu | ocena stabilności i zachowania na produkcji |
|   Etap procesu    |                   przed wdrożeniem                   |          po wdrożeniu na produkcji          |

## TESTY AUTOMATYCZNE
czyli automatyzacja procesu wykonywania testów, niesie za sobą szereg korzyści, które sprawiają, że jest coraz powszechniejsze w dziedzinie tworzenia oprogramowania.
### ZALETY
1. **Szybkość i Skuteczność**
2. **Powtarzalność**
3. **Wczesna Wykrywalność Błędów**
4. **Oszczędność Czasu i Kosztów**
5. **Testowanie Wielowariantowe**
6. **Zwiększenie Pokrycia Testów**
7. **Reprodukcja Warunków Błędnych**
8. **Skalowalność**
9. **Ułatwione Wdrażanie Ciągłej Integracji (CI) i Ciągłej Dostawy (CD)**
10. **Dokumentacja Testów**

## JEDNOSTKOWE
- najniższy poziom testów zorganizowanych
- sprawdzanie poprawności pojedynczych jednostek (klas, funkcji)
- fragment programu (jednostka) poddawany jest testowi, a wynik działania porównywany jest z wcześniej przygotowanym wynikiem wzorcowym
- bardzo elastyczne tworzenie przypadków testowych (można np. stworzyć zestaw testowy, który oczekuje na rzucenie określonego wyjątku)
- testy zautomatyzowane, wykonywane na bieżąco
- tworzą swoistą dokumentację – czytając kod testu, można rozpoznać, jaka funkcjonalność jest wymagana od danej jednostki
### Asercje
- warunki konieczne do zaliczenia testu
- jeden test – zero lub więcej asercji; niezaliczenie którejkolwiek asercji to przerwanie testu z wynikiem negatywnym

## Testowanie Agresywne
Eksploracyjne testy, które narażają system na skrajne warunki, mające na celu identyfikację słabych punktów i awarii w nietypowych sytuacjach.

## Niezależne Testowanie
Praktyka, w której zespoły testowe działają niezależnie od zespołów deweloperskich, zapewniając obiektywną ocenę jakości oprogramowania.

## AKSJOMATY
- Programu nie da się przetestować całkowicie,
- Testowanie jest ryzykowne,
- Test nie udowodni braku błędów,
- Im więcej błędów znaleziono, tym więcej błędów pozostało do znalezienia,
- Nie wszystkie znalezione błędy zostaną naprawione,
- Trudno powiedzieć, kiedy błąd jest błędem,
- Specyfikacje produktów nigdy nie są gotowe.

# METODOLOGIE
## Wybór właściwej metodologii
|               Rodzaj metodologii               | Strukturalna | Strukturalna |     RAD      |      RAD       |           RAD           |    Agile     |
| :--------------------------------------------: | :----------: | :----------: | :----------: | :------------: | :---------------------: | :----------: |
| Zdolność do wytwarzania oprogramowania systemu | wodospadowa  |  równoległa  |   etapowa    | prototypowania | z prototypem odrzuconym |    Agile     |
|    który ma niejasne wymagania użytkownika     |    słaba     |    słaba     |    dobra     |  bardzo dobra  |      bardzo dobra       | bardzo dobra |
| w którym nie znana jest technologia wykonania  |    słaba     |    słaba     |    dobra     |     słaba      |      bardzo dobra       |    słaba     |
|               który jest złożony               |    dobra     |    dobra     |    dobra     |     słaba      |      bardzo dobra       |    słaba     |
|          który jest bardzo wymagający          |    dobra     |    dobra     |    dobra     |     słaba      |      bardzo dobra       |    dobra     |
|       który ma krótki czas na wykonanie        |    słaba     |    dobra     | bardzo dobra |  bardzo dobra  |          dobra          | bardzo dobra |
| który ma nieprzekraczalny termin dostarczenia  |    słaba     |    słaba     | bardzo dobra |  bardzo dobra  |          dobra          |    dobra     |

## Modele tworzenia oprogramowania
1. **Metodologie Strukturalne**
    - **Metoda wodospadowa (Waterfall)**
    - **Metoda równoległa**
    - **Metoda etapowa**
    - ZALETY:
      - Jasny plan,
      - Łatwe zarządzanie
      - Dokumentacja
    - WADY:
      - Brak elastyczności
      - Późna walidacja
      - Długi czas dostarczania
1. **Szybkie Metody Wytwarzania Oprogramowania:**
    - **RAD (Rapid Application Development)**
    - **Metoda etapowa (Incremental)**
    - **Prototypowanie**
    - ZALETY:
      - Szybkie dostarczanie
      - Aktywne zaangażowanie klienta
      - Łatwa adaptacja
    - WADY:
      - Złożoność zarządzania
      - Brak dokładnej dokumentacji
      - Wysoki nakład pracy
1. **Metody Zwinne:**
    - **Agile (Zwinne)**
    - **Programowanie Ekstremalne (XP - Extreme Programming)**
    - ZALETY:
      - Elastyczność
      - Aktywne zaangażowanie klienta
      - Krótkie iteracje
    - WADY:
      - Brak pełnej dokumentacji
      - Możliwość nadmiernego skupiania się na bieżących zadaniach
      - Wymaga silnej komunikacji

### V-Model
to model procesu, który zakłada, że etapy rozwoju oprogramowania i odpowiadające im etapy testowania są wzajemnie powiązane, a każde etapowe dostarczenie jest zweryfikowane przez odpowiednią fazę testową. Model ten przypomina literę "V", co symbolizuje połączenie etapów rozwoju i testowania.

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
### NARZĘDZIA
- **REPOZYTORIA KODU**: GitHub, BitBucket, GitLab, SourceForge
- **SERWERY CIĄGŁEJ**: INTEGRACJI: Jenkins, TeamCity, Travis, Codeship, Semaphore

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

# Zapewnienie jakości metody
- **Inspekcja** - jest dokładnym sprawdzeniem kodu oprogramowania. Jej celem jest wyeliminowanie błędów "na miejscu".
- **Formalna weryfikacja oprogramowania** - jest to sposób określania i weryfikacji systemów oprogramowania poprzez stosowanie technik pochodzących z matematyki i logiki.
- **Zapobieganie błędom** jest najważniejszym, ale niestety zazwyczaj pomijanym aspektem zapewnienia jakości oprogramowania w dowolnym projekcie. To jest proces identyfikacji błędów, ich przyczyn oraz działania korygujące i zapobiegawcze po to, by zapobiec ich ponownemu wystąpieniu w przyszłości.
- **Odporność** na uszkodzenia jest zdolnością systemów oprogramowania do
zapobiegania zakłóceniom, nawet jeśli pojawiają się jakieś lokalne problemy.

# REFAKTORYZACJA
to poprawa jakości kodu bez zmiany jego funkcjonalności.

# STANDARDY I REGUŁY KODOWANIA
Standardy narzucają ustalone, sztywne zestawy wymagań, zazwyczaj bez możliwości wyjątków, które określają, jakie instrukcje programistyczne należy używać, a jakich nie powinno się używać. Reguły kodowania natomiast stanowią sugerowane, praktyczne wskazówki, rekomendacje i zalecenia dla programistów.
1. **Podniesienie niezawodności oprogramowania**
2. **Łatwiejsze czytanie, zrozumienie i modyfikowanie oprogramowania**
3. **Ułatwiona przenośność pomiędzy różnymi platformami systemowymi**
## Standard ANSI/IEEE 892/1983
Określenie zakresu, metodyki, zasobów i harmonogramu testowania. Zidentyfikowanie przedmiotów testowania, funkcji do przetestowania, czynności które trzeba wykonać, osób odpowiedzialnych za każdą z nich oraz ryzyka związanego z planem.

Najważniejszym celem planowania testowania jest zakomunikowanie – a nie zapisanie - zamiarów, oczekiwań i sposobu rozumienia testu przez zespół testowy.

# Testowanie - Zasada Pareto 80/20
> Zasada Pareto (inaczej zasada 80/20) - w przypadku testowania aplikacji i systemów oznaczać może że 20% kodu źródłowego może być odpowiedzialne za aż 80% błędów w systemie.

# Lokalizacja (L10N)
Lokalizacja odnosi się do dostosowywania oprogramowania do konkretnego regionu, języka, kultury czy ustawień lokalnych. Testowanie lokalizacji ma na celu sprawdzenie, czy oprogramowanie działa poprawnie i jest zrozumiałe dla użytkowników w danym obszarze geograficznym.
- **Język i Znaki**
- **Formaty Daty i Czasu**
- **Formaty Walut**
- **Adaptacja do Kultury:**

# Internacjonalizacja (I18N)
Internacjonalizacja to projektowanie i implementacja oprogramowania w taki sposób, aby było ono łatwo dostosowywane do różnych lokalizacji i kultur. Testowanie internacjonalizacji ocenia, czy oprogramowanie jest gotowe do lokalizacji.
- **Zasoby Językowe**
- **Obsługa Znaków Specjalnych**
- **Rozszerzalność Interfejsu Użytkownika**
- **Obsługa Wielu Języków**

# WERYFIKACJA vs WALIDACJA
## WERYFIKACJA
skupia się na ocenie, czy produkt jest zbudowany poprawnie, zgodnie z określonymi wymaganiami i standardami.
## WALIDACJA
koncentruje się na sprawdzeniu, czy produkt spełnia rzeczywiste oczekiwania użytkownika w rzeczywistych warunkach

# ANALIZA
## STATYCZNA
- Analiza statyczna to proces oceny oprogramowania bez jego faktycznego wykonywania.
- Obejmuje ocenę kodu źródłowego, dokumentacji i innych artefaktów projektowych.

### TECHNIKI ANALIZY STATYCZNEJ:
- Przegląd Kodu (Code Review)
- Inspekcje

### ZALETY:
- Pomaga w identyfikacji błędów na wczesnym etapie, zanim kod zostanie skompilowany i uruchomiony.
- Wspiera zrozumienie i poprawę jakości kodu poprzez współpracę zespołową.
- Pomaga w eliminowaniu potencjalnych problemów zanim staną się bardziej kosztowne do naprawy.

### WADY:
- Niektóre błędy mogą pozostać niewykryte, zwłaszcza te związane z logiką wykonania programu.
- Wymaga zaangażowania czasowego zespołu programistycznego.

## DYNAMICZNA
- Analiza dynamiczna to proces oceny oprogramowania podczas jego wykonywania.
- Obejmuje testowanie różnych aspektów działania oprogramowania, takie jak funkcjonalność, wydajność i niezawodność.

### TECHNIKI ANALIZY STATYCZNEJ:
- **Testy Jednostkowe:** Sprawdzanie indywidualnych jednostek kodu w izolacji.
- **Testy Integracyjne:** Sprawdzanie współpracy pomiędzy różnymi komponentami lub modułami.
- **Testy Systemowe:** Sprawdzanie, czy cały system działa zgodnie z założeniami.
- **Testy Wydajności:** Ocena wydajności systemu podczas różnych warunków obciążenia.

### ZALETY:
- Zbiera informacje o zachowaniu oprogramowania w rzeczywistych warunkach działania.
- Pozwala na identyfikację błędów, które mogą pojawić się tylko w określonych warunkach.

### WADY:
- Wymaga uruchamiania i testowania całego systemu, co może być czasochłonne.
- Niektóre błędy mogą pozostać niewykryte, jeśli nie są uwzględnione w scenariuszach testowych.

# MOCKS
- Mock to obiekt symulujący zachowanie rzeczywistego obiektu, który pozwala na kontrolowanie, jak jest używany w teście jednostkowym.
- Mocki są tworzone w celu imitowania interakcji z obiektami, takimi jak bazy danych, serwisy internetowe lub inne zasoby zewnętrzne.

## FUNKCJE
- **Kontrola zachowania:** Pozwala na sprawdzenie, czy metody obiektu są wywoływane z oczekiwanymi argumentami.
- **Symulacja wyników:** Umożliwia ustawianie spodziewanych wyników lub błędów dla konkretnych wywołań metod.

## ZASTOSOWANIE
- Testowanie jednostkowe, gdy chcemy kontrolować zachowanie zależności obiektów.

## FRAMEWORKI
- PHPUnit
- Phony
- Prophecy
- Mockery

# STABS
- Stab (inaczej nazywany Dummy lub Test Stub) to prosta implementacja obiektu, która zastępuje rzeczywistą zależność w testach jednostkowych.
- Stabs są zazwyczaj używane, gdy chcemy zastąpić obiekt, ale nie musimy kontrolować, jak jest używany.

## FUNKCJE
- **Minimalna implementacja:** Stab dostarcza minimalną implementację potrzebną do zastąpienia rzeczywistego obiektu w teście.

## ZASTOSOWANIE
- Testowanie jednostkowe, gdy zależy nam na zastąpieniu zależności, ale nie musimy kontrolować interakcji z nią.

# MOCKS vs STABS
| Kryterium                             | Mocks                                                               | Stabs                                                                            |
| :-----------------------------------: | :-----------------------------------------------------------------: | :------------------------------------------------------------------------------: |
| Kontrola vs Minimalna Implementacja   | Pełna kontrola nad zachowaniem obiektu, dokładne określenie wywołań | Minimalna implementacja zastępująca rzeczywistą zależność                        |
| Precyzja vs Prostota                  | Bardziej precyzyjne, dokładna kontrola interakcji                   | Prostsze, zastępujące zależność głównie dla prostych przypadków                  |
| Kontrola Wyników vs Minimalna Reakcja | Kontrola wyników i działania obiektu w testach                      | Minimalna reakcja na wywołania, mniejsze zainteresowanie wynikami                |
| Praktyka                              | Często używane w testach wymagających dokładnej kontroli            | Używane w prostszych przypadkach, gdzie zależy głównie na zastąpieniu zależności |

# Defekt vs. Błąd
**Defekt:**
Błąd popełniony przez projektantów lub programistów podczas tworzenia oprogramowania. To problem odkryty w fazie cyklu życia oprogramowania późniejszej niż faza, w której pojawiła się przyczyna.

**Błąd:**
Problem lub nieprawidłowe działanie odkryte w tej samej fazie, w której pojawiła się przyczyna.

## Rodzaje Błędów:
- **Error:** Niezgodność między oczekiwanym a faktycznym rezultatem wykonania funkcji. Mogą być celowo powodowane w procesie testowania aplikacji.
- **Failure:** Niezdolność komponentu lub systemu do wykonania operacji w określonym czasie.
- **Exception:** Nieobsługiwany wyjątek, powodujący zawieszenie lub przerwanie działania programu.
- **Wyjątek:** Pojawiający się w związku z adresowaniem pamięci, danymi, operacją, przepełnieniem zmiennej, itp.
- **Defect/Bug/Fault:** Wada modułu lub systemu, która może uniemożliwić realizację zakładanej czynności. Może prowadzić do awarii modułu lub systemu.
- **Deviation/Incident:** Zdarzenie w procesie testowania, wymagające zbadania.

## Rodzaje Błędów ze względu na:
- **Składnię:**
  - Błędy wynikające z naruszenia składni języka programowania.
- **Semantykę:**
  - Błędy spowodowane niewłaściwym zastosowaniem instrukcji programu.
- **Logikę:**
  - Błędy wynikające z naruszenia specyfikacji lub logicznej struktury programu.

## Etap Wykrycia:
- **Błędy Kompilacji:**
  - Błędy składniowe i semantyczne wskazane przez kompilator.
- **Błędy Maszyny (Runtime):**
  - Błędy dynamiczne, semantyczne i logiczne, wykrywane podczas debugowania, nieujawnione przez kompilator.
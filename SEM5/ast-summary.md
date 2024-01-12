```
       All rights reserved (c) 2023 Week-End Development
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
      ╚═════╝ ╚══════╝  ╚═══╝  ╚══════╝  PRESENT:
```
# TESTOWANIE APLIKACJI NOTATKI
***10/2023 - 01/2024***
## SPIS TREŚCI
1. [PYTANIA](#pytania)
1. [Wstęp](#wykład-01---wstęp)
1. [Wprowadzenie](#wykład-02---wprowadzenie)
1. [Planowanie testowania](#wykład-03---planowanie-testowania)
1. [Testy w rzeczywistości](#wykład-04---testy-w-rzeczywistości)
1. [Testowanie aplikacji i stron www](#wykład-05---testowanie-app-www)
1. [Etapy i fazy wytwarzania oprogramowania](#wykład-06---etapy-i-fazy-w-poszczególnych-modelach-wytwarzania-oprogramowania)

## PYTANIA
1. Harmonogram testów dlaczego daty względne a nie statyczne? \
  > Ponieważ task mogą być krótsze lub dłuższe przez co ustalenie daty statycznej powodowałoby luki lub brakowałoby czasu na wykonywanie zadań

## WYKŁAD 01 - Wstęp
Warunek Testowy
> to element lub zdarzenie modułu lub systemu, który powinien być zweryfikowany przez jeden lub więcej przypadków testowych (np. funkcja, transakcja).

## WYKŁAD 02 - Wprowadzenie
- Czynniki występowania błędów
- Potrzeba testowania
- Rodzaje błędów
- Testy jednostkowe
- Smoke testy
- Testy integracyjne

## WYKŁAD 03 - Planowanie testowania

## WYKŁAD 04 - Testy w rzeczywistości
***07/11/2023***
- Aksjomaty testowania

## WYKŁAD 05 - Testowanie app www
***14/11/2023***
- Koszty testów
- Rodzaje testów
- Testy automatyczne
- Testy wydajnościowe
- Retests
- Testy regresywne
- Testy modułowe i systemowe
- Testy z udziałem użytkownika

## WYKŁAD 06 - Etapy i fazy w poszczególnych modelach wytwarzania oprogramowania
***21/11/2023***

testy białej skrzynki/szarej oraz czarnej

### Cyk życia projektu:
1. **Planowanie,** \
  Zaplanowanie
1. **Analiza,** \
  Kto bedzie używał systemu? Co system ma wykonywać? Gdzie i kiedy będzie używany?
1. **Projektowanie,** \
  Koncepcja aplikacji, interfejsy UI/UX
1. **Implementacja.** \
  Końcowa faza, w ramach której powstaje kod.

### Metodologie tworzenia oprogramowania
1. **Strukturalne,**
    - Wodospadowa (Waterfall-model) - Małe projekty, testowanie po zakończeniu projektowania, fazy nie pokrywają się
    - równoległa, podział projektu na mniejsze części kilka Waterfalls (zmniejszenie czasu wytwarzania)
    - etapowa,
    - V-model - weryfikacja i walidacja, testowanie równolegle z rozwojem
1. **Szybkie metody,** \
    RAD (Rapid Application Development) \
    Narzędzia RAD:
    - Visual Studio,
    - NetBeans,
    - Eclipse.
1. **Metody zwinne,**
    - XP (eXtreme Programming)

## WYKŁAD 07 - AGILE Testowanie w metodykach zwinnych
***05/12/2023***
- SCRUM
- DSDM (Dynamic Systems Development Model)

1. AGILE vs Waterfall
  - struktura projektu,
  - zarządzanie zmian,
  - `JAK?` vs `CO?`

1. Podejście TDD - (Test Driven Development)
    Jak najkrótsze cykle testów.

***12/12/2023***

Nie nadaje  się do małych projektów oraz kiedy testy są czasochłonne oraz nie opłacalne/ nie przynoszą korzyści.
Nie stosuje się na kodzie "łączącym".
### ZALETY
- `bugi` znajdywane są szybciej nawet jeszcze przed wprowadzeniem kodu na środowisko testowe.
- Minimalizacja zakresu występowania błędów.
### WADY
- Wymagany dodatkowy czas na testy jednostkowe

Cykle życia TDD
1. Napisanie min. kodu,
1. Refaktoryzacja kodu,
1. Powtarzanie cyklu,

### Continuous Integration i Delivery
Automatyzacja dostarczenia oprogramowania

## CI vs CD
**CI** - pracowanie nad oprogramowaniem \
Ciągła integracja z systemem.
1. PUSH - wprowadzenie zmian
1. TEST
1. FIX - naprawa wykrytych problemów


**CD** - zautomatyzowane etapy procesu tworzenia oprogramowani następuje po pozytywnym przejściu testów. Dostarczanie do środowiska przedprodukcyjnego. Może nie posiadać wszystkich funkcjonalności i nie musi działać w pełni.

**Continuous Testing** - CI oraz CD wymagają ciągłego przeprowadzania testów.

### ZALETY CI/CD
- Zapobiega zmian na tym samym pliku przez kilka developerów na raz,
- Uporządkowany sposób łączenia i wprowadzania zmian na projekcie,
- Większość narzędzi CI/CD pozwala na proces tworzenia `paczek` (build)
  - ręczne - uruchamiane przez user,
  - automatyczne - po commit,
  - automatycznie - w zdefiniowanym czasie.

### Narzędzia
- Współdzielenie repozytorium kodu:
  - GitHub,
  - GitBucket,
  - GitLabs

### Typowy CD Pipeline
- Pobranie kodu z repozytorium wersji i uruchamianie buildów,
- Automatyczne wykonanie niezbednych kroków dotyczących infrastruktury,
- Przeniesienie na środowisko,
- Konfiguracja dla konkretnego środowiska,
- przeniesienie komponentów aplikacji do odpowiednich usług,...

# TYPY TESTÓW
1. funkcjonalności,
1. dostępności,
1. bazowe,
1. pojemnościowe,

## 3 Rodzaje testów oprogramowania
- funkcjonalne,
  - smoke testy,
  - black box,
  - unit testy,
  - white box,
  - user acceptance,
  - agresywne,
  - sanity,
  - regresywne,
- niefunkcjonalne,
- strukturalne.

***19/12/2023***
---
## 4 Testowanie efektywności
Obejmuje:
- jak dużo wymagań klienta zostało spełnione przez system/aplikacje,
- jak dobrze została specyfikacja klienta została osiągnięta,
- jak wiele wysiłku zostało włożone w system.

## 5 Testowanie wytrzymałości
- wycieki pamięci
- testowanie wydajności i stabilności przez dłuższy okres czasu.

## 6 Testowanie funkcjonalności
- podstawowe funkcje aplikacji,
- instalacja i konfiguracja na lokalnych komputerach,
- domyślne ustawienia regionalne,
- hot-key shortcuts
- obsługa tekstu (kopiowanie/wklejanie/czcionki/znaki/itd.)

## 7 Testowanie współdziałania
- testowanie działania i łączenia systemów ze sobą,
- łączenie modułów, powiązania API, itd.

## Testowanie instalacji/implementacji
- testowanie czy oprogramowanie zostało pomyślnie zainstalowane,
- poprawne działanie oprogramowania na systemach
- użytkownik powinien mieć możliwość zainstalowania oraz usuniecia aplikacji

***09/01/2024***
---
## Testowanie obciążeniowe
(ang. Load Testing)
- test niefunkcjonalny
- test określa jak zochowa sie system w stanie normalnym jak i krytycznym obciążeniu.

## Testowanie lokalizacji oraz internacjonalizacji
(ang. Localization Testing and Internationalization Testing)
- testy niefunkcjonalne

## Testowanie utrzymywalności
(ang. Maintainability Testing)
- test niefunkcjonalny
- Naprawianie - korygowanie problemów,
- Preferowanie utrzymania - ulepszenia,
- Adaptacyjne utrzymanie - dostosowanie się do zmian w środowisku,
- Prewencyjne utrzymanie - zmniejszenie przyszłych kosztów utrzymania.

## Testowanie wdrożenia
- ORT
- Kopii zapasowej bazy danych,
- Odzyskiwanie danych,
- Instalacja i konfiguracja oprogramowania,
- Wycofania - testowanie wycofania (ang. Rollback Test),
- Pracy awaryjnej - testowanie pracy awaryjnej (ang. Failover Testing)

## Testowanie wydajnościowe
(ang. Performance Testing)
- test niefunkcjonalny
- test typu baseline (testowanie na podstawowej/normalnym obciążeniu)
- testy pojemnościowe - określa ile użytkowników może jednocześnie obsłużyć aplikacja
- testy obciążeniowe - testuje jak aplikacja zachowuje się przy wiekszym obciążeniu.
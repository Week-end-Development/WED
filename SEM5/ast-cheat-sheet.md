```yaml
title:        "Testowanie aplikacji i systemów"
author:       ["BO$ & Nikovsky"]
date:         23.01.2024
keywords:     ["testowanie", "testowanie aplikacji"]
tags:         ["notes"]
categories:   ["semester5", "summary"]
comment:      "Zagadnienia do zaliczenia."
copyright:    "All rights reserved (c) 2024 WEEK-END DEVELOPMENT"
organization: "WEEK-END DEVELOPMENT"
status:       "in-progress"
version:      2.0
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

# Możliwe zagadnienia / pytania - Testowanie aplikacji i systemów
- ~~mock vs stab~~
- testy automatyczne
- metodyki wytwarzania oprogramowania (waterfall Agile)
- narzędzia do testowania
- metodyka TDD
- analiza statyczna vs dynamiczna
- testowanie agresywne
- niezależne testowanie
- metoda białej/czarnej skrzynki
- standard dokumentacji powody i cele
- walidacja vs weryfikacja
- `fragment kodu` wybranie z opcji konkretnego błędu
- testy jednostkowe
- różnice miedzy definicja/testami
- ~~zasada Pareto 80/20~~

## Testowanie - Zasada Pareto 80/20
> Zasada Pareto (inaczej zasada 80/20) - w przypadku testowania aplikacji i systemów oznaczać może że 20% kodu źródłowego może być odpowiedzialne za aż 80% błędów w systemie.

### Techniki Testowania z Wykorzystaniem Zasady Pareto
1. **Analiza Ryzyka:** Wykorzystanie analizy ryzyka w identyfikacji kluczowych obszarów kodu, gdzie potencjalne błędy mogą mieć największy wpływ na aplikację.
2. **Testy Jednostkowe:** Skoncentrowane testy jednostkowe na kluczowych funkcjach i modułach, które stanowią istotny procent całego kodu.
3. **Testy Regresji:** Staranne przeprowadzanie testów regresji na tych fragmentach kodu, które zostały zmienione w wyniku poprawek lub aktualizacji.

## Mock vs Stab
> Mocki i Stuby mają bardzo podobne przeznaczenie, natomiast istnieje ważna różnica pomiędzy nimi.
> 
>W praktyce używa się zarówno mocków, jak i stabs, w zależności od konkretnych potrzeb testu jednostkowego i stopnia kontroli, jaki chcemy utrzymać.

### Różnice Mock vs Stab:
| Kryterium | Mock | Stab |
| :--: | :--: | :--: |
| **Definicja** | Symuluje zachowanie rzeczywistego obiektu. | Prosty obiekt zastępczy, używany do dostarczenia wymaganych interfejsów. |
| **Działanie** | Programowo kontrolowany, symuluje rzeczywiste zachowanie obiektu. | Minimalne zachowanie, spełnia jedynie wymagania interfejsu. |
| **Przykład** | Mock bazy danych, symuluje operacje bazodanowe. | Stab pliku, spełnia wymagania interfejsu, bez rzeczywistej logiki. |
| **Zalety** | Elastyczność i kontrola w testowaniu interakcji. | Proste w użyciu, szybkie do wdrożenia. |
| **Wady** | Czasochłonny w konfiguracji i utrzymaniu. | Brak kontroli nad zachowaniem obiektu, nie nadaje się do testowania interakcji. |
| **Kontrola vs Minimalna Implementacja** | Dają pełną kontrolę nad zachowaniem obiektu i pozwalają na dokładne określenie, jakie metody powinny być wywołane. | Dostarczają minimalnej implementacji obiektu, która po prostu pozwala na zastąpienie rzeczywistej zależności. |
| **Precyzja vs Prostota** | Są bardziej precyzyjne i są używane, gdy chcemy dokładnie kontrolować interakcje z obiektem. | Są prostsze, używane w sytuacjach, gdzie zależy nam głównie na zastąpieniu zależności. |
| **Kontrola Wyników vs Minimalna Reakcja** | Pozwalają na kontrolę wyników i działanie obiektu w sposób ściśle określony przez test. | Są bardziej reaktywne, dostarczając minimalnej reakcji na wywołania, zazwyczaj bez zbytniego zainteresowania wynikami. |

#### **Mock** 
1. **Definicja**:
   - Obiekt zastępczy (fake object), który symuluje zachowanie rzeczywistego obiektu. Jest tworozny w taki sposób, aby zachowywać się jak prawdziwy obiekt w kontekście testowanego kodu.
   - Mocki są tworzone w celu imitowania interakcji z obiektami, takimi jak bazy danych, serwisy internetowe lub inne zasoby zewnętrzne.
   - Mock zapamiętuje wywołania wszystkich metod, liczbę wywołań każdej z metod i ich kolejność W rezultacie test ma do dyspozycji więcej informacji, które mogą być wykorzystane do weryfikacji czy system działa zgodnie z oczekiwaniami.

2. **Funkcje Mocków:**
   - **Kontrola zachowania:** Pozwala na sprawdzenie, czy metody obiektu są wywoływane z oczekiwanymi argumentami.
   - **Symulacja wyników:** Umożliwia ustawianie spodziewanych wyników lub błędów dla konkretnych wywołań metod.

3. **Zastosowanie**:
   - Często używane w testach jednostkowych do sprawdzania, czy metody są wywoływane z oczekiwanymi parametrami lub czy obiekty reagują zgodnie z oczekiwaniami.

#### **Stabs (inaczej Dummy lub Test Stub)** 
1. **Definicja**:
   - jest prostszym z tych dwóch obiektów (Stabs i Mock). Jego rolą jest symulowanie danych wejściowych i zapewnie, że testowana metoda przyjmująca w argumencie taki obiekt wykona się w żadany sposób.
   - Do stworzenia stuba nie jest wymagany żaden framework. Wymagana jest tylko wiedza o interfejsie bądź klasie abstrakcyjnej na bazie, której się chce stworzyć stuba oraz o tym jak go przekazać do testowanej klasy.
   - Stabs są zazwyczaj używane, gdy chcemy zastąpić obiekt, ale nie musimy kontrolować, jak jest używany.

2. **Funkcje Mocków:**
   - **Minimalna implementacja:** Stab dostarcza minimalną implementację potrzebną do zastąpienia rzeczywistego obiektu w teście.

3. **Zastosowanie**:
   - Staby są używane, gdy testujemy fragmenty kodu, które wymagają obiektów, ale nie koncentrujemy się na ich funkcjonalności.
   - Testowanie jednostkowe, gdy zależy nam na zastąpieniu zależności, ale nie musimy kontrolować interakcji z nią.

## Testy automatyczne
Testy automatyczne to proces, w którym narzędzia i skrypty są używane do wykonania testów, zamiast wykonywania ich ręcznie. Automatyzacja testów przyspiesza proces testowania, zwiększa powtarzalność i umożliwia szybkie wykrywanie błędów. W przypadku aplikacji internetowych istnieją narzędzia, zarówno komercyjne, jak i darmowe, dedykowane do tworzenia testów automatycznych. Decyzja o zautomatyzowaniu testu zależy od różnych czynników, takich jak plany na przyszłość, stabilność aplikacji i potrzeba przeprowadzania testów regresji. Jednak niektóre elementy, takie jak zabezpieczenia CAPTCHA, są celowo projektowane, aby uniemożliwić automatyzację ich obsługi.

### Zalety testowania automatycznego  
| Korzyści:                                     |
| ------------------------------------------------------------------ |
|  Możliwość szybkiej i wydajnej weryfikacji poprawek błędów        |
|  Możliwość odtworzenia testu, co jest bardzo przydatne zwłaszcza jeżeli chcemy sprawdzić, czy wskazywane błędy zostały usunięte   |
|  Możliwość kompleksowej analizy wyników testów                   |
|  Szybsze i tańsze tworzenie sprawozdań                           |
|  Szybsze wprowadzanie testów (krótki czas realizacji)            |
|  Nieomylność przy wprowadzaniu danych                            |
|  Możliwość podania dużej liczby danych testowych                 |
|  Niska cena przeprowadzenia pojedyńczego testu                     |

### Przykładowe rodzaje testów automatycznych
* **Testy Jednostkowe**
* **Testy integracyjne (Integration Testing)**
* **Testy funkcjonalne (Functional Testing)**
* **Testy wydajności (Performance Testing)**
* **Testy regresji (Regression Testing)**
* **Testy akceptacji użytkownika (User Acceptance Testing, UAT)**
* **Testy typu smoke (Smoke testing)**
```yaml
title:        "Testowanie aplikacji i systemów"
author:       ["BO$"]
date:         23.01.2024
keywords:     ["testowanie", "testowanie aplikacji"]
tags:         ["notes"]
categories:   ["semester5", "summary"]
comment:      "Notatki z wykładów."
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
- mock vs stab
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

## 1. Ciągłe i dyskretne modele symulacyjne
  - **CIĄGŁE**: zmiany zachodzą w sposób ciągły w czasie - opisywane równaniami różniczkowymi - przepływ ciepła, mechanika
  - **DYSKRETNE**: zmiany następują w określonych punktach czasu - kolejki w systemach komputerowych, transmisja danych

## 2. Co to jest model systemu?
Abstrakcyjna reprezentacja rzeczywistego systemu, służąca do analizy, projektowania lub symulacji jego działania, Posiada:
  - STRUKTURĘ komponentów
  - PARAMETRY wejścia i wyjścia
  - ZMIENNE decyzyjne
  - CEL analiza, projektowanie, testowanie

## 3. Analiza jakościowa i ilościowa
  - **JAKOŚCIOWA**: opisowa, skupia się na strukturze, funkcjach, zależnościach - zrozumienie zachowania - np. przeciążenie systemy
  - **ILOŚCIOWA**: oparta na danych liczbowych, umożliwia pomiary i obliczenia - uzyskanie metryk - np. czas odpowiedzi, długość kolejki

## 4. Rodzaje modeli i przykłady:
  - **FIZYCZNE** - makiety
  - **MATEMATYCZNE** - równania
  - **SYMULACYJNE** - OMNeT++
    - **WYDAJNOŚCIOWE** - modelowanie przejść systemu pomiędzy stanami - diagram stanów
    - **KOMPONENTOWE** - analiza zużycia zasobów przez różne typy żądań - np. OMNeT++ -> `cQueue`, `cSimpleModule`, `cOutVector`
  - **ANALITYCZNE** - modele kolejkowe

## 5. OMNeT++ możliwości:
  - Modelowanie sieci i systemów rozproszonych
    - Modelowanie hierarchiczne (`.ned`)
  - Obsługa zdarzeń dyskretnych
    - Rejestracja wyników (`.sca`, `.vec`)
  - Integracja z modułami C++ i GUI do wizualizacji
    - Graficzna analiza wyników

## 6. waitAndEnqueue w OMNeT++
Funkcja służy do implementacji kolejek - zatrzymuje wiadomości na określony czas i dodaje ją do kolejki - Kluczowe przy modelowaniu czasów odpowiedzi i namysłu użytkownika.

## 7. Czas obsługi LAN
T = DANE / PRZEPUSTOWOŚĆ + CZAS_PROPAGACJI + CZAS_PRZETWARZANIA

narzuty warstw (Ethernet, TCP/IP)

## 8. Szacowany czas pobierania strony WWW
T = STRONA_WWW(DANE) / ŁĄCZE

T = 2 * RTT + STRONA_WWW(DANE) / ŁĄCZE + N * ( RTT + Oi / B )

**RRT** - Round Trip Time - czas podróży pakietu od klienta do serwera i z powrotem (w obie strony). Uwzględnia opóźnienia sieciowe.

**Oi** (Overhead i-tego obiektu) – ilość danych pomocniczych (nagłówki, metadane, itp.) wymaganych do pobrania danego obiektu na stronie. Może obejmować np. zapytania HTTP, ciasteczka, itp.

**B** (Bandwidth) – przepustowość łącza, czyli maksymalna ilość danych, jaka może zostać przesłana w jednostce czasu (np. w Mbps).

## 9. Modelowanie klienta HTTP
Tworzenie generatora żądań z określonym rozkładem czasu, wysyłajacego wiadomości do serwera

## 10.  Pozyskiwanie parametrów generatora HTTP
Poprzez analizę logów serwera, śledzenie ruchu (Wireshark) lub symulacje obciążeniowe (JMeter)

## 11.  Modelowanie czasu obsługi serwera WWW
Zdefiniowanie serwera jako zasobu z czasem przetwarzania (np. rozkład normalny)

## 12.  Modelowanie serwera bazodanowego
Jako zasób z kolejką i parametrami takimi jak czas odpowiedzi, liczba zapytań, dane można uzyskać z monitoringu SQL (np. EXPLAIN)

## 13.  Prawo Utilization U = X * S
STOPIEŃ_UŻYCIA_ZASOBU = PRZEPŁYW_ŻĄDAŃ * CZAS_OBSŁUGI

Zasób zajęty przez określony % czasu.

## 14.  Prawo Forced Flow:
LICZBA_ŻĄDAŃ_NA_ZASÓB = CAŁKOWITA_LICZBA_ŻĄDAŃ * ŚREDNIA_LICZBA_ODWIEDZIN_ZASOBU

Pozwala rozbić globalny throughput na komponenty.

## 15.  Prawo Service Demand D = V * S
ZAPOTRZEBOWANIE_NA_USŁUGĘ = LICZBA_WIZYT * CZAS_OBSŁUGI

Ile czasu żądanie faktycznie "kosztuje" dany zasób.

## 16.  Prawo Little'a L = λ * W
ŚREDNIA_LICZBA_ELEMENTÓW_W_SYSTEMIE = INTENSYWNOŚĆ_WEJŚCIA * ŚREDNIA_CZAS_PRZYBYWANIA

Związek między liczbą żądań, natężeniem i czasem obsługi.

## EXTRA
Uzgadnianie 3-etapowe CLIENT-SERWER

1. CLIENT === SYN ===> SERWER
2. SERVER === SYN.ACK ===> CLIENT
3. CLIENT === ACK ===> SERWER
4. CLIENT <--- DANE ---> SERWER
5. CLIENT === FIN ===> SERVER
6. SERVER === FIN + FIN.ACK ===> CLIENT
7. CLIENT === FIN.ACK ===> SERVER

- URG	Informuje istnieniu pola wskaźnik pilności w nagłówku (urgent)
- ACK	Informuje istnieniu pola numer potwierdzenia w nagłówku (acknowledgment)
- PSH	Wymuszenie przesłania pakietu (push)
- RST	Ponowne zestawienie połączenia (reset)
- SYN	Synchronizacja numerów sekwencyjnych
- FIN	Koniec danych od nadawcy
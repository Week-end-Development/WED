---
topic: "Rozwiązania teleinformatyczne sieci Internet"
tags:  ["sem6", "tis", "summary"]
---
```yaml
author:       "BO$"
date:         10.06.2024
copyright:    "All rights reserved (c) 2024 WEEK-END DEVELOPMENT"
version:      0x0008
```
- [PDH](#pdh-plesiochronous-digital-hierarchy)
- [SDH](#sdh-synchronous-digital-hierarchy)
- [X.25](#x25)
- [Frame Relay](#frame-relay)
- [ATM](#atm-asynchronous-transfer-mode)
- [MPLS](#mpls-multiprotocol-label-switching)

# KOMUTACJA
to technika zestawiania połączeń w celu transferu danych od źródła, poprzez węzły tranzytowe, do punktu docelowego.

| KOMUTACJA |    TECHNIKI     | natężenia strumienia | procedury przetwarzania w węzłach |
| :-------: | :-------------: | :------------------: | :-------------------------------: |
|  kanałów  | PSTN, ISDN, GSM |        stałe         |              proste               |
|  komórek  |       ATM       |        &darr;        |              &darr;               |
|   ramek   |   Frame Relay   |        &darr;        |              &darr;               |
| pakietów  |  TCP/IP, X.25   |       zmienne        |              złożone              |

## KANAŁÓW (obwodów, łączy)
> **WADY**
> - niska efektywność
> - wysokie koszty eksploatacji
> - zajmuje zasoby centrali

> **ZALETY**
> - wysoka jakość transmisji

## PAKIETÓW
należy do najbardziej elastycznych technik komutacji stosowanych we współczesnych sieciach, pozwala na nawiązywanie połączenia z wieloma innymi użytkownikami jednocześnie

## RAMEK
Redukcja mechanizmów korekcji błędów i kontroli przepływu w porównaniu z komutacją pakietów

## KOMÓREK
- Szybka transmisja danych
- Dane dzielone na stałe długości (komórki)
- Przeznaczona dla wysokiej jakości łączy (światłowodowe)

## PRZESYŁ METODĄ
### POŁĄCZENIOWĄ
Charakteryzuje się przesyłaniem pakietów przez zestawienia połączenia wirtualnego. (sekwencja węzłów i kanałów)
- Unikalny numer połączenia zamiast adresów w nagłówku
- **SVC (Switched Virtual Circuit)**
  - Tymczasowe połączenie
  - FAZY: `zestawienie`, `transmisja`, `rozłączenie`
- **PVC (Permanent Virtual Circuit)**
  - Stałe połączenie
  - Efektywna, ale kosztowna
  - Dla dużych plików

### BEZPOŁĄCZENIOWA
- Pakiety przemieszczają się samodzielnie
- Węzły wybierają trasę na podstawie adresu docelowego
- Pakiety mogą dotrzeć w innej kolejności

# TRANSMISJA DANYCH
## PCM (Pulse Code Modulation)
- ETAPY: `próbkowanie`, `kwantowanie`, `kodowanie`.
- PRZEPUSTOWOŚĆ: 64kb/s (E0)

## PDH (Plesiochronous Digital Hierarchy)
- Elementy sieci mają własne zegary (prawie synchroniczne)
- Multipleksacja z podziałem czasu TDM
- Przepływność pojedynczego kanału: 64 kb/s
- OZNACZENIA: T*(USA), E*(Europa), J*(Japonia)

> **WADY**
> - Brak standaryzacji powyżej 140 Mbit/s
> - Energochłonność
> - Hierarchia demultiplekserów do wydzielenia E1 z E4
> - Różne standardy na świecie
> - Wypierane przez SDH

## SDH (Synchronous Digital Hierarchy)
Wszystkie urządzenia zsynchronizowane do nadrzędnego zegara (PRC) oraz do siebie nawzajem

**RAMKA**
- **Nagłówek**: 9 kolumn
- **Dane**: 261 kolumn

> **ZALETY**
> - Wyższe przepływności (powyżej 1Gb/s) przy użyciu światłowodów
> - Synchronizacja z zegarem dokładność $10^{11}$
> - Ramki co $125\mu s$
> - Duża niezawodność
> - Ekonomiczniejszy dostęp do danych
> - Lepsze zapobieganie błędom
> - Mniejsza podatność na uszkodzenia
> - Możliwość automatycznej rekonfiguracji

### Terminologia SDH
| Termin                                      | Definicja                                                                       |
| ------------------------------------------- | ------------------------------------------------------------------------------- |
| **Sekcja**                                  | Odcinek między dwoma sąsiednimi urządzeniami (regeneracja lub zwielokrotnienie) |
| **Ścieżka**                                 | Kanał wirtualny pomiędzy węzłem wejściowym a wyjściowym                         |
| **Sygnały wejściowo/wyjściowe**             | Sygnały transportowane przez sieć                                               |
| **Odwzorowanie**                            | Adaptacja sygnału do przepływności SDH                                          |
| **Kontener**                                | Bajty sygnału wejściowego i bity uzupełniające                                  |
| **Kontener wirtualny**                      | Kontener z nagłówkiem                                                           |
| **Jednostka składowa**                      | Pole użytkowe, zawiera kontener wirtualny niższego rzędu                        |
| **Jednostka administracyjna**               | Zawiera kontener wirtualny wyższego rzędu i wskaźnik                            |
| **Grupa jednostek administracyjnych (AUG)** | Grupa jednostek administracyjnych                                               |
| **Synchroniczny moduł transportowy (STM)**  | Struktura informacyjna z nagłówkiem, wskaźnikiem i polem użytkowym              |
| **Wskaźnik**                                | Adres pierwszego bajtu kontenera wirtualnego                                    |
| **Nagłówek sekcji (SOH)**                   | Zarządzanie, utrzymanie zwielokrotnienia i regeneracji                          |
| **Nagłówek ścieżki (POH)**                  | Zarządzanie i utrzymanie ścieżki                                                |

### Budowa STM-1
- **Nagłówek SOH** (M-SOH i R-SOH): 82 bajty
    - **R-SOH:** sterowanie i informacje dla sekcji regenerowania sygnału
    - **M-SOH:** nagłówek dla multiplekserów
- Blok wskaźników PTR: 9 bajtów
- Payload: 2349 bajtów

> [!IMPORTANT]
> **Kontener + Nagłówek = Kontener wirtualny**

> [!NOTE]
> SDH o większej przepustowości niż STM-1 powstają przez zwielokrotnienie 155.52 Mbit/s metodą **przeplatania bajtowego**.

# PROTOKOŁY
## X.25
```yaml
Standard:       Protokół komunikacyjny dla publicznych sieci WAN
Przepustowość:  64 kb/s do 2 Mb/s
Połączenie:     Między DTE (Data Terminal Equipment) a DCE (Data Communications Equipment)
Tryb pracy:     Pakietowy
Warstwy:        Fizyczna, łącza danych, sieci modelu OSI
Opóźnienia:     15-20 ms na węzeł
```
### Cechy
- **Komutacja pakietów o zmiennej długości:** Pakiety bez adresów nadawcy i odbiorcy
- **Połączenia wirtualne:** Pakiety w kolejności wysyłania
- **Korekcja błędów i sterowanie przepływem:** Każdy węzeł sprawdza pakiety przed wysłaniem dalej
- **Wykrywanie nieprawidłowości:** Retransmisja błędnych pakietów
- **Niezawodność:** Przekaz informacji przez łącza o niższej jakości, ale z opóźnieniem

### Urządzenia
- **Terminale danych (DTE)**
- **Urządzenia zakończenia obwodów danych (DCE)**
- **Przełączniki wymiany pakietów (PSE)**
- **Multiplekser sieciowy PAD (Packet Assembly and Disassembly)**

### Protokoły
- **Packet-Layer Protocol (PLP):** Warstwa sieci
- **Link Access Procedure Balanced (LAPB):** Warstwa łącza danych
- **Fizyczne interfejsy szeregowe:** EIA/TIA-232, EIA/TIA-449, EIA-530, G.703

### Typy pól pakietów PLP
- **GFI (General Format Identifier)**
- **LCI (Logical Channel Identifier)**
- **PTI (Packet Type Identifier)**
- **UD (User Data)**

### Typy ramek LAPB
- **Informacyjne (I)**
- **Nadzorcze (S)**
- **Nienumerowane (U)**

## Frame Relay
```yaml
Standard:       Protokół komunikacyjny dla publicznych i prywatnych sieci WAN
Przepustowość:  56 kb/s do 45 Mb/s (T3)
Połączenie:     Między DTE (Data Terminal Equipment) a DCE (Data Communications Equipment)
Tryb pracy:     Pakietowy
Warstwy:        Łącza danych modelu OSI
Opóźnienia:     Zależne od obciążenia sieci, zazwyczaj niższe niż w X.25
Zastosowanie:   Transmisja danych, głosu, wideokonferencji i telekonferencji
```
### Typy urządzeń i styki
- **DCE (Data Communications Equipment):** Przełącznik ramek
- **DTE (Data Terminal Equipment):** Urządzenia końcowe, np. FRAD, routery z interfejsem FR
- **UNI (User-Network Interface):** Styk między abonentem a siecią
- **NNI (Network Node Interface):** Styk wewnątrzsieciowy

### Typy obwodów wirtualnych
- **PVC (Permanent Virtual Circuit):** Stałe połączenia
- **SVC (Switched Virtual Circuit):** Komutowane połączenia na żądanie

### Struktura ramki
- **Flaga:** Synchronizacja ramki
- **Nagłówek:** Zawiera pole DLCI, bit DE
- **Dane:** Mechanizm „bit stuffing”
- **FCS (Frame Check Sequence):** Detekcja błędów, konieczna retransmisja

### Parametry ruchu FR dla obwodu wirtualnego VC
- **CIR (Committed Information Rate):** Gwarantowany transfer danych
- **EIR (Excess Information Rate):** Maksymalna przepływność, możliwa utrata danych po przekroczeniu
- **Bc (Committed Burst Size):** Gwarantowana ilość danych w czasie T
- **Be (Excess Burst Size):** Dodatkowe dane z obniżonym priorytetem

### Proste mechanizmy korekcji błędów
- Nagłówka
- Formatu
- Cyklicznego kodu nadmiarowego FCS

## ATM (Asynchronous Transfer Mode)
```yaml
Standard:       Szerokopasmowy standard komunikacji dla sieci MAN i WAN
Przepustowość:  Do 622 Mb/s i więcej
Połączenie:     Między DTE (Data Terminal Equipment) a DCE (Data Communications Equipment)
Tryb pracy:     Pakietowy
Warstwy:        Fizyczna, ATM, adaptacyjna, wyższe warstwy
Opóźnienia:     Bardzo niskie, zależne od konfiguracji sieci
Zastosowanie:   Telefonia, Wideo, Wideokonferencje, Transmisja danych
```

### Cechy
- Wybór drogi dokonywany raz przy zestawianiu łącza
- Wszystkie pakiety jednego połączenia wirtualnego wysyłane tą samą trasą
- Technika multipleksacji etykietowanej (Label Multiplexing)

### Struktura komórki ATM
- **Nagłówek:** 5 bajtów
- **Pole informacyjne:** 48 bajtów

### Typy połączeń
- **VCC (Virtual Channel Connection):** Logiczne połączenie między stacją źródłową a docelową
- **VPC (Virtual Path Connection):** Grupa kanałów o tym samym węźle docelowym
- **VPI (Virtual Path Identifier):** Identyfikator ścieżki wirtualnej

### Rodzaje interfejsów
- **UNI (User Network Interface):** Styk użytkownika z siecią
- **NNI (Network-to-Network Interface):** Styk wewnątrz sieci, między węzłami

### Elementy nagłówka
- **GFC:** Kontrola dostępu dla styku UNI
- **VPI:** Identyfikator ścieżki wirtualnej
- **VCI:** Identyfikator kanału wirtualnego
- **PT:** Typ danych
- **CLP:** Bit priorytetu
- **HEC:** Kontrola błędów nagłówka

### Funkcje warstw
| WARSTWA                     | FUNKCJE                                                                                            |
| --------------------------- | -------------------------------------------------------------------------------------------------- |
| Wyższe                      | Funkcje warstw wyższych                                                                            |
| Adaptacyjna warstwa ATM CS  | Tworzenie bloków danych, generowanie zabezpieczeń CRC                                              |
| Adaptacyjna warstwa ATM SAR | Podział bloków na segmenty, tworzenie nagłówków i/lub zakończeń bloków                             |
| Warstwa ATM                 | Tworzenie komórek, generowanie i wydzielanie nagłówków, multipleksowanie i demultipleksowanie      |
| Warstwa Fizyczna TC         | Dopasowywanie szybkości transmisji, weryfikacja nagłówków, adaptacja strumienia do struktury ramki |
| Warstwa Fizyczna PM         | Transmisja bitów, synchronizacja, kodowanie liniowe                                                |

### Kategorie usług warstwy ATM
- **CBR:** Stały strumień informacji, np. telefonia, wideo, transfer zbiorów
- **rt-VBR:** Zmienny strumień informacji w czasie rzeczywistym, np. wideo z kompresją MPEG
- **nrt-VBR:** Zmienny strumień informacji, brak synchronizacji, np. Frame Relay
- **UBR:** Nieokreślone parametry ruchowe, np. emulacja LAN, poczta elektroniczna
- **ABR:** Zmienny strumień informacji, brak ścisłych relacji czasowych, np. TCP/IP

## MPLS (Multiprotocol Label Switching)
```yaml
Standard:       Technika stosowana przez routery do przełączania etykiet
Przepustowość:  Zależna od infrastruktury sieciowej
Połączenie:     Między urządzeniami sieciowymi w warstwach 2 i 3 modelu OSI
Tryb pracy:     Przełączanie etykiet
Warstwy:        Warstwa 2.5 (pomiędzy warstwą 2 a 3 modelu OSI)
Opóźnienia:     Niskie, zależne od sieci
```
### Główne cechy
1. **Przełączanie etykiet:** Pakiety otrzymują etykietę wejściową na brzegu sieci, routery zamieniają etykiety wejściowe na wyjściowe.
2. **FEC (Forwarding Equivalence Class):** Pakiety są klasyfikowane do FEC, zapewniając jednolite traktowanie i trasę.
3. **Stosy etykiet:** Możliwość tworzenia stosów etykiet, użyteczne w VPN i tunelowaniu.

### Zalety
- **QoS (Quality of Service):** Gwarantowana jakość usług dla transmisji głosu i wideo.
- **Efektywność i skalowalność:** Łączy rozproszone urządzenia i sieci LAN w jedną sieć WAN, obniżając koszty IT.
- **Wsparcie dla różnych technologii:** Działa z TCP/IP, ATM, Frame Relay oraz SONET.

### Budowa i działanie
- **Etykieta MPLS:** 32-bitowa etykieta między nagłówkiem warstwy 2 (Ethernet) a warstwy 3 (IP).
- **Routery LER i LSR:** Routery brzegowe (LER) dodają i usuwają nagłówki MPLS, routery wewnętrzne (LSR) przełączają etykiety.

### Mechanizmy
- **Tunelowanie i VPN:** MPLS umożliwia tworzenie tuneli między węzłami, ułatwia budowanie VPN.
- **Inżynieria ruchu:** Ustalanie ścieżek transmisji z rezerwacją zasobów i spełnianiem wymogów QoS.
- **Protokół RSVP:** Protokół sygnalizacyjny rezerwujący zasoby w sieci.

### Dystrybucja etykiet
- **LDP (Label Distribution Protocol):** Reguły dystrybucji etykiet między LSR.
- **CR-LDP (Constraint-based Routing LDP):** Rozszerzenie LDP dla elastycznego wybierania trasy oraz optymalizacji ścieżek.

### Węzły MPLS
- **LSR (Label Switching Router):** Przełączają etykiety i kierują pakietami.
- **E-LSR (LER):** Klasyfikują ruch (FEC), przydzielają etykiety i inicjują ścieżki LSP.

### Odporność
- **Protektacja:** Szybkie przywrócenie transmisji po awarii.
- **Odtwarzanie:** Optymalizacja użycia zasobów sieciowych.

### Motywacja wprowadzenia
MPLS wprowadzono jako alternatywę dla ATM, przyspieszając procesy w węzłach, oferując prostą inżynierię ruchu i wsparcie dla współpracy IP/ATM.

### Podsumowanie
MPLS zapewnia wieloprotokołowość, skalowalność, wszechstronną inżynierię ruchu, QoS i trasowanie statyczne, ale wymaga zaawansowanych systemów sygnalizacji i ewoluuje w kierunku G-MPLS (Generalized MPLS).

# Podział usług na klasy
| KLASA                           | A                               | B                            | C            | D                  |
| ------------------------------- | ------------------------------- | ---------------------------- | ------------ | ------------------ |
| Sygnalizacja między terminalami | Wymagana                        | Wymagana                     | Nie wymagana | Nie wymagana       |
| Szybkość bitowa                 | Stała                           | Zmienna                      | Zmienna      | Zmienna            |
| Tryb połączenia                 | Połączeniowa                    | Połączeniowa                 | Połączeniowa | Bezpołączeniowa    |  |
| Zastosowanie                    | Dźwięk, obraz, wideokonferencje | Skompresowane wideo i dźwięk | -            | Ethernet, LAN, MAN |

# MODEL SIECI
1. Sieć szkieletowa
    ```yaml
    Struktura:              kratowa
    Rozległość:             ~100-1000km
    Technika transmisji:    DWDM ~80 kanałów
    Przepustowość:          10-40 Gb/s
    ```
2. Sieć metropolitalna
    ```yaml
    Struktura:              pierścieniowa
    Rozległość:             ~20-100km
    Technika transmisji:    CWDM ~16 kanałów
    Przepustowość:          2.5-10 Gb/s
    ```
3. Sieć dostepowa
    ```yaml
    Struktura:              pierścieniowa + gwiazdy
    Rozległość:             <20km
    Technika transmisji:    xDSL, xPON, Ethernet
    Przepustowość:          <2.5 Gb/s
    ```
4. Sieć FTTH
    > `Obiekt Centralny OLT` -> `Odcinek transportowy` -> `Odcinek dystrybucyjny` -> `Odcinek rozdzielniczy` -> `Sieci wewnętrznobudynkowa zakończona w ONT`

# DEFINICJE
## WAN (Wide Area Networks)
to kombinacja sieci lokalnych (LAN) połączonych dodatkowymi łączami, działająca w warstwie fizycznej i łącza danych modelu OSI.

## MAN (Metropolitan Area Network)
sieć obejmująca niewielki obszar geograficzny (miasto lub region)

## CAN (Campus Area Network)
termin stosowany do określania sieci WAN łączącej poszczególne wydziały w ośrodku akademickim.

## PDN (pakiet data network)
ogólna nazwa sieci wykorzystujących komutację ramek i komórek

## QoS (Quality of Service) i CoS (Class of Service)
Wprowadzono trzy klasy jakości:
- Real Time Variable Frame Rate (Głos)
- Non-Real Time Variable Frame Rate (LAN-LAN, Ethernet-Ethernet)
- Available/Unspecified Frame Rate (transfer plików, poczta elektroniczna, usługi dostępu internetowego)
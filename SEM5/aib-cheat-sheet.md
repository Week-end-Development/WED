```yaml
title:        "Podstawy sztucznej inteligencji"
author:       ["WEEK-END DEVs"]
date:         28.01.2024
keywords:     ["sztuczna inteligencja", "ai-basic"]
tags:         ["note"]
categories:   ["semester5", "summary"]
comment:      "Notatki z wykładów."
copyright:    "All rights reserved (c) 2024  WEEK-END DEVELOPMENT"
organization: "WEEK-END DEVELOPMENT"
status:       "active"
version:      1.1
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
      ╚═════╝ ╚══════╝  ╚═══╝  ╚══════╝  PRESENT:
```
> [!WARNING]
> ***MOŻLIWE BŁĘDY I NIEDOSKONAŁOŚCI***
>
> Plik może zawierać **błędy** i **być niekompletny** z powodu ograniczonej kadry, czasu i niewielkiego udziału studentów. Zaleca się ostrożność i dodatkową weryfikację, a także zachęca do kontaktu w razie pytań lub uwag.

- [Inteligencja](#inteligencja)
  - [Inteligencja ludzka](#inteligencja-ludzka)
  - [Sztuczna inteligencja](#sztuczna-inteligencja)
- [Problemy AI](#problemy-ai)
- [TEST TURINGA](#test-turinga)
- [SILNA AI](#silna-ai)
- [SŁABA AI](#słaba-ai)
- [ADAS](#adas)
- [Uczenie maszynowe](#uczenie-maszynowe)
- [Reprezentacja wiedzy](#reprezentacja-wiedzy)
  - [Deklaratywne](#deklaratywne)
  - [Proceduralne](#proceduralne)
  - [Wnioskowanie](#wnioskowanie)
- [Baza wiedzy](#baza-wiedzy)
- [System ekspertowy](#system-ekspertowy)
- [System oparty o wiedzę](#system-oparty-o-wiedzę)
- [Inżynieria wiedzy](#inżynieria-wiedzy)
- [Definicja ML](#definicja-ml)
  - [Zastosowanie ML](#zastosowanie-ml)
  - [Algorytmy ML](#algorytmy-ml)
- [LSTM](#lstm)
- [Overfitting](#overfitting)
  - [Zapobieganie](#zapobieganie)
- [Underfitting](#underfitting)
  - [Zapobieganie](#zapobieganie-1)
- [Sieci neuronowe](#sieci-neuronowe)
  - [Zastosowanie sieci neuronowych](#zastosowanie-sieci-neuronowych)
  - [Cechy](#cechy)
- [Neuron](#neuron)
  - [Funkcja Aktywacji](#funkcja-aktywacji)
- [Podział na metody uczenia](#podział-na-metody-uczenia)
  - [Nadzorowana](#nadzorowana)
  - [Nadzorowana](#nadzorowana-1)
- [Uczenie głębokie a maszynowe](#uczenie-głębokie-a-maszynowe)
- [DEEP Learning](#deep-learning)
  - [Najpopularniejsze algorytmy Deep Learningu](#najpopularniejsze-algorytmy-deep-learningu)
  - [ZALETY](#zalety)
  - [WADY](#wady)
- [OPTYMALIZACJA](#optymalizacja)
  - [Problemy](#problemy)
- [Metody ewolucyjne](#metody-ewolucyjne)
- [Algorytmy genetyczne](#algorytmy-genetyczne)
  - [Zastosowanie](#zastosowanie)
  - [Terminologia](#terminologia)
    - [Funkcja przystosowania](#funkcja-przystosowania)
  - [Metody selekcji](#metody-selekcji)
- [LOGIKA ROZMYTA](#logika-rozmyta)
  - [Zbiór rozmyty](#zbiór-rozmyty)
  - [Wysokość zbioru rozmytego](#wysokość-zbioru-rozmytego)
  - [Rdzeń zbioru rozmytego](#rdzeń-zbioru-rozmytego)
  - [Zbiór normalny](#zbiór-normalny)
  - [Nośnik](#nośnik)
  - [Moc](#moc)
  - [SUMA](#suma)
  - [Przecięcie](#przecięcie)
  - [Rozszerzenie cylindryczne](#rozszerzenie-cylindryczne)
  - [Złożenie relacji rozmytych](#złożenie-relacji-rozmytych)
- [LICZBY ROZMYTE](#liczby-rozmyte)
  - [ZASTOSOWANIE](#zastosowanie-1)
- [Algorytm Wnioskowania](#algorytm-wnioskowania)
- [Systemy rozmyte Takagi-Sugeno-Kanga](#systemy-rozmyte-takagi-sugeno-kanga)


# Inteligencja
**Inteligencja jest zdolnością do (poprawnego, sprawnego itd.) rozwiązywania zadań intelektualnych, które zazwyczaj uchodzą za trudne.**

## Inteligencja ludzka
- **Inteligencja praktyczna**: umiejętność rozwiązywania konkretnych zagadnień na podstawie ogólnej wiedzy i wcześniejszych doświadczeń.
- **Inteligencja abstrakcyjna**: zdolność operowania symbolami i pojęciami.
- **Inteligencja społeczna**: umiejętność zachowania się w grupie.
- **Dopasowanie działania do okoliczności**: wybieranie najlepszego wariantu rozwiązania danego problemu, reagowanie na zmieniające się warunki.
- **Świadomość działania**: droga od sformułowania problemu do rozwiązania może być przez człowieka objaśniona i uzasadniona.
- **Znajomość własnych ograniczeń**: inteligentny człowiek wie, na które pytania nie zna odpowiedzi.

## Sztuczna inteligencja
Sztuczna inteligencja rozszerza pojęcie inteligencji systemów naturalnych (ludzi i zwierząt), na systemy sztuczne - programy komputerowe.

**Sprawne rozwiązywanie zadań przez maszynę, które według powszechnej opinii wymagają inteligencji, jeśli są wykonywane przez człowieka.**

# Problemy AI
Do problemów sztucznej inteligencji  zalicza się między innymi:
- podejmowanie decyzji w warunkach braku danych,
- analiza i synteza języków naturalnych,
- analiza i rozpoznawanie obrazów,
- rozumowanie logiczne/racjonalne,
- dowodzenie twierdzeń,
- gry logiczne, jak np. szachy czy go
- zarządzanie wiedzą i informacją (np. w biznesie czy w robotyce)
- systemy eksperckie i diagnostyczne
- planowanie
- uczenie
- sztuczna twórczość.

# TEST TURINGA
Maszyna jest inteligentna, jeżeli znajdujący się w drugim pomieszczeniu obserwator nie zdoła odróżnić jej odpowiedzi od odpowiedzi człowieka.


# SILNA AI
Silna sztuczna inteligencja - przedstawienie inteligentnego zachowania człowieka za pomocą komputerów; zdolność do myślenia w sposób w pewnym stopniu dający się porównywać z myśleniem ludzkim.

# SŁABA AI
Słaba sztuczna inteligencja - symulowanie (naśladowanie) inteligentnego zachowania człowieka w postaci modeli komputerowych; rozwiązywanie „trudnych” zadań w sposób umożliwiający praktyczne zastosowania.

# ADAS
(ang. Advanced Driver Assistance Systems) oraz stosowane w pojazdach autonomicznych, które są wyposażane w rozwiązania do rozpoznawania i analizy obrazów generowanych przez kamery wideo, sygnałów z radarów oraz wielu innych czujników zainstalowanych w samochodzie.

# Uczenie maszynowe
samouczenie się maszyn albo systemy uczące się (ang. machine learning) 

Systemy uczące się to programy komputerowe posiadające zdolność poprawiania jakości swojego działania poprzez zdobywanie nowych doświadczeń, które są następnie wykorzystywane podczas kolejnych interakcji ze środowiskiem.

> Systemy uczące się są obecnie najlepiej rozwijajace się i mającą największe znaczenie praktyczne dziedziną sztucznej inteligencji.

> AI system komputerowy wykorzystuje matematykę i logikę do symulowania sposobu rozumowania, jaki ludzie używają do uczenia się

# Reprezentacja wiedzy
## Deklaratywne
wiedza z danej dziedziny jest zbiorem specyficznych faktów, a korzystanie z wiedzy polega na stosowaniu do tego zbioru ogólnych procedur manipulacji faktami (np. reprezentacja logiczna).

Następuje wyraźne oddzielenie wiedzy z danej dziedziny od sposobu wykorzystania tej wiedzy w procesie wnioskowania

## Proceduralne
wiedza zawarta jest w procedurach (podprogramach), które wiedzą jak należy się zachować w określonej sytuacji.

## Wnioskowanie
Wnioskowanie jest konieczne wówczas, gdy system nie jest w stanie wprost znaleźć rozwiązania określonego problemu.
Rozróżnia się różne typy wnioskowania: formalne, proceduralne, przez analogię, przez uogólnienie.

# Baza wiedzy
to sformalizowana reprezentacja danych dotyczących danej dziedziny (obszaru tematycznego) umożliwiająca wnioskowanie.

# System ekspertowy
pojęcie z zakresu sztucznej inteligencji oznaczające system komputerowy, który emuluje proces podejmowania decyzji przez człowieka-eksperta.

# System oparty o wiedzę
(ang. Knowledge-based system) to system ekspertowy oparty na wiedzy zawierający bazę wiedzy oraz moduł wnioskujący, charakterystyczny dla systemów ekspertowych.

# Inżynieria wiedzy
to subdyscyplina sztucznej inteligencji zajmująca się tworzeniem bazy wiedzy dla systemu ekspertowego (na przykład systemu, w których wiedzę ekspertów w danej dziedzinie reprezentuje się w regułowej bazie wiedzy), oraz wykorzystaniem technologii semantycznych do przetwarzania wiedzy przez systemy komputerowe, autonomiczne i interakcyjne.

# Definicja ML
Machine learning (uczenie maszynowe) to dziedzina sztucznej inteligencji, która zajmuje się rozwijaniem algorytmów i technik umożliwiających komputerom uczenie się i podejmowanie decyzji na podstawie danych, bez konieczności bezpośredniego programowania.

## Zastosowanie ML
- diagnozowanie
- rozpoznawanie
- prognozowanie
- odkrywanie prawidłowości, wzorców, reguł
- klasyfikowanie
- identyfikowanie
- wykrywanie anomalii.

## Algorytmy ML
Przykłady algorytmów uczenia nadzorowanego **rozwiązujący problem regresji**:
- regresja liniowa
- regresja wielomianowa
- drzewo regresyjne
- sieci neuronowe

Przykłady algorytmów uczenia nadzorowanego **rozwiązujący problem klasyfikacji**:
- drzewa decyzyjne
- metoda k-najbliższych sąsiadów
- maszyny wektorów nośnych (SVM – support vector machine)
- naiwny klasyfikator Bayesa
- las losowy
- regresja logistyczna
- sieci neuronowe

**Uczenie nienadzorowane** (ang. unsupervised learning) – sposób uczenia modelu, w którym dane uczące są nieoznakowane tzn. nie posiadają etykiet. 

**Analiza skupień:**
- metoda k-średnich
- hierarchiczna analiza skupień
- DBSCAN ( density-based spatial clustering of applications with noise)

**Wykrywanie anomalii i nowości:**
- jednoklasowa maszyna wektorów nośnych

**Wizualizacja i redukcja wymiarowości:**
- analiza głównych składowych (PCA – ang. principal component analysis)
- jądrowa analiza głównych składowych

# LSTM
(Long Short-Term Memory) Jest to rodzaj rekurencyjnej sieci neuronowej, która jest szczególnie skuteczna w przetwarzaniu sekwencji danych, takich jak tekst czy dźwięk. LSTM jest zdolne do "zapamiętywania" informacji na dłuższy okres czasu dzięki wprowadzeniu specjalnego mechanizmu bramek.

# Overfitting
Overfitting (przeuczenie) występuje, gdy model uczący się zbyt dobrze dopasowuje się do danych treningowych, ale słabo generalizuje na nowe dane.

**Overfitting można zauważyć, gdy model osiąga bardzo wysoką dokładność na danych treningowych, ale słabą wydajność na danych testowych.**

## Zapobieganie
Można stosować techniki regularyzacji, takie jak:
- ograniczenie wag modelu,
- używanie walidacji krzyżowej,
- zastosowanie technik redukcji wymiarowości danych

# Underfitting
Underfitting (niedouczenie) występuje, gdy model jest zbyt prosty lub niezdolny do nauczenia się wystarczająco skomplikowanych wzorców w danych. Model niedouczony ma zbyt małą pojemność lub jest niedostatecznie dopasowany do złożoności danych.

## Zapobieganie
Można rozważyć:
- zwiększenie pojemności modelu poprzez zwiększenie liczby warstw w sieci neuronowej,
- zwiększenie liczby cech używanych w regresji,
- zwiększenie złożoności modelu.

# Sieci neuronowe
Sztuczna sieć neuronowa (neural network) to ogólna nazwa struktur matematycznych i ich programowych lub sprzętowych modeli, realizujących obliczenia lub przetwarzanie sygnałów poprzez rzędy elementów, zwanych sztucznymi neuronami, wykonujących pewną podstawową operację na swoim wejściu.

## Zastosowanie sieci neuronowych
- diagnostykę układów elektronicznych,
- badania psychiatryczne,
- prognozy giełdowe,
- prognozowanie sprzedaży,
- poszukiwania ropy naftowej,
- interpretacja badań biologicznych,
- prognozy cen,
- analiza badań medycznych,
- planowanie remontów maszyn,
- prognozowanie postępów w nauce,
- typowania na wyścigach konnych,
- analiza problemów produkcyjnych,
- optymalizacja działalności handlowej,
- analiza spektralna,
- optymalizacja utylizacji odpadów,
- dobór surowców,
- selekcja celów śledztwa w kryminalistyce,
- dobór pracowników,
- sterowanie procesów przemysłowych.

**Nie stosujemy sieci tam gdzie jest prosty algorytm rozwiązania zadania np. do obliczeń wg wzorów matematycznych.**

## Cechy
- Potrafi uogólniać posiadane wiadomości na przypadki których nigdy nie widziała, może więc „wymyślić” sposób rozwiązania nieznanego zadania.
- Ma zdolność do adaptacji i samoorganizacji,
- Ma zmniejszoną wrażliwość na uszkodzenia elementów,
- Ma zdolność do równoległej pracy.

# Neuron
Elementy z których buduje się sieci, charakteryzują się występowaniem wielu wejść i jednego wyjścia.
## Funkcja Aktywacji
(przejścia) – ma istotne znaczenie dla działania neuronu. Wyjście z neuronu jest jeśli nastąpi aktywacja. Może być to funkcja liniowa lub nieliniowa.

# Podział na metody uczenia
## Nadzorowana
samouczenie się, bez nauczyciela – sieć sama na podstawie podanych przykładów uczy się i zmienia odpowiednio wagi w neuronach tzn. automatyczny dobór wag.

## Nadzorowana
uczenie z nauczycielem - przy nowych danych wejściowych nauczyciel podpowiada pożądaną odpowiedź sieci

# Uczenie głębokie a maszynowe
Czynniki | Uczenie głębokie | Uczenie maszynowe
:---:|:---:|:---:
Dane | Wymaga dużych zbiorów | Może skutecznie uczyć się na mniejszych zbiorach
Trafność | Wysoka | Niska
Czas uczenia | Długi | Krótki
Wymagania sprzętowe | Wysokie | Średnie

# DEEP Learning
to rodzaj uczenia maszynowego, w którym komputer analizuje algorytmy i ich wyniki, aby „uczyć się” sposobów ulepszania procesów i tworzenia nowych.
## Najpopularniejsze algorytmy Deep Learningu
- **Convolutional Neural Networks (CNN)** - identyfikacji obrazów satelitarnych, przetwarzania obrazów medycznych, wykrywania anomalii
- **Long Short Term Memory Networks (LSTM)** - rozpoznawania mowy, komponowania muzyki i opracowywania produktów farmaceutycznych
- **Recurrent Neural Networks (RNN)** - rozpoznawania pisma ręcznego i tłumaczenia maszynowego
- **Generative Adversarial Networks (GAN)** - tworzenia animacji, zdjęć ludzkich twarzy i renderowania obiektów 3D
- **Multilayer Perceptrons (MLP)** - tworzenia oprogramowania do rozpoznawania mowy, obrazów oraz tłumaczenia maszynowego
- **Deep Belief Networks (DBN)** - rozpoznawania obrazu, rozpoznawania wideo i przechwytywania ruchu.

## ZALETY
- generowania nowych funkcji z ograniczonych dostępnych zestawów danych treningowych.
- Potrafi pracować nad technikami uczenia się bez nadzoru.
- Skraca czas potrzebny na inżynierię funkcji, określenie cech, jedno z zadań, które wymaga dużo czasu na ćwiczenie uczenia maszynowego.
- adaptacyjna do zmian.

## WADY
- Cały proces szkoleniowy opiera się na ciągłym przepływie danych, co zmniejsza możliwości doskonalenia procesu szkoleniowego.
- Koszt szkolenia obliczeniowego znacznie wzrasta wraz ze wzrostem liczby zbiorów danych.
- Brak przejrzystości w rewizji usterek. Brak kroków pośrednich w celu dostarczenia argumentów za pewną usterką. Aby rozwiązać ten problem, cały algorytm zostaje zrewidowany.
- Potrzebujesz drogich zasobów, szybkich jednostek przetwarzania i potężnych procesorów graficznych do trenowania zestawów danych.

# OPTYMALIZACJA

## Problemy
- Skomplikowany model, trudny do opisania matematycznie,
- Potrzeba wykonania dużej liczby obliczeń,
- "Pułapka" minimum lokalnego.

# Metody ewolucyjne
- Metody ewolucyjne proponują alternatywne podejście do problemu optymalizacji.
- Dzięki ich zastosowaniu możliwe jest szybsze przeszukiwanie przestrzeni rozwiązań z uniknięciem pułapek minimum lokalnego.
- Algorytmy ewolucyjne stanowią istotny dział nauki o sztucznej inteligencji.
- Należy jednak pamiętać, że ich wynik jest jedynie przybliżeniem najlepszego rozwiązania.


# Algorytmy genetyczne
Algorytmy genetyczne swoje istnienie zawdzięczają obserwacji i próbie naśladowania naturalnych procesów zachodzących w świecie organizmów żywych - ewolucji i związanej z nią naturalnej selekcji występującej w populacjach żywych osobników,

1. Inicjacja
2. Ocena przystosowania
3. Sprawdzenie warunków zatrzymania
4. Selekcja chromosomów
5. zastosowanie operatorów genetycznych - utworzenie nowej populacji
   1. Krzyżowanie
   2. Mutowanie
6. Zachowanie chromosomu najbardziej przystosowanego do kolejnego etapu

## Zastosowanie
Algorytmy genetyczne znalazły zastosowanie w:
- rozwiazywaniu problemów optymalizacji,
- rozpoznawaniu obrazów,
- przewidywaniu ruchów na giełdzie,
- tworzeniu grafiki
- projektowaniu budynków i maszyn

## Terminologia
- **Populacja** - zbiór osobników o określonej liczebności
- **Osobnik** (organizm) populacji w algorytmach genetycznych są zakodowane w postaci chromosomów zbiory - parametrów zadania (rozwiązania, punkty przestrzeni poszukiwań)
- **Chromosom** (łańcuchy, ciągi kodowe) - to uporządkowane ciągi genów
- **Gen** (cecha, znak, detektor) stanowi pojedynczy element genotypu, w szczególności chromosomu
- **Genotyp** (struktura) - to zespół chromosomów danego osobnika;
- **Fenotyp** jest zestawem wartości odpowiadających danemu genotypowi
- **Allel** to wartość danego genu, określana również jako wartość cechy lub wariant cechy
- **Locus** (pozycja) wskazująca miejsce danego genu w łańcuchu, czyli chromosomie;

### Funkcja przystosowania
(funkcja dopasowania, oceny - ang. fitness function) jest miarą przystosowania danego osobnika w populacji.

**Generacją** nazywamy kolejną iterację w algorytmie genetycznym,

Nowo utworzona populacja to **pokolenie.**

## Metody selekcji
- metoda ruletki
- strategia elitarna
- turniejowa
- rankingowa

# LOGIKA ROZMYTA
Klasyczna logika bazuje na dwóch wartościach reprezentowanych najczęściej przez: 0 i 1 lub prawda i fałsz.

## Zbiór rozmyty
Zbiór rozmyty jest jednoznacznie określony przez pewną funkcji przynależności (ang. membership function), która przyporządkowuje każdemu obiektowi jego przynależność do zbioru, równą liczbie z przedziału od zera do jeden.

## Wysokość zbioru rozmytego
Jest to największa wartość funkcji przynależności dla danego zbioru rozmytego.

## Rdzeń zbioru rozmytego
Są to wszystkie wartości x, dla których wartość funkcji przynależności jest równa 1.

## Zbiór normalny
Zbiór rozmyty A określony w X nazywa się normalnym (ang. normal) wtedy i tylko wtedy, gdy istnieje przynajmniej jeden taki element który ma, wysokość zbioru h(A) = 1.

## Nośnik
(ang. support) zbioru rozmytego A określonego w X jest zbiór nierozmyty, oznaczany jako suppA, zawierający wszystkie elementy ze zbioru A, dla których funkcja przynależności jest większa od zera.

## Moc
(liczba kardynalna, liczność) zbioru rozmytego A wyrażona przez liczbę nierozmytą, oznaczana jako suma Count(A) (ang. sigma-count), stanowi sumę arytmetyczną stopni przynależności elementów zbioru A

## SUMA
Zsumowany obszar zbiorów rozmytych

## Przecięcie
Obszar wspólny zbiorów rozmytych

## Rozszerzenie cylindryczne

## Złożenie relacji rozmytych
Polega na złożeniu dwóch relacji ze sobą

# LICZBY ROZMYTE
Liczby rozmyte (ang. fuzzy numbers) są pojęciem używanym w teorii zbiorów rozmytych, które umożliwiają modelowanie niepewności i rozmytych informacji. Główną ideą liczb rozmytych jest wprowadzenie stopnia przynależności do danego zbioru dla każdej wartości liczbowej. Liczby rozmyte znalazły zastosowanie w wielu dziedzinach ze względu na swoją zdolność do reprezentowania niepewności i elastyczności w podejmowaniu decyzji.

## ZASTOSOWANIE
1. **Sterowanie rozmyte:** W dziedzinie automatyki i sterowania, liczby rozmyte są używane do modelowania i kontroli systemów, które są trudne do opisania za pomocą tradycyjnych metod, zwłaszcza gdy mamy do czynienia z nieliniowymi i dynamicznymi systemami.
2. **Inżynieria systemów:** Liczby rozmyte są wykorzystywane do modelowania i analizy nieterminowych oraz rozmytych danych w systemach inżynierskich, takich jak systemy decyzyjne, planowanie produkcji czy projektowanie.
3. **Finanse:** W analizie finansowej liczby rozmyte mogą być stosowane do modelowania i prognozowania trudnych do uchwycenia nieregularności rynkowych, co umożliwia lepsze zarządzanie ryzykiem.
4. **Przemysł:** W zarządzaniu produkcją i jakością, liczby rozmyte mogą być używane do oceny wydajności, kontrolowania procesów i podejmowania decyzji w warunkach niepewności.
5. **Medycyna:** W dziedzinie medycyny liczby rozmyte mogą być stosowane w diagnostyce, gdzie często mamy do czynienia z niepewnymi lub subiektywnymi informacjami.
6. **Logistyka:** W planowaniu dostaw i zarządzaniu łańcuchem dostaw, liczby rozmyte mogą pomóc w uwzględnieniu nieregularności i zmiennych warunków, które wpływają na skomplikowane procesy logistyczne.
7. **Systemy eksperckie:** W dziedzinie sztucznej inteligencji i systemów eksperckich liczby rozmyte mogą być wykorzystywane do modelowania niepewności w wiedzy ekspertów i podejmowania decyzji na podstawie subiektywnych opinii.

Liczby rozmyte oferują bardziej elastyczną reprezentację danych niż tradycyjne liczby rzeczywiste, co pozwala na bardziej precyzyjne modelowanie sytuacji, w których mamy do czynienia z niepewnością i subiektywnością.

# Algorytm Wnioskowania
- **Zbiory Faktów (Wejście):**
    Zebranie faktów i informacji wejściowych, które są opisane jako zbiory rozmyte. Mogą to być pomiarowe dane, oceny ekspertów lub inne dane opisujące pewne aspekty problemu.
- **Zbiory Reguł (Wejście):**
    Zdefiniowanie reguł wnioskowania, które opisują relacje między faktami. Reguły te są zazwyczaj w postaci "jeśli... to..." i uwzględniają stopnie przynależności.
- **Wnioskowanie (Proces):**
    Wykorzystanie faktów i reguł wnioskowania do generowania nowych faktów lub wniosków. To etap, w którym logika rozmyta jest używana do przetwarzania danych wejściowych i generowania wyników.
- **Defuzzyfikacja (Wyjście):**
        Jeśli wynikiem algorytmu jest zbiór rozmyty, należy go przekształcić w konkretną wartość liczbową. Proces ten nazywa się defuzzyfikacją i ma na celu uzyskanie jednoznacznej odpowiedzi.

# Systemy rozmyte Takagi-Sugeno-Kanga
Modele systemów rozmytych Takagi-Sugeno-Kanga (TSK) charakteryzują się również regułową bazą wiedzy, przy czym poprzednik każdej reguły jest zdaniem rozmytym a następnik reguły stanowi nierozmyta funkcja zmiennych wejściowych
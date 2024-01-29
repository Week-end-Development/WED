```yaml
title:        "Testowanie aplikacji i systemów"
author:       "BO$"
date:         19.01.2024
keywords:     ["testowanie", "testowanie aplikacji"]
tags:         ["notes"]
categories:   ["semester5", "summary"]
comment:      "Notatki z wykładów."
copyright:    "All rights reserved (c) 2024 BO$ & WEEK-END DEVELOPMENT"
organization: "WEEK-END DEVELOPMENT"
status:       "raw"
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
      ╚═════╝ ╚══════╝  ╚═══╝  ╚══════╝  PRESENT:
```
> [!WARNING]
> ***MOŻLIWE BŁĘDY I NIEDOSKONAŁOŚCI***
>
> Plik może zawierać **błędy** i **być niekompletny** z powodu ograniczonej kadry, czasu, użycia Chatu GPT 3.5 do opracowania części tematów i niewielkiego udziału studentów. Zaleca się ostrożność i dodatkową weryfikację, a także zachęca do kontaktu w razie pytań lub uwag.
>
***WYKŁAD01--------------------------------------------***

# Co można testować?
- **Poprawność** – zgodność faktycznego zachowania programu z oczekiwanym,
- **Wydajność** – spełnianie wymagań czasowych,
- **Niezawodność** – odporność na działanie pod wymaganym obciążeniem,
- **Bezpieczeństwo** – odporność na ataki, ochrona danych.

# Refaktoryzacja
to poprawa jakości kodu bez zmiany jego funkcjonalności.

# Przypadek Testowy
Jest to zbiór danych wejściowych, wstępnych warunków, kroków wykonania i oczekiwanych rezultatów. \
PRZYPADEK TESTOWY:
- **niskiego poziomu (konkretny)** - przypadek testowy z zadanymi konkretnymi wartościami wejściowymi i oczekiwanymi wynikami.
- **wysokiego poziomu (logiczny)** - przypadek testowy bez konkretnych wartości wejściowych i oczekiwanych rezultatów.

# Przykładowe przypadki testowe
No.|Nazwa|Warunki wstępne|Kroki wykonania|Oczekiwany rezultat
---|:---:|:---:|:---:|:---:
1  |Próba zalogowania przy wpisaniu poprawnego loginu i hasła|Istnieje użytkownik zarejestrowany w systemie, na którym można przeprowadzić test.|1. Wprowadzenie poprawnego loginu oraz hasła. <br> 2. Kliknięcie przycisku „zaloguj”.|Użytkownik został zalogowany do systemu.
2  |Próba zalogowania przy wpisaniu poprawnego loginu i niepoprawnego hasła|Istnieje użytkownik zarejestrowany w systemie, na którym można przeprowadzić test.|1. Wprowadzenie poprawnego loginu oraz niepoprawnego hasła. <br> 2. Kliknięcie przycisku „zaloguj”.|Użytkownik nie został zalogowany. Pojawia się komunikat „Wprowadzono niepoprawny login lub hasło”.

# Scenariusz testowy
jest to dokument zawierający zbiór przypadków testowych (kroków) potrzebnych do sprawdzenia poprawności działania systemu w określonym zakresie.\
POWINIEN SKŁADAĆ SIĘ Z:
- **Identyfikacja scenariusza testowego**,
- **Wykaz czynności przygotowawczych scenariusza testowego**,
- **Wykaz przypadków testowych**,
- **Wykaz czynności końcowych scenariusza testowego**.

# Klasa równości
jest to zbiór danych o podobnym charakterze i sposobie przetwarzania, używanych do przeprowadzenia testu. \
DZIELI SIĘ NA:
- **Klasy poprawności** – zbiory wartości, dla których przewidujemy poprawne działanie programu.
- **Klasy niepoprawności** – zbiory wartości, dla których przewidujemy błędne działanie programu.

# Wartości brzegowe
to wartość znajdująca się na krawędzi danej klasy równoważności.

***WYKŁAD02.1--------------------------------------------***
# Testowanie definicja
> Testowanie to proces wykonywania programu lub systemu z zamiarem znalezienia błędów. - *[Myers, 1979]*

> Testowanie wiąże działania mające na celu ocenę atrybutów lub możliwości programu lub systemu i określenie, że spełni on swoje wymagania co do wyników. - *[Hetzel, 1988]*

## Czynności testowania:
- planowanie i nadzór,
- wybór warunków testowych,
- projektowanie i wykonywanie przypadków testowych,
- sprawdzanie wyników,
- ocena spełnienia kryteriów zakończenia,
- raportowanie procesów testowania i testowanego systemu,
- kończenie i zamykanie testów.

## Testowanie a BUGs
Testowanie umożliwia wykrycie błędów we wczesnych stadiach rozwoju oprogramowania, co pozwala zmniejszyć koszty usuwania tego błędu. Im dłużej BUG nie jest wykryty tym większe koszty jego usunięcia.

# Zapewnienie jakości metody
- **Inspekcja** - jest dokładnym sprawdzeniem kodu oprogramowania. Jej celem jest wyeliminowanie błędów "na miejscu".
- **Formalna weryfikacja oprogramowania** - jest to sposób określania i weryfikacji systemów oprogramowania poprzez stosowanie technik pochodzących z matematyki i logiki.
- **Zapobieganie błędom** jest najważniejszym, ale niestety zazwyczaj pomijanym aspektem zapewnienia jakości oprogramowania w dowolnym projekcie. To jest proces identyfikacji błędów, ich przyczyn oraz działania korygujące i zapobiegawcze po to, by zapobiec ich ponownemu wystąpieniu w przyszłości.
- **Odporność** na uszkodzenia jest zdolnością systemów oprogramowania do
zapobiegania zakłóceniom, nawet jeśli pojawiają się jakieś lokalne problemy.

# Występowanie błędów
- Oprogramowanie nie wykonuje czegoś, co wg specyfikacji powinno wykonywać.
- Oprogramowanie robi coś, czego wg specyfikacji robić nie powinno.
- Oprogramowanie wykonuje coś, o czym specyfikacja w ogóle nie wspomina.
- Oprogramowanie nie wykonuje czegoś, o czym specyfikacja wprawdzie nie wspomina, ale powinna.
- Oprogramowanie jest trudne do zrozumienia, trudne do użycia, powolne albo zdaniem testera – będzie w oczach użytkownika po prostu nieprawidłowe.

# Defekt
jako błąd popełniony przez projektantów lub programistów podczas tworzenia oprogramowania; defekt to problem odkryty w fazie cyklu życia oprogramowania późniejszej od fazy, w której pojawiła się przyczyna
# Błąd
problem, nieprawidłowe działanie ujawnione w tej samej fazie, w której pojawiła się przyczyna. \
RODZAJE BŁĘDÓW:
- **Error** - niezgodność pomiędzy dostarczonym przez funkcję, zaobserwowanym lub zmierzonym rezultatem jej wykonania, a oczekiwaną wartością. Błędy mogą być powodowane celowo w procesie testowania aplikacji
- **Failure** - niezdolność komponentu lub systemu do wykonania operacji w np. określonym w wymaganiach czasie
- **Exception** - nieobsługiwany wyjątek, który powoduje zawieszenie lub przerwanie działania programu.
- **Wyjątek** - może pojawić się w związku z adresowaniem pamięci, danymi, wykonaną operacją, przepełnieniem zmiennej, itp.
- **Defect, bug, fault** - wada modułu lub systemu, która może spowodować, że moduł lub system nie wykona zakładanej czynności. Defekt, który wystąpi podczas uruchomienia programu, może spowodować awarię
modułu lub systemu
- **Deviation, incident** - każde zdarzenie występujące w procesie testowania, które wymaga zbadania
---
- **Błędy składniowe:** - błędy ze względu na fakt, że składnia języka nie jest przestrzegana.
- **Błędy semantyczne:** - błędy spowodowane niewłaściwym wykorzystaniem instrukcji programu.
- **Błędy logiczne:** - błędy spowodowane faktem, że specyfikacja nie jest przestrzegana.
---
***Z punktu widzenia etapu wykrycia:***
- **Błędy kompilacji:** błędy składniowe i semantyczne wskazane przez kompilator.
- **Błędy maszyny** (ang. runtime): błędy dynamiczne, błędy semantyczne i błędy logiczne, które nie mogą być wykryte przez kompilator (zazwyczaj wykrywane podczas tzw. debugowania).

***WYKŁAD02.2--------------------------------------------***
# Testy jednostkowe
- najniższy poziom testów zorganizowanych
- sprawdzanie poprawności pojedynczych jednostek (klas, funkcji)
- fragment programu (jednostka) poddawany jest testowi, a wynik działania porównywany jest z wcześniej przygotowanym wynikiem wzorcowym
- bardzo elastyczne tworzenie przypadków testowych (można np. stworzyć zestaw testowy, który oczekuje na rzucenie określonego wyjątku)
- testy zautomatyzowane, wykonywane na bieżąco
- tworzą swoistą dokumentację – czytając kod testu, można rozpoznać, jaka funkcjonalność jest wymagana od danej jednostki

## Asercje
- warunki konieczne do zaliczenia testu
- jeden test – zero lub więcej asercji; niezaliczenie którejkolwiek asercji to przerwanie testu z wynikiem negatywnym

## ZALETY
- sprawdzenie poprawności poszczególnych części kodu,
- zapewnienie, że logika tej części działa na każdym etapie developmentu, zmian i utrzymania kodu.
- nieskomplikowane,
- krótkie,
- zautomatyzowane,
- czytelność (np. łatwe wprowadzenie nowego programisty do zespołu)

# Mock
jest obiektem podstawianym w miejsce rzeczywistego obiektu. Celem Mocka jest wymuszenie odpowiedniego obiektu zastępowanego. \
W budowaniu Mocków pomocne są dobrze znane frameworki, takie jak:
- PHPUnit
- Phony
- Prophecy
- Mockery

# Smoke testy
(testy dymne) będące częścią grupy zwanej testami weryfikacyjnymi. \
Pozwalają one sprawdzić podstawowe funkcjonalności aplikacji bez zagłębiania się w szczegóły i rezultaty działania aplikacji.
## ZALETY
- pokrycie podstawowych funkcjonalności bez zagłębiania się w szczegóły,
- zbudowanie stabilnego szkieletu pozwalającego na rozbudowywanie testów

# Testy integracyjne


***WYKŁAD03--------------------------------------------***
# Planowanie testowania
## Standard ANSI/IEEE 892/1983
Określenie zakresu, metodyki, zasobów i harmonogramu testowania. Zidentyfikowanie przedmiotów testowania, funkcji do przetestowania, czynności które trzeba wykonać, osób odpowiedzialnych za każdą z nich oraz ryzyka związanego z planem.

Najważniejszym celem planowania testowania jest zakomunikowanie – a nie zapisanie - zamiarów, oczekiwań i sposobu rozumienia testu przez zespół testowy.

## Tematyka testowania
Słownictwo i terminologia używane przez zespół testowy powinno być zdefiniowane w procesie planowania testowania. Trzeba zidentyfikować ewentualne różnice i uzgodnić je, żeby wszyscy mogli się ze sobą zrozumieć.

## Definicje
- **Połączenie (wersja)**. - Połączenie kodu i danych w całość, którą można testować. Plan testów powinien określać częstotliwość połączeń (codziennie, raz na tydzień) i ich przewidywaną jakość.
- **Informacja na temat wersji**. - Dokument dołączany do każdej nowej wersji (połączenia),określający co jest nowe, zmienione lub naprawione.
- **Wersja alfa**. - Wczesna wersja przeznaczona do częściowej dystrybucji dla nielicznych wybranych klientów oraz dla celów demonstracji. Nie ma być używana w rzeczywistych sytuacjach. Chcąc używać wersję alfa, trzeba znać dokładnie jej zawartość i poziom jakości.
- **Wersja beta**. - Oficjalna wersja przeznaczona do dystrybucji do potencjalnych klientów. Pamiętamy, że należy zdefiniować cele robienia wersji beta oprogramowania.
- **Zamrożenie specyfikacji**. Data w harmonogramie, po której specyfikacja ma być kompletna i przestać się zmieniać. Kto brał już udział w paru projektach, może podejrzewać, że taka data występuje tylko w baśniach, ale zdecydowanie należy zalecać jej ustalenie – po tej dacie specyfikacja wymagań może już tylko ulegać ograniczonym i ściśle kontrolowanym zmianom.
- **Zamrożenie funkcji**. Data w harmonogramie, po której programiści przestają dodawać do kodu nowe funkcje i koncentrują się wyłącznie na naprawianiu błędów.
- **Komitet błędów**. Grupa złożona z kierownika testów, kierownika projektu oraz kierownika produktu, spotykająca się raz w tygodniu w celu dokonania przeglądu raportów błędów i podjęcia decyzji, które z nich i jak mają być naprawione. Komitet błędów jest głównym użytkownikiem celów jakości i niezawodności, zdefiniowanych w planie testowania.

## Podział odpowiedzialności
1. **Wpływ zewnętrznych okoliczności:** Proces testowania jest podatny na wpływy z różnych obszarów, takich jak programiści, kierownictwo, autorzy tekstów technicznych itp.
2. **Brak podziału odpowiedzialności:** Bez dokładnego planowania podziału zadań, praca nad projektem, zwłaszcza testowanie, może stać się chaotyczna, prowadząc do utraty kontroli i pomijania istotnych zadań.
3. **Komunikacja i planowanie:** Aby uniknąć chaosu, zaleca się stworzenie jasnego podziału zadań i odpowiedzialności. Tabela może być użytecznym narzędziem do zobrazowania tego podziału.
4. **Rodzaje zadań:** Nie wszystkie zadania są proste i oczywiste. Warto dokładnie zdefiniować różne rodzaje zadań związanych z testowaniem, aby uniknąć nieporozumień.
5. **Analiza doświadczenia:** Doświadczenie jest pomocne przy podejmowaniu decyzji dotyczących podziału zadań. Analiza poprzednich projektów może dostarczyć wskazówek dotyczących tego, co należy uwzględnić.
6. **Właściciele zadań:** Tabela może zawierać listę różnych zadań w lewej kolumnie, a w pierwszym rzędzie na górze - potencjalnych właścicieli zadań. Oznaczenia "x" i "-" wskazują odpowiednio właściciela zadania i współuczestnika.
7. **Indywidualne podejście do projektu:** Każdy projekt może mieć unikalną strukturę i zależności międzygrupowe, więc ważne jest dostosowanie podziału zadań do konkretnej sytuacji.
8. **Historia projektów:** Wypytywanie o doświadczenia z poprzednich projektów może pomóc w identyfikacji aspektów, które zostały wówczas pominięte.

W skrócie, kluczowe jest odpowiednie planowanie, komunikacja i przypisanie odpowiedzialności w procesie testowania, aby uniknąć chaosu i utrzymania kontroli nad projektem.

## Fazy testowania
1. **Planowanie faz testowania:** Zespół testujący musi uwzględnić stosowany model wytwarzania i zdecydować, jakie fazy testowania będą realizowane w trakcie projektu. Modele takie jak prób i błędów, kaskadowy i spiralny mają różną liczbę faz.
2. **Komunikacja zespołu:** Po zidentyfikowaniu faz testowania, zespół testowy powinien przekazać swoje decyzje całemu zespołowi projektowemu. To pomaga w lepszym zrozumieniu modelu wytwarzania przez cały zespół.
3. **Kryteria wyjścia i kryteria wejścia:** Ważne pojęcia związane z fazami testowania to kryteria wyjścia i kryteria wejścia. Każda faza musi mieć jednoznacznie zdefiniowane kryteria, umożliwiające stwierdzenie zakończenia jednej fazy i rozpoczęcia kolejnej.
4. **Przykłady kryteriów:** Przykładowe kryteria to zakończenie etapu przeglądu specyfikacji po opublikowaniu protokołu przeglądu oraz rozpoczęcie testowania beta po zakończeniu testu akceptacyjnego bez znalezienia nowych błędów.
5. **Zapobieganie chaosowi:** Brak sprecyzowanych kryteriów wejścia i wyjścia może doprowadzić do chaotycznego testowania, podobnego do modelu prób i błędów.

Podsumowując, planowanie, komunikacja i stosowanie jasnych kryteriów wyjścia i wejścia są kluczowe dla skutecznego przeprowadzania faz testowania w projekcie.

## Strategia testowania
1. **Fazy testowania w strategii:** Określanie faz testowania jest kluczowym elementem formułowania strategii testowania. Strategia ta opisuje, jak testowanie będzie przeprowadzane zarówno jako całość, jak i w poszczególnych fazach projektu.
2. **Techniki testowania:** Przy wyborze technik testowania, należy zdecydować, czy skoncentrować się na technikach czarnej skrzynki czy szklanej skrzynki, a także kiedy i wobec których komponentów oprogramowania zastosować te techniki.
3. **Ręczne vs. automatyzacja:** Rozważanie, czy część kodu powinna być testowana ręcznie, a część za pomocą narzędzi i automatyzacji. Decyzja może również dotyczyć konieczności konstrukcji własnych narzędzi czy zakupu istniejących.
4. **Outsourcing testowania:** Czy warto zlecić testowanie wyspecjalizowanej, niezależnej firmie, pozostawiając jedynie zespół kontrolujący przebieg prac i kontaktujący się z firmą zewnętrzną?
5. **Złożoność decyzji:** Podjęcie decyzji odnośnie strategii testowania jest zadaniem skomplikowanym. Doświadczeni testerzy są kluczowi w procesie podejmowania decyzji, ponieważ może to wpłynąć na sukces całego projektu.
6. **Zrozumienie i zgoda w zespole:** Istotne jest, aby każdy członek zespołu projektowego zrozumiał i zgadzał się z przyjętą strategią testowania. Wspólne zrozumienie decyzji jest kluczowe dla skutecznego wykonania prac.

W skrócie, formułowanie strategii testowania to kompleksowe zadanie, które wymaga uwzględnienia wielu czynników, takich jak techniki testowania, automatyzacja, outsourcing i zrozumienie zespołu. Decyzje te mają kluczowe znaczenie dla sukcesu całego projektu.

## Wymagania dotyczące zasobów
1. **Planowanie zasobów:** Proces planowania zasobów polega na identyfikowaniu i definiowaniu potrzeb, które będą kluczowe dla przeprowadzenia testów przez cały okres projektu.
2. **Personel:** Warto rozważyć ilość osób, ich doświadczenie oraz specjalności potrzebne do testowania. Decyzje dotyczące zatrudnienia mogą obejmować pełny etat lub krótszy okres czasu.
3. **Sprzęt:** Planowanie musi uwzględniać potrzebny sprzęt, w tym komputery, sprzęt testowy, drukarki oraz narzędzia niezbędne do przeprowadzenia testów.
4. **Powierzchnia biurowa i laboratorium:** Określenie, gdzie będą umieszczone biura i laboratoria, jakie są ich rozmiary i wyposażenie.
5. **Oprogramowanie:** Względy dotyczące oprogramowania obejmują programy do przetwarzania tekstu, bazy danych, specjalne narzędzia. Warto zdecydować, które można zakupić, a które wymagają własnego stworzenia.
6. **Firmy specjalistyczne w zakresie testowania:** Decyzja o korzystaniu z firm zewnętrznych do testowania, kryteria wyboru i koszty związane z tym wyborem.
7. **Dostawy różnych materiałów:** Planowanie dostaw takich jak dyski, telefony, manuale, podręczniki oraz identyfikacja dodatkowych potrzeb na zakończenie projektu.
8. **Analiza szczegółowa potrzeb:** Szczegółowe potrzeby zasobów są zależne od specyfiki przedsiębiorstwa, projektu i zespołu. Warto przeprowadzić dokładną analizę potrzeb, ponieważ późniejsze zmiany mogą być trudne do wprowadzenia w budżecie.

Podsumowując, planowanie zasobów jest kluczowym etapem, który obejmuje różne aspekty, takie jak personel, sprzęt, oprogramowanie, przestrzeń biurowa, firmy zewnętrzne i dostawy. Dokładna analiza potrzeb jest niezbędna dla skutecznego i efektywnego przeprowadzenia testów w trakcie projektu.

## Zadania dla testerów
1. **Określanie zadań dla testerów:** Po ustaleniu faz testowania, strategii i potrzeb, można użyć tych informacji razem z danymi ze specyfikacji produktu do precyzyjnego określenia zadań dla poszczególnych testerów.
2. **Podział odpowiedzialności:** Wcześniejszy podział dotyczył ogólnej odpowiedzialności na wyższym poziomie. Określanie szczegółowych zadań jest procesem przydzielania konkretnych zadań poszczególnym testerom.
3. **Przykład opisu zadań:** Tabela 1 przedstawia przykładowy, znacznie uproszczony opis zadań testerów. Rzeczywiste opisy byłyby bardziej szczegółowe, precyzyjnie określając zadania poszczególnych testerów, co umożliwiałoby konstruowanie testów.
4. **Szczegółowość opisów:** Realne opisy zadań muszą być znacznie bardziej szczegółowe, obejmując precyzyjne zadania dla każdego testera, co umożliwi efektywne tworzenie testów.

## Harmonogram testów
1. **Harmonogram testów:** Faza harmonogramowania testów integruje wszystkie wcześniej omówione aspekty i wprowadza je do harmonogramu projektu. Jest to krytyczna faza, ponieważ funkcje, łatwe do zaprojektowania i zakodowania, mogą okazać się czasochłonne w procesie testowania.
2. **Wpływ na projekt:** Nieuwzględnienie potrzeb testowania może wpłynąć na cały harmonogram projektu. Funkcje, które wydawały się niewielkim wyzwaniem podczas projektowania, mogą generować znaczne trudności podczas testowania.
3. **Nierównomierne rozmieszczenie zadań:** Testowanie jest nierównomiernie rozmieszczone w czasie na osi projektu. Wzrasta ilość zadań i zaangażowanych osób w miarę zbliżania się do zakończenia projektu.
4. **Zależności czasowe:** Istnieje wzrastająca zależność testowania od wcześniejszych faz projektu. Opóźnienia w dostawie składników produktu mogą wpłynąć na harmonogram testowania.
5. **Zjadanie harmonogramu:** Problemem jest zjadanie harmonogramu, czyli opóźnienia w dostawie produktu na etapie testowania.
6. **Harmonogram oparty na kryteriach wejścia i wyjścia:** Aby uniknąć problemów, nie należy wprowadzać stałych dat w harmonogramie. Lepszym rozwiązaniem jest korzystanie z dat względnych, opartych na kryteriach wejścia i wyjścia dla poszczególnych faz testowych.
7. **Przykład harmonogramu opartego na datach względnych:** Tabela 3 przedstawia przykład harmonogramu, w którym daty są określane względem kryteriów wejścia i wyjścia, co pomaga zobaczyć zależności między zadaniami.
8. **Używanie oprogramowania do zarządzania harmonogramem:** Oprogramowanie do tworzenia harmonogramów ułatwia zarządzanie zależnościami między zadaniami. Kierownicy projektu często korzystają z takiego oprogramowania.

Podsumowując, faza harmonogramowania testów jest kluczowym etapem, który wymaga uwzględnienia wszystkich wcześniej omówionych aspektów. Unikanie stałych dat w harmonogramie na rzecz dat względnych opartych na kryteriach wejścia i wyjścia pomaga lepiej zarządzać zależnościami i unikać problemów związanych z harmonogramem projektu.

## Zadania testowe
W procesie planowania testowania, określa się metodologię generowania i wyboru zadań testowych, sposoby ich archiwizacji oraz zasady zastosowania i pielęgnacji. Zadania testowe są kluczowym elementem procesu testowania, a ich skuteczne zarządzanie jest niezbędne dla skuteczności całego procesu.

## Raporty błędów
Planowanie procesu zgłaszania i zarządzania błędami obejmuje szeroki zakres możliwości, począwszy od prostych metod, takich jak głośne wołanie, stosowanie żółtych samoprzylepnych kartek, aż po skomplikowane bazy danych do przechowywania i zarządzania raportami błędów. Szczegółowe zaplanowanie tego procesu jest kluczowe, aby każdy błąd był śledzony od momentu jego znalezienia aż do naprawy i weryfikacji, eliminując ryzyko zgubienia jakiegokolwiek błędu.

## Pomiary i statystyka
Dokonywanie pomiarów, zbieranie i analiza danych stanowi najskuteczniejszy sposób kontroli przebiegu projektu i testowania. W procesie planowania testowania konieczne jest szczegółowe zdefiniowanie rodzaju danych, które będą gromadzone, określenie, w jaki sposób te dane będą wykorzystywane do podejmowania decyzji, oraz określenie odpowiedzialności za zbieranie danych. Przykłady przydatnych danych obejmują ilość codziennie znalezionych błędów, listę błędów do naprawienia, aktualne raporty błędów ustawione według ważności, ilość błędów znalezionych przez poszczególnych testerów oraz ilość błędów znalezionych w poszczególnych funkcjach lub częściach programu.

## Ryzyko
Podczas planowania projektu często przeprowadza się analizę, mającą na celu zidentyfikowanie potencjalnych problemów lub zagrożeń, zwłaszcza w kontekście testowania. Przykładowo, ryzykiem może być zatrudnienie 10 nowych testerów, których doświadczenie ogranicza się do przeczytania konkretnej książki, a następnie zlecenie im przetestowania oprogramowania do nowej elektrowni atomowej. Inny scenariusz to brak świadomości konieczności przetestowania nowego oprogramowania na 1500 różnych modemach, pomimo braku odpowiedniego czasu w harmonogramie projektu. Testerzy są odpowiedzialni za identyfikację potencjalnych zagrożeń podczas planowania i za zgłaszanie ich kierownikowi testów lub kierownikowi projektu. Zidentyfikowane zagrożenia są uwzględniane w planie testowania i harmonogramie, aby zminimalizować ryzyko. Ważne jest, aby świadomość tych zagrożeń była obecna od samego początku projektu, aby uniknąć nieprzyjemnych niespodzianek w późniejszych fazach projektu.

## Podsumowanie
Konstrukcja planu testowania, nawet dla niewielkiego projektu, to poważne zadanie, które wymaga odpowiedniego zaangażowania. Nie wystarczy jedynie wypełnić gotowego szablonu; planowanie testowania powinno być procesem, w którym uczestniczą wszyscy testerzy oraz inne osoby z zespołu projektowego. Choć istnieje możliwość szybkiego wypełnienia pustych rubryk w szablonie, prawidłowe planowanie testowania wymaga zaangażowania wszystkich uczestników i może trwać tygodnie, a nawet miesiące. Jednak wcześniejsze i solidne planowanie umożliwia efektywną pracę w późniejszych fazach projektu. Choć początkujący tester może nie być odpowiedzialny za konstrukcję całego planu testowania, warto być przygotowanym do dostarczenia danych potrzebnych kierownikowi zespołu testującego lub menedżerowi testowania. Każdy uczestnik projektu ponosi odpowiedzialność za określony fragment testowania, a poszczególne harmonogramy, zagrożenia lokalne i indywidualne potrzeby łączą się w całość, tworząc tzw. główny plan testowania.

***WYKŁAD04--------------------------------------------***
# Aksjomaty testowania
- Programu nie da się przetestować całkowicie
- Testowanie jest ryzykowne
- Test nie udowodni braku błędów
- Im więcej błędów znaleziono, tym więcej błędów pozostało do znalezienia
- Nie wszystkie znalezione błędy zostaną naprawione
- Trudno powiedzieć, kiedy błąd jest błędem
- Specyfikacje produktów nigdy nie są gotowe

# Paradoks pestycydów
zjawisko swoistego uodparniania się oprogramowania na testy.

# Nie wszystkie błędy da się naprawić?
- Nie ma dość czasu.
- To tak na prawdę nie jest błąd.
- Zbyt wielkie ryzyko próby naprawy.
- Po prostu nie warto.

# Specyfikacje produktu nigdy nie są gotowe
W trakcie projektu specyfikacje produktu są dynamiczne i podlegają częstym zmianom, wynikającym z szybkiego postępu technologicznego oraz konkurencji na rynku. Testerzy muszą być przygotowani na te zmiany, które obejmują dodawanie nowych funkcji, modyfikacje istniejących, a także czasami usunięcie wcześniej przetestowanych elementów.



# Testerzy nie są najbardziej lubiani w zespole projektowym
Testerzy, choć ich rola polega na znajdowaniu błędów, często nie są ulubieńcami w zespole. Aby utrzymać pozytywne relacje:

1. **Wczesne znajdowanie błędów:** Koncentruj się na wykrywaniu problemów możliwie wcześnie, minimalizując zamieszanie przed planowanym wypuszczeniem produktu.
2. **Ograniczenie entuzjazmu:** Choć znajdowanie poważnych błędów jest ekscytujące, powstrzymaj się od nadmiernego zadowolenia, aby uniknąć konfliktów z programistami.
3. **Podkreślanie sukcesów:** Doceniaj bezbłędne fragmenty kodu, aby wspierać pozytywny obraz pracy testera.
4. **Komunikacja i relacje interpersonalne:** Nie ograniczaj się tylko do zgłaszania błędów. Nawiązuj pozytywne relacje, co przyczyni się do lepszej atmosfery w zespole.

W skrócie, równowaga między znajdowaniem błędów a dbaniem o pozytywne relacje jest kluczowa dla efektywnej współpracy w zespole projektowym.

# Test oprogramowania to ścisły zawód techniczny
W świecie testowania oprogramowania zmiany są zauważalne, a wzrost znaczenia profesjonalnych testerów i stosowanie dyscyplinowanych metod w projektach odzwierciedla dojrzałość branży, umożliwiając testerom rozwój kariery.

# Precyzja a trafność
Tester powinien właściwie rozumieć różnicę między precyzją a trafnością oraz dostosowywać swoje testy zgodnie z funkcją programu oraz ewentualnymi ograniczeniami, kierując się specyfikacją projektu.

# Weryfikacja i walidacja
W kontekście testowania oprogramowania, weryfikacja odnosi się do potwierdzenia, czy oprogramowanie spełnia określone wymogi specyfikacji, podczas gdy walidacja to potwierdzenie, że produkt spełnia rzeczywiste wymagania użytkownika; różnicę tę ilustruje przykład teleskopu Hubble`a.

# Jakość i niezawodność
Aby osiągnąć wysoką jakość oprogramowania, testerzy muszą przeprowadzać weryfikację i walidację, uwzględniając różnorodne cechy, takie jak niezawodność, możliwość obsługi na różnych platformach czy interakcje z użytkownikiem, zrozumieć, że niezawodność to jedynie jeden z elementów składających się na jakość produktu.

# Test i zapewnienie jakości (QA)
Ostatnia para definicji to testowanie i zapewnienie jakości (QA). Testowanie oprogramowania ma na celu wczesne wykrywanie błędów i zapewnienie ich naprawy, podczas gdy zapewnienie jakości polega na ustanawianiu standardów i metod w celu doskonalenia procesu wytwarzania i zapobiegania powstawaniu błędów. Chociaż obie dziedziny się nakładają, testerzy często wykonują zadania specjalistów od QA, a ci z kolei angażują się w testowanie. Klarowna komunikacja w zespole dotycząca odpowiedzialności za te obszary jest kluczowa, aby uniknąć nieporozumień i kosztownych niepowodzeń.

***WYKŁAD05.1--------------------------------------------***

Aby zapewnić jakość oprogramowania, używamy dwóch głównych środków: kontrolujemy proces wytwarzania, obejmujący technologię i metody produkcji, oraz przeprowadzamy testowanie oprogramowania. Zarówno sposób wytwarzania, jak i testowanie są kluczowe dla zapewnienia jakości, i ich skuteczne uzupełnianie się pozwala pełniej kontrolować jakość końcowego produktu.

# Koszty testów
Testy są nieodłącznym elementem procesu wytwórczego, generując koszty związane z planowaniem, przeprowadzaniem, analizą wyników i naprawą błędów. Istotne jest zauważenie, że testy samodzielnie nie wprowadzają błędów, lecz jedynie je ujawniają. Im później w procesie wykryjemy błąd, tym jego naprawa jest droższa, co może skutkować znacznymi stratami, włączając utratę klientów i obniżenie wizerunku. Koszty przeprowadzenia testów stanowią istotną część budżetu tworzenia aplikacji, oscylując zazwyczaj między 10 a 30% kosztów całego projektu.

# Przyczyny powstawania błędów w oprogramowaniu
- Błąd w specyfikacji wymagań,
- Błąd w projekcie oprogramowania,
- Pomyłka programisty,
- Pomyłka administratora,
- Zły proces produkcji oprogramowania.

# Rodzaje testów
## Testy ogólne
- Testy jednostkowe, modułowe – testy na poziomie pojedynczych, wydzielonych elementów technicznych aplikacji.
- Testy regresji – testy weryfikujące czy w wyniku zmian elementy aplikacji, które już były wcześniej przetestowane, nie mają błędów.
- Testy integracyjne – testy łączenia technicznych jednostek, modułów, czy całych systemów na okoliczność błędów współdziałania.
- Testy systemowe – testy całego systemu/aplikacji
## Testy specjalistyczne
- Testy bezpieczeństwa – sprawdzenie aspektów bezpieczeństwa i ochrony danych aplikacji
- Testy wydajnościowe – sprawdzenie aspektów wydajności oprogramowania, czasem pod tym określeniem rozumie się też testy skalowalności, obciążeniowe.
## Testy z udziałem użytkownika
- Testy użyteczności sprawdzające aspekty użyteczności aplikacji.
- Testy uruchomieniowe – sprawdzenie działania aplikacji w prawdziwych warunkach.
- Alfa testy – testy w specjalnie przygotowanym środowisku uruchomieniowym.
- Testy akceptacyjne – testy związane z formalnym odbiorem aplikacji.
## Testy automatyczne
Testy automatyczne w procesie testowania oprogramowania oferują efektywność i oszczędność, umożliwiając szybkie przeprowadzenie testów scenariuszowych i wydajnościowych. Ich zalety obejmują niskie koszty i krótki czas realizacji, zwłaszcza przy testach regresji. W przypadku aplikacji internetowych istnieją narzędzia, zarówno komercyjne, jak i darmowe, dedykowane do tworzenia testów automatycznych. Decyzja o zautomatyzowaniu testu zależy od różnych czynników, takich jak plany na przyszłość, stabilność aplikacji i potrzeba przeprowadzania testów regresji. Jednak niektóre elementy, takie jak zabezpieczenia CAPTCHA, są celowo projektowane, aby uniemożliwić automatyzację ich obsługi.
## Testy wydajnościowe
Testy wydajnościowe są kluczowym elementem procesu testowania oprogramowania, zwłaszcza gdy mierzymy się z realnym obciążeniem. Podczas tych testów, które odbywają się podczas prawdziwego użytkowania, oceniana jest zdolność aplikacji do obsługi planowanego obciążenia, a także sprawdzane są czasy odpowiedzi w akceptowalnych ramach czasowych. Warto zaznaczyć, że już na etapie formułowania wymagań uwzględnia się przewidywane obciążenie aplikacji, korzystając z analiz marketingowych. Skalowalność aplikacji, czyli jej zdolność do efektywnego rozpraszania obciążenia, staje się kluczowym zagadnieniem, zwłaszcza w kontekście wzrostu użytkowników. Testy wydajnościowe mogą dostarczyć cennych informacji na temat zachowania aplikacji podczas zwiększonego obciążenia oraz ewentualnej potrzeby rozszerzenia infrastruktury sprzętowej. Skuteczne skalowanie zależy również od projektu i wykonania aplikacji, a testy wydajnościowe mogą dostarczyć wskazówek na temat jej zdolności do skalowania.

## Retesty
Retesty, skrótowe określenie ponownych testów, występują w dwóch głównych kontekstach:
1. **Powtórzenie testu z innymi danymi wejściowymi:** W tej sytuacji retesty są przeprowadzane, gdy istnieją poważne wątpliwości co do funkcjonowania aplikacji dla zmienionych danych wejściowych. To wynika z faktu, że zachowanie aplikacji zależy nie tylko od samego oprogramowania, ale także od dostarczonych danych. Pewne błędy mogą ujawnić się tylko w przypadku konkretnych danych, ilości danych lub specyficznego przygotowania danych.
2. **Ponowne przetestowanie po naprawie błędu:** W przypadku znalezienia błędu podczas testu aplikacji, zwłaszcza w określonym scenariuszu, retesty są wykonywane po poprawieniu błędu. Celem jest zweryfikowanie, czy błąd został faktycznie naprawiony. W tym przypadku często przeprowadza się również testy regresywne dla wcześniej poprawnych testów, aby upewnić się, że naprawa jednego błędu nie wprowadziła nowych problemów w innych częściach aplikacji.

## Testy regresywne
Testy regresywne to procedury testowe, które koncentrują się na przetestowaniu obszarów aplikacji, które wcześniej przeszły pomyślnie proces testowania. Istnieje kilka sytuacji, w których przeprowadza się tego rodzaju testy:

1. **Etapowe rozwijanie oprogramowania:** Podczas dodawania nowych funkcjonalności w kolejnych wersjach oprogramowania istnieje ryzyko, że wcześniej przetestowane obszary przestaną działać poprawnie. Testy regresywne są potrzebne do sprawdzenia, czy istniejące funkcje wciąż działają zgodnie z oczekiwaniami.
2. **Zmiany w trakcie projektu:** Projekty często podlegają zmianom, a każda wprowadzona modyfikacja może potencjalnie wpłynąć na już działające części aplikacji. Testy regresywne są niezbędne, aby wykryć ewentualne błędy spowodowane zmianami.
3. **Utrzymanie aplikacji:** Po oddaniu aplikacji do utrzymania może być ona modyfikowana lub rozbudowywana. Przy każdej takiej zmianie istnieje ryzyko wprowadzenia nowych błędów w istniejącą aplikację.
4. **Poprawki błędów:** Po wykryciu błędu i wprowadzeniu poprawek do aplikacji, konieczne jest przeprowadzenie testów regresywnych, aby upewnić się, że naprawa nie spowodowała nowych problemów.

Aby ograniczyć koszty i czas związany z testami regresywnymi, zaleca się stosowanie automatyzacji testów, co pozwala na szybkie i efektywne sprawdzenie wielu scenariuszy testowych przy każdej modyfikacji aplikacji.

## Testy modułowe i systemowe
Aplikacje stają się coraz bardziej złożone, co skutkuje podziałem ich na wydzielone części funkcjonalności, zwane modułami. Te moduły mogą działać niezależnie od pozostałych, umożliwiając łatwiejsze zarządzanie skomplikowanymi strukturami aplikacji oraz ponowne wykorzystywanie modułów w różnych systemach. W celu weryfikacji poprawności działania aplikacji stosuje się testy modułowe i systemowe.

- **Testy modułowe:** Przeprowadzane przez programistów na etapie wytwarzania oprogramowania, testy modułowe skupiają się na weryfikacji poprawności działania poszczególnych modułów. Programista, odpowiedzialny za określoną część aplikacji, wykonuje te testy, co pozwala mu potwierdzić, że kod, za który jest odpowiedzialny, działa zgodnie z oczekiwaniami.

- **Testy systemowe:** Pomimo poprawnego funkcjonowania poszczególnych modułów, testy systemowe są konieczne, aby zweryfikować, czy cały system działa zintegrowanie i spełnia określone wymagania. Te testy oceniają interakcje między modułami, a także zapewniają, że całość aplikacji działa poprawnie.

## Testy z udziałem użytkownika
Testy użyteczności oceniają, jak łatwo użytkownicy mogą korzystać z aplikacji, a ich przeprowadzenie z udziałem rzeczywistych użytkowników jest kluczowe dla zweryfikowania praktycznego doświadczenia z interakcji z oprogramowaniem. Szczególnie istotne dla stron internetowych, gdzie złożony interfejs może wpłynąć na decyzję klientów o pozostaniu lub opuszczeniu strony.

Testy akceptacyjne, z kolei, angażują użytkowników w proces potwierdzania przydatności aplikacji oraz akceptacji produktu. Ich udział jest niezbędny dla zapewnienia, że aplikacja spełnia oczekiwania i potrzeby użytkowników w codziennym użytkowaniu. Dzięki tym testom można uniknąć problemów związanych z brakiem zrozumienia lub nieakceptowaniem funkcji aplikacji przez użytkowników końcowych.

## Kategoryzacja błędów
Wynikiem testów jest lista zgłoszeń potencjalnych błędów, które po odpowiedniej kategoryzacji umożliwiają skoordynowanie działań między klientem a dostawcą w celu ustalenia priorytetów naprawy oraz oceny, czy drobne usterek mogą być zaakceptowane na podstawie poprawek.

## Zlecanie testów na zewnątrz
Outsourcing testów aplikacji, zarówno poprzez zlecenie firmie zewnętrznej lub wynajęcie pracowników kontraktowych, może być uzasadnione brakiem wykwalifikowanego personelu wewnętrznego do planowania i przeprowadzania testów, zwłaszcza w przypadku specjalistycznych dziedzin, takich jak testy bezpieczeństwa, gdzie zewnętrzna ekspertyza może być kluczowa dla skutecznego badania podatności aplikacji i interpretacji wyników.

Outsourcing testów automatycznych, zwłaszcza w przypadku zaawansowanych scenariuszy, jest uzasadniony ze względu na potrzebę doświadczenia w tworzeniu i utrzymaniu testów. Specjaliści zajmujący się testami automatycznymi mogą efektywnie opracować scenariusze, a ich zaangażowanie pozwala oszczędzić pracę w przyszłości, gdy testy muszą być aktualizowane wraz z rozwojem aplikacji. Forrester Research wskazuje, że zatrudnienie wykwalifikowanych testerów może przyczynić się do skrócenia czasu trwania testów i zmniejszenia kosztów. Przy wyborze zewnętrznej firmy lub pracownika kontraktowego istotne jest sprawdzenie posiadanych certyfikatów, takich jak ISTQB lub ISEB, potwierdzających kwalifikacje testerów. Zlecenie testów siłami zewnętrznymi może być korzystną opcją, uwzględniając standardy, wiedzę fachową i doświadczenie potrzebne do zaplanowania i przeprowadzenia testów.

## Dlaczego warto prowadzić testy?
Decyzje o przeprowadzaniu testów oprogramowania są często motywowane aspektami finansowymi z uwzględnieniem różnych czynników. Oto podstawowe argumenty za przeprowadzanie testów:

1. **Koszty poprawienia błędu są najniższe na początkowym etapie:** Wczesne wykrycie błędów pozwala na ich naprawę w fazie rozwoju, co zazwyczaj jest mniej kosztowne niż naprawa błędów, które zostałyby odkryte w późniejszych etapach projektu.

2. **Koszty poprawienia błędu po produkcyjnym uruchomieniu są wysokie:** Poprawianie błędów w już uruchomionej aplikacji jest kosztowne, ponieważ oprócz samej naprawy trzeba uwzględnić koszty związane ze sprawdzeniem, czy poprawka nie wprowadza nowych problemów.

3. **Utracone korzyści związane z błędami w produkcji:** Błędy w działającej aplikacji mogą prowadzić do utraty korzyści, takich jak utrata klientów, niższe obroty czy negatywny wpływ na reputację firmy.

4. **Wpływ na wizerunek firmy:** W skrajnych przypadkach błędy w produkcyjnej aplikacji mogą negatywnie wpłynąć na wizerunek firmy, co może prowadzić do dalszych konsekwencji, takich jak utrata zaufania klientów czy negatywne recenzje.

W rezultacie skrupulatne testowanie pozwala na zidentyfikowanie i naprawienie błędów we wczesnych fazach projektu, co może znacznie obniżyć koszty oraz minimalizować negatywne skutki dla firmy.

***WYKŁAD05.2--------------------------------------------***
# Typy testów, jakim możemy poddać aplikacje webowe
- Testy funkcjonalne
- Testy niefunkcjonalne
- Testy użyteczności
- Testy wydajnościowe
- Testy obciążeniowe
- Testy przeciążeniowe
- Testy przenaszalności
- Testy bezpieczeństwa
- Testy pielęgnowalności

Testy funkcjonalne oraz niefunkcjonalne aplikacji webowych obejmują różne aspekty weryfikacji i oceny systemu:

**Testy funkcjonalne:**
Testy funkcjonalne koncentrują się na badaniu elementów systemu pod kątem poprawności funkcjonalności. Obejmują następujące aspekty:
1. **Weryfikacja komunikatów:** Sprawdzanie poprawności wyświetlanych komunikatów w interfejsie użytkownika.
2. **Komunikacja aplikacji z serwerem:** Testowanie poprawności i efektywności komunikacji pomiędzy aplikacją a serwerem.
3. **Działanie funkcjonalności:** Ocena, czy poszczególne funkcjonalności działają zgodnie z założeniami i specyfikacjami.


**Testy niefunkcjonalne:**
Testy niefunkcjonalne skupiają się na różnych aspektach działania systemu, niekoniecznie związanych z konkretnymi funkcjonalnościami. Obejmują następujące rodzaje:
1. **Testy obciążeniowe:** Sprawdzanie, jak aplikacja radzi sobie podczas działania w warunkach dużej liczby użytkowników lub dużej ilości danych.
2. **Testy wydajnościowe:** Ocena czasów odpowiedzi, szybkości działania i ogólnej wydajności aplikacji.
3. **Testy przeciążeniowe:** Badanie, jak aplikacja reaguje na nadmierny ruch i czy utrzymuje stabilność.
4. **Testy pielęgnowalności:** Ocena łatwości utrzymania aplikacji, m.in. poprzez badanie czytelności kodu, dokumentacji i możliwości wprowadzania zmian.
5. **Testy użyteczności:** Weryfikacja łatwości użytkowania aplikacji, zrozumiałości interfejsu i satysfakcji użytkownika.
6. **Testy niezawodności:** Badanie stabilności i niezawodności systemu, w tym odporności na awarie.
7. **Testy przenaszalności:** Sprawdzanie, czy aplikacja działa poprawnie na różnych platformach, przeglądarkach czy urządzeniach.

W skrócie, testy funkcjonalne oceniają poprawność funkcji, podczas gdy testy niefunkcjonalne koncentrują się na różnych aspektach wydajności, użyteczności i niezawodności systemu.

***WYKŁAD06--------------------------------------------***
# Cykl życia projektu
## Fazy
1. Planowanie,
    - **Określenie celów projektu:** Jasne i precyzyjne określenie, dlaczego tworzymy to oprogramowanie i jakie korzyści ma przynieść dla biznesu.
    - **Analiza wykonywalności:** Sprawdzenie, czy jesteśmy w stanie zrealizować projekt, czy posiadamy odpowiednie zasoby i kompetencje. Ocena, czy oprogramowanie będzie wykonalne z technicznego i finansowego punktu widzenia.
    - **Decyzja o realizacji projektu:** Na podstawie wyników analizy podejmowana jest decyzja, czy projekt ma wartość biznesową i czy warto go realizować. Weryfikacja, czy istnieje realna potrzeba stworzenia tego oprogramowania.
    - **Możliwość wdrożenia:** Analiza, czy po stworzeniu oprogramowania istnieje możliwość skutecznego wdrożenia go. Sprawdzenie, czy istnieją plany dotyczące implementacji oraz ewentualne wyzwania związane z wdrożeniem.
    - **Inicjacja projektu:** Oficjalne rozpoczęcie projektu, co obejmuje m.in. powołanie zespołu projektowego, przydzielenie zasobów, określenie roli i zakresu prac.
    - **Opracowanie harmonogramu:** Określenie terminów, kiedy poszczególne etapy projektu powinny zostać zrealizowane. Harmonogram stanowi plan działania, który pomaga w efektywnym zarządzaniu projektem.

    W rezultacie, inicjacja projektu to moment, w którym decyzje dotyczące celów, wykonalności i wartości biznesowej są podjęte, a projekt formalnie rozpoczyna się poprzez stworzenie planu działania w postaci harmonogramu.
1. Analiza,
    1. **Analiza biznesowa:**
        - Określenie, kto będzie głównym użytkownikiem systemu, jakie są ich potrzeby i cele.
        - Zidentyfikowanie, co system ma osiągnąć z perspektywy biznesowej.
        - Analiza miejsc, w których system będzie używany, oraz określenie, kiedy będzie to miało miejsce.
    1. **Analiza wymagań:**
        - Szczegółowe zdefiniowanie funkcji i cech, jakie system ma posiadać.
        - Określenie ograniczeń, takich jak technologiczne, prawne czy budżetowe.
        - Sporządzenie dokumentu zawierającego precyzyjne specyfikacje dotyczące tego, co system powinien robić.
    1. **Opis systemu jako czarnej skrzynki:**
        - W tym etapie system traktowany jest jako czarna skrzynka, co oznacza, że skupiamy się na tym, co system ma dostarczyć (funkcje, usługi), a nie na tym, jak będzie to zrealizowane wewnętrznie.
        - Wymagania są traktowane jako wejścia i wyjścia systemu, a szczegóły implementacyjne są pozostawione na etapy późniejsze.
    1. **Pierwsza faza projektowania:**
        - Opracowywanie wizji tego, jak system będzie działał z punktu widzenia użytkownika.
        - W tym momencie mogą być tworzone modele przypadków użycia, które opisują, jak różni użytkownicy będą korzystać z systemu.

    W rezultacie analizy biznesowej i analizy wymagań, projekt zyskuje jasne zrozumienie celów i oczekiwań, co stanowi podstawę dla dalszych etapów projektowania i implementacji systemu. Model przypadków użycia może być jednym z narzędzi, które pomagają zobrazować, jak użytkownicy będą interagować z systemem i jakie funkcje będą realizowane.

1. Projektowanie,
    1. **Koncepcja wewnętrznej logiki systemu:**
        - Określenie struktury wewnętrznej systemu, jak będą ze sobą powiązane różne komponenty.
        - Rozważanie algorytmów i procesów, które będą stosowane w systemie.
        - Tworzenie abstrakcyjnych modeli, które reprezentują wewnętrzną logikę systemu.
    2. **Architektura systemu:**
        - Określenie ogólnej struktury systemu, w tym podział na warstwy (np. warstwa interfejsu użytkownika, warstwa logiki biznesowej, warstwa danych).
        - Wybór odpowiednich technologii i narzędzi, które będą wykorzystane do implementacji poszczególnych elementów architektury.
    3. **Interfejsy - w tym interfejsy użytkownika:**
        - Projektowanie interfejsów użytkownika, które będą zgodne z wymaganiami użytkownika i zrozumiałe dla docelowej grupy odbiorców.
        - Ustalanie, jak użytkownicy będą wchodzić w interakcję z systemem, projektowanie ekranów, formularzy, przepływów pracy itp.
    4. **Zastosowanie metod obiektowych:**
        - Projektowanie w kontekście paradygmatu obiektowego, co oznacza traktowanie elementów systemu jako obiektów posiadających stan, zachowanie i identyfikator.
        - Wykorzystanie klas, dziedziczenia, polimorfizmu i innych koncepcji obiektowych do modelowania struktury i zachowań systemu.
    5. **Abstrakcja projektu:**
        - Tworzenie dokładnego, ale abstrakcyjnego modelu systemu, który jest niezależny od konkretnego języka programowania czy platformy.
        - Abstrakcja ta pozwala na zrozumienie struktury systemu bez zagłębiania się w szczegóły implementacyjne.

    W rezultacie projektowanie na tym etapie tworzy solidne podstawy dla implementacji systemu, dostarczając jasnego planu działania z perspektywy architektury i interfejsów. Ostateczne rozwiązania mogą być dostosowywane do szczegółów implementacyjnych, ale abstrakcje i modele pomagają w zrozumieniu ogólnego kształtu systemu.
1. Implementacja
    1. **Projekt implementacji i kodowanie:**
        - Na podstawie wcześniejszych faz projektowania tworzony jest projekt implementacji, który zawiera szczegóły dotyczące tego, jak planowane rozwiązania mają być zrealizowane.
        - Programiści przystępują do kodowania, czyli implementacji zaprojektowanych funkcji i modułów.
    2. **Instalacja:**
        - Przygotowywanie środowiska produkcyjnego do wdrożenia systemu.
        - Wdrażanie gotowego oprogramowania w środowisku docelowym, czyli instalacja na serwerach, stacjach roboczych itp.
    3. **Testy:**
        - Przeprowadzanie różnych rodzajów testów, takich jak testy jednostkowe, integracyjne, systemowe i akceptacyjne.
        - Weryfikacja, czy oprogramowanie działa zgodnie z założeniami, czy spełnia wymagania użytkownika.
    4. **Opracowywanie planu wsparcia i zarządzania:**
        - Tworzenie planu dotyczącego wsparcia technicznego, konserwacji, aktualizacji i obsługi błędów po wdrożeniu.
        - Określanie procedur zarządzania zmianami i utrzymania systemu w trakcie jego eksploatacji.
    5. **Opracowywanie planu rozwoju:**
        - Planowanie dalszego rozwoju systemu, uwzględniającego ewentualne aktualizacje, nowe funkcje i usprawnienia.
        - Określanie strategii rozwoju w dłuższej perspektywie czasowej.
    6. **Wdrożenie systemu:**
        - Ostateczne wdrożenie systemu do środowiska produkcyjnego, co może wiązać się z migracją danych, szkoleniem użytkowników, uruchamianiem procesów biznesowych itp.
    7. **Ocena sukcesu projektu:**
        - Ocena, czy cel projektu został osiągnięty, czy system spełnia oczekiwania użytkowników i czy proces wdrożenia przebiegł pomyślnie.

    Faza ta kończy formalnie proces tworzenia oprogramowania, przechodząc w fazę utrzymania i rozwoju, gdzie system jest nadal monitorowany, wspierany i ewoluowany w odpowiedzi na zmieniające się potrzeby i warunki.

# Modele tworzenia oprogramowania
## 1. **Metodologie Strukturalne:**
  - **Metoda wodospadowa (Waterfall):** Linearny model, gdzie każda faza jest wykonywana sekwencyjnie, a przechodzenie do następnej fazy zależy od zakończenia poprzedniej.
  - **Metoda równoległa:** Polega na równoczesnym wykonywaniu kilku faz projektu, co może przyspieszyć cały proces.
  - **Metoda etapowa:** Podobna do metody wodospadowej, ale bardziej elastyczna, pozwalająca na powtarzanie i modyfikowanie faz w razie potrzeby.
### Zalety:
   - **Jasny plan:** Faza po fazie, co pozwala na dokładne określenie zakresu i kosztów przed rozpoczęciem projektu.
   - **Łatwe zarządzanie:** Prosta kontrola postępów w każdej fazie.
   - **Dokumentacja:** Pełna dokumentacja każdej fazy ułatwia zrozumienie i utrzymanie systemu.
### Wady:
   - **Brak elastyczności:** Trudność w dostosowaniu się do zmian wymagań w trakcie projektu.
   - **Późna walidacja:** Testowanie odbywa się późno, co może prowadzić do późnego wykrywania błędów.
   - **Długi czas dostarczenia:** Klient otrzymuje pełny produkt dopiero po zakończeniu wszystkich faz.


## 2. **Szybkie Metody Wytwarzania Oprogramowania:**
  - **RAD (Rapid Application Development):** Skupia się na szybkim prototypowaniu i iteracyjnym rozwoju, umożliwia szybkie dostarczanie funkcjonalności.
  - **Metoda etapowa (Incremental):** System jest rozwijany w małych, inkrementalnych krokach, z każdym etapem dostarczającym nowe funkcje.
  - **Prototypowanie:** Tworzenie prototypu oprogramowania, który jest testowany przez użytkowników, a następnie rozwijany dalej.
### Zalety:
   - **Szybkie dostarczanie:** Możliwość dostarczania częściowego produktu szybko.
   - **Aktywne zaangażowanie klienta:** Klient ma wpływ na rozwój poprzez częste demonstracje i testowanie.
   - **Łatwa adaptacja:** Łatwość w dostosowaniu się do zmieniających się wymagań.
### Wady:
   - **Złożoność zarządzania:** Częste zmiany mogą prowadzić do utraty kontroli nad projektem.
   - **Brak dokładnej dokumentacji:** Brak pełnej dokumentacji może utrudnić zrozumienie systemu w późniejszym okresie.
   - **Wysoki nakład pracy:** Wymaga dużej ilości zaangażowania od klienta i zespołu projektowego.


## 3. **Metody Zwinne:**
  - **Agile (Zwinne):** Elastyczna metodyka, która kładzie nacisk na współpracę z klientem, adaptacyjność, dostarczanie wartości w krótkich iteracjach (sprintach).
  - **Programowanie Ekstremalne (XP - Extreme Programming):** Kładzie nacisk na elastyczność, komunikację, testowanie i ciągłe dostarczanie wartości, często stosuje praktyki takie jak programowanie parami, testy automatyczne, i ciągłe dostarczanie produktu.
### Zalety:
   - **Elastyczność:** Łatwość w dostosowaniu się do zmieniających się wymagań.
   - **Aktywne zaangażowanie klienta:** Stała współpraca z klientem, umożliwiająca szybką reakcję na jego potrzeby.
   - **Krótkie iteracje:** Regularne dostarczanie wartości klientowi w krótkich okresach.
### Wady:
   - **Brak pełnej dokumentacji:** Brak kompletnego planu i dokumentacji może sprawić trudności w zrozumieniu systemu.
   - **Możliwość nadmiernego skupiania się na bieżących zadaniach:** Brak długoterminowej strategii.
   - **Wymaga silnej komunikacji:** Efektywność metodyki zależy od otwartej i skutecznej komunikacji w zespole.

W ramach każdej z tych grup można spotkać różne metody i podejścia, a wybór zależy od charakterystyki projektu, wymagań klienta oraz preferencji zespołu programistycznego. Współcześnie często stosuje się kombinacje elementów różnych metodologii, co znane jest jako hybrydowe podejście.

Wybór odpowiedniej metodologii zależy od wielu czynników, w tym specyfiki projektu, wymagań klienta, umiejętności zespołu oraz preferencji organizacji. Często stosuje się również podejścia hybrydowe, łącząc korzyści różnych metodologii.



# V-Model
to model procesu, który zakłada, że etapy rozwoju oprogramowania i odpowiadające im etapy testowania są wzajemnie powiązane, a każde etapowe dostarczenie jest zweryfikowane przez odpowiednią fazę testową. Model ten przypomina literę "V", co symbolizuje połączenie etapów rozwoju i testowania. Poniżej przedstawiam główne etapy V-Modelu:

1. **Analiza wymagań:**
   - Etap ten obejmuje zbieranie, analizę i specyfikację wymagań dotyczących systemu. W tym momencie definiowane są cele projektu i funkcje, które system ma spełniać.

2. **Projekt systemu:**
   - Na tym etapie tworzony jest projekt systemu, opisujący strukturę, architekturę i komponenty systemu. Wzorce projektowe i zasady projektowania są również ustalane na tym etapie.

3. **Implementacja:**
   - Programiści rozpoczynają kodowanie na podstawie projektu systemu. Tworzone są moduły i komponenty, które później zostaną zintegrowane w całość.

4. **Testowanie jednostkowe:**
   - Każdy moduł jest testowany indywidualnie, aby zweryfikować, czy spełnia założenia i czy działa poprawnie. Testowanie jednostkowe skupia się na najmniejszych jednostkach oprogramowania.

5. **Integracja:**
   - Na tym etapie moduły, które przeszły testy jednostkowe, są integrowane w jednolity system. Sprawdzana jest poprawność współpracy między poszczególnymi komponentami.

6. **Testowanie integracyjne:**
   - Testowanie, które ma na celu sprawdzenie, czy połączenie i interakcje między zintegrowanymi modułami są poprawne. Weryfikowane jest również, czy system spełnia ogólne wymagania.

7. **Akceptacja systemu:**
   - W tym etapie system jest testowany pod kątem spełnienia założeń i wymagań klienta. Jest to etap akceptacji, w którym klient decyduje, czy system jest gotowy do wdrożenia.

8. **Wdrożenie:**
   - System jest wdrażany w środowisku produkcyjnym. Oznacza to, że jest dostarczany do użytku docelowego.

9. **Utrzymanie:**
   - Etap utrzymania obejmuje monitorowanie i konserwację systemu. Naprawiane są ewentualne błędy, wprowadzane są aktualizacje, a także udzielane jest wsparcie techniczne użytkownikom.

Model V-Modelu podkreśla konieczność równoczesnego prowadzenia procesów rozwoju i testowania, co ma na celu zapewnienie jakości produktu końcowego. Wszystkie etapy są powiązane z odpowiednimi etapami testowania, co pozwala na szybkie wykrywanie i naprawianie ewentualnych problemów.


# Wybór właściwej metodologii
Rodzaj metodologii | Strukturalna | Strukturalna | RAD | RAD | RAD | Agile
:---:|:---:|:---:|:---:|:---:|:---:|:---:
Zdolność do wytwarzania oprogramowania systemu | wodospadowa | równoległa | etapowa | prototypowania | z prototypem odrzuconym | Agile
który ma niejasne wymagania użytkownika | słaba | słaba | dobra | bardzo dobra | bardzo dobra | bardzo dobra
w którym nie znana jest technologia wykonania | słaba | słaba | dobra | słaba | bardzo dobra | słaba
który jest złożony | dobra | dobra | dobra | słaba | bardzo dobra | słaba
który jest bardzo wymagający | dobra | dobra | dobra | słaba | bardzo dobra | dobra
który ma krótki czas na wykonanie | słaba | dobra | bardzo dobra | bardzo dobra | dobra | bardzo dobra
który ma nieprzekraczalny termin dostarczenia | słaba | słaba | bardzo dobra | bardzo dobra | dobra | dobra


***WYKŁAD07--------------------------------------------***
# Poziomy testowania

Podejście do testowania metodą czarnej skrzynki (black-box testing) skupia się na zewnętrznych aspektach testowanego systemu, a tester nie ma dostępu do wewnętrznej logiki ani kodu źródłowego. Poniżej przedstawiam kluczowe cechy i zalety tego podejścia:

## Cechy testowania metodą czarnej skrzynki:

1. **Brak dostępu do kodu źródłowego:** Tester nie jest świadomy wewnętrznej struktury ani implementacji systemu, co pozwala na testowanie systemu z perspektywy użytkownika końcowego.
2. **Orientacja na wymagania funkcjonalne:** Testy czarnej skrzynki są oparte na określonych wymaganiach funkcjonalnych, które zostały zdefiniowane dla testowanego systemu.
3. **Zgodność z wymaganiami użytkownika:** Głównym celem jest sprawdzenie, czy system spełnia określone wymagania użytkownika i czy działa zgodnie z oczekiwaniami.
4. **Testowanie interfejsu użytkownika:** Skupienie na funkcjonalnościach dostępnych dla użytkownika, takich jak interfejs użytkownika, wejście/wyjście, operacje użytkownika.
5. **Pod koniec procesu testowania:** Często stosuje się to podejście pod koniec cyklu życia projektu, gdy system jest już skończony i gotowy do wdrożenia.
6. **Wykrywanie niepoprawnych funkcjonalności:** Celem jest wykrycie błędów związanych z brakiem zgodności pomiędzy implementacją systemu a określonymi wymaganiami.

### Zalety testowania metodą czarnej skrzynki:
1. **Widoczność dla użytkownika:** Skupienie się na funkcjach dostępnych dla użytkownika końcowego pozwala na weryfikację, czy system spełnia oczekiwania użytkownika.
2. **Niezależność od struktury wewnętrznej:** Testowanie niezależne od kodu źródłowego umożliwia zastosowanie testów przez zespół nieznający detali implementacyjnych.
3. **Sprawdzenie kompletności i zgodności:** Pozwala na ocenę, czy wszystkie funkcje zdefiniowane w wymaganiach zostały zaimplementowane i działają zgodnie z oczekiwaniami.
4. **Łatwość użycia:** Nie wymaga specjalistycznej wiedzy w dziedzinie programowania, co ułatwia użycie tego podejścia przez testerów bez głębokiego technicznego zrozumienia kodu.

### Wady testowania metodą czarnej skrzynki:
1. **Ograniczona pokrywalność kodu:** Ponieważ tester nie ma dostępu do kodu źródłowego, testowanie czarnej skrzynki może nie uwzględniać wszystkich gałęzi i przypadków wewnętrznej logiki programu. Istnieje ryzyko, że niektóre fragmenty kodu nie zostaną odpowiednio przetestowane.
2. **Brak detali dotyczących struktury systemu:** Tester nie jest świadomy struktury wewnętrznej systemu, co może sprawić trudności w zrozumieniu przyczyn znalezionych problemów i utrudnić ich debugowanie.
3. **Potrzeba szczegółowej specyfikacji:** Aby efektywnie przeprowadzać testy czarnej skrzynki, wymagana jest szczegółowa specyfikacja wymagań funkcjonalnych, co może być czasochłonne i wymagać starannej dokumentacji.
4. **Brak testowania wydajności i bezpieczeństwa:** Testowanie czarnej skrzynki skupia się głównie na funkcjonalnościach z perspektywy użytkownika, co może prowadzić do pominięcia testów wydajnościowych, bezpieczeństwa czy stabilności systemu.
5. **Trudności w identyfikacji problemów związanych z kodem źródłowym:** Tester nie ma możliwości identyfikacji konkretnych błędów w kodzie źródłowym, co może utrudnić szybkie zlokalizowanie i naprawę problemów.
6. **Zależność od jakości specyfikacji:** Efektywność testów czarnej skrzynki silnie zależy od jakości dostępnych specyfikacji wymagań. Jeśli są one niedokładne lub nieprecyzyjne, może to prowadzić do pominięcia kluczowych przypadków testowych.

Pomimo tych wad, testowanie czarnej skrzynki jest nadal cennym narzędziem w procesie testowania, zwłaszcza pod kątem weryfikacji zgodności systemu z wymaganiami użytkownika i oceny, czy spełnia on oczekiwania biznesowe.

Podejście czarnej skrzynki stanowi istotny element kompleksowego planu testowego, zwłaszcza w kontekście weryfikacji, czy system spełnia założone cele biznesowe i oczekiwania użytkownika.


# Testowanie White-box
Podejście do testowania metodą białej skrzynki, znane również jako white-box testing, opiera się na pełnej znajomości kodu źródłowego testowanej aplikacji. Testerzy mają dostęp do struktury kodu i wewnętrznej logiki programu, co umożliwia im skoncentrowanie się na różnych ścieżkach wykonania, gałęziach decyzyjnych oraz weryfikacji poprawności algorytmów. Poniżej przedstawiam kluczowe aspekty tego podejścia:

## Cechy testowania metodą białej skrzynki:
1. **Pełen wgląd do kodu źródłowego:** Testerzy mają pełną widoczność wewnętrznej struktury i implementacji testowanego systemu, co pozwala na precyzyjne planowanie i wykonanie testów.
2. **Systematyczna analiza kodu:** Testowanie białej skrzynki obejmuje systematyczne sprawdzanie poszczególnych elementów kodu, takich jak pętle, warunki, instrukcje, aby zapewnić pełne pokrycie kodu.
3. **Dobra możliwość dostosowania danych testowych:** Znając dokładnie, jak działa kod, testerzy mogą dostosować dane testowe w taki sposób, aby obejmować różne przypadki oraz skrajne sytuacje.
4. **Możliwość przeprowadzenia testów statycznych i dynamicznych:**
    - **Testy statyczne:** Analiza kodu bez jego uruchamiania, mające na celu znalezienie potencjalnych problemów, takich jak nieprzypisane zmienne czy nieużywane fragmenty kodu.
    - **Testy dynamiczne:** Wykonanie programu z dostarczonymi danymi testowymi w celu oceny zachowania systemu w czasie rzeczywistym.

## Zalety testowania metodą białej skrzynki:
1. **Pełna kontrola nad testami:** Dostęp do kodu źródłowego pozwala testerom na pełną kontrolę nad procesem testowania i możliwość dokładnego zrozumienia działania systemu.
2. **Wykrywanie błędów w kodzie:** Umożliwia wykrywanie błędów związanych z implementacją, takich jak błędy logiczne, nieskończone pętle czy nieprawidłowe warunki.
3. **Dostosowywanie danych testowych:** Możliwość dostosowania danych testowych w zależności od wewnętrznej struktury kodu umożliwia testowanie różnych przypadków i warunków.

## Wady testowania metodą białej skrzynki:
1. **Wymaga dostępu do kodu źródłowego:** Konieczność posiadania kodu źródłowego, co może stanowić problem w przypadku oprogramowania dostarczanego przez zewnętrznych dostawców lub oprogramowania komercyjnego.
2. **Brak orientacji na użytkownika końcowego:** Testowanie białej skrzynki skupia się głównie na strukturze kodu, co może prowadzić do pominięcia aspektów związanych z doświadczeniem użytkownika.
3. **Często wymaga specjalistycznej wiedzy:** Testerzy muszą posiadać specjalistyczną wiedzę dotyczącą struktury kodu i zrozumienia algorytmów, co może sprawić, że proces ten jest bardziej wymagający.

Podsumowując, testowanie białej skrzynki jest skutecznym podejściem, zwłaszcza w przypadku identyfikowania błędów związanych z implementacją. Jednak jego skuteczność zależy od dostępu do kodu źródłowego oraz doświadczenia i umiejętności zespołu testującego.

# testowanie Grey-box
Testowanie metodą szarej skrzynki (grey-box testing) stanowi połączenie elementów testowania białej i czarnej skrzynki. W tym podejściu testerzy posiadają pewną, choć niepełną, wiedzę na temat wewnętrznej struktury i implementacji testowanego systemu. Celem testów szarej skrzynki jest wykrycie potencjalnych wad wynikających zarówno z błędów implementacyjnych, jak i z nieprawidłowego użycia oprogramowania. Poniżej przedstawiam kluczowe aspekty tego podejścia:

## Cechy testowania metodą szarej skrzynki:
1. **Ograniczona znajomość kodu źródłowego:** Testerzy posiadają pewne informacje na temat wewnętrznej struktury oprogramowania, ale nie mają pełnego dostępu do kodu źródłowego.
2. **Skupienie na funkcjonalnościach z perspektywy użytkownika:** Testowanie koncentruje się zarówno na zewnętrznych aspektach, takich jak interfejs użytkownika i funkcjonalności dostępne dla użytkownika końcowego, jak i na pewnych elementach wewnętrznej struktury kodu.
3. **Zastosowanie różnych technik testowania:** Testerzy mogą korzystać zarówno z testów czarnej skrzynki (ocenianie zgodności z wymaganiami) jak i z testów białej skrzynki (analiza strukturalna kodu).
4. **Dostosowywanie danych testowych:** Możliwość dostosowywania danych testowych, aby obejmować różne przypadki, w tym te związane z wewnętrzną strukturą kodu.
5. **Identyfikacja potencjalnych zagrożeń bezpieczeństwa:** Testerzy mogą próbować identyfikować potencjalne luki bezpieczeństwa, korzystając z kombinacji wiedzy na temat interfejsu użytkownika i analizy kodu.

## Zalety testowania metodą szarej skrzynki
1. **Zbalansowane podejście:** Podejście szarej skrzynki łączy zalety testowania czarnej skrzynki (perspektywa użytkownika) z testowaniem białej skrzynki (dostęp do pewnych detali implementacyjnych).
2. **Dostęp do krytycznych obszarów kodu:** Możliwość skoncentrowania się na krytycznych obszarach kodu, co może pomóc w identyfikacji potencjalnych problemów.
3. **Efektywne wykrywanie błędów:** Dzięki kombinacji różnych technik testowania, podejście szarej skrzynki jest efektywne w wykrywaniu różnorodnych błędów.

## Wady testowania metodą szarej skrzynki:
1. **Wymaga specjalistycznej wiedzy:** Testerzy muszą posiadać zarówno umiejętności związane z testowaniem oprogramowania, jak i pewną wiedzę na temat wewnętrznej struktury kodu, co może stanowić wyzwanie.
2. **Niepełna widoczność kodu:** Brak pełnego dostępu do kodu źródłowego może uniemożliwić pełne zrozumienie wszystkich detali implementacyjnych.
3. **Wzrost kosztów testowania:** W porównaniu z testowaniem czarnej skrzynki, testowanie szarej skrzynki może być bardziej kosztowne ze względu na dodatkowe wymagania wiedzy i zasobów.

Podsumowując, testowanie metodą szarej skrzynki stanowi kompromisowe podejście między testowaniem czarnej i białej skrzynki, co pozwala na efektywne wykrywanie różnorodnych błędów i potencjalnych problemów w oprogramowaniu.

# Formalna analiza kodu
Proces sterujący testowaniem metodą białej skrzynki obejmuje identyfikację problemów, przestrzeganie z góry narzuconych zasad, przygotowanie do przeglądu oraz tworzenie raportów, z elementami wyróżniającymi takimi jak identyfikacja błędów, przestrzeganie ustalonych zasad, przygotowanie uczestników, oraz dokumentacja wyników w formie raportów.

# Standardy i reguły kodowania
Standardy narzucają ustalone, sztywne zestawy wymagań, zazwyczaj bez możliwości wyjątków, które określają, jakie instrukcje programistyczne należy używać, a jakich nie powinno się używać. Reguły kodowania natomiast stanowią sugerowane, praktyczne wskazówki, rekomendacje i zalecenia dla programistów. Narzucanie standardów i reguł kodowania wynika z kilku istotnych powodów:

1. **Podniesienie niezawodności oprogramowania:** Standardy eliminują kiepsko udokumentowane triki i narzucają sprawdzone techniki programistyczne, co przyczynia się do zwiększenia niezawodności oprogramowania.
2. **Łatwiejsze czytanie, zrozumienie i modyfikowanie oprogramowania:** Standardy i reguły kodowania ułatwiają zrozumienie struktury kodu dla wszystkich członków zespołu programistycznego. Konsystentny i czytelny kod przyspiesza procesy modyfikacji i utrzymania systemu.
3. **Ułatwiona przenośność pomiędzy różnymi platformami systemowymi:** Zastosowanie standardów pozwala na tworzenie kodu, który jest bardziej przenośny między różnymi platformami, co jest istotne w przypadku wieloplatformowych projektów.

Narzucanie standardów i reguł kodowania stanowi istotny element praktyk inżynierii oprogramowania, mający na celu poprawę jakości kodu, zwiększenie jego czytelności i ułatwienie współpracy w zespole programistycznym. Wprowadzając te praktyki, organizacje dążą do stworzenia bardziej niezawodnych, zrozumiałych i łatwo utrzymywanych systemów.

# Analiza pokrycia kodu
Analiza dynamiczna w testowaniu metodą białej skrzynki umożliwia przetestowanie stanu programu oraz przepływów sterowania między tymi stanami. Proces ten obejmuje sprawdzanie wejścia i wyjścia każdej jednostki programu, dąży do wykonania każdego wiersza kodu i każdej możliwej ścieżki programu. Analiza dynamiczna ma na celu znalezienie błędów, zwłaszcza w obszarach, które są rzadko wykonywane, co jest istotne podczas projektowania i implementowania funkcji. Często błędy w fragmentach programu, które są rzadko odwiedzane, mogą pozostać niezauważone przez projektantów.

Programy śledzące, takie jak analizatory pokrycia kodu, umożliwiają monitorowanie wykonywanych wierszy kodu podczas przetwarzania danych testowych. Analiza pokrycia kodu może obejmować:
- Analizę pokrycia instrukcji (pokrycie wiersza kodu): wykonanie przynajmniej jednokrotne każdej instrukcji w programie.
- Pokrycie rozgałęzień programu: testowanie jak największej liczby możliwych ścieżek programu.
- Analizę pokrycia warunków logicznych: uwzględnienie złożonych warunków logicznych instrukcji warunkowej.

Dodatkowo, analiza pokrycia kodu pozwala na sporządzenie szczegółowych statystyk dotyczących wykonania testowanego programu. To umożliwia uzyskanie informacji na temat tego, które części kodu nie zostały pokryte przez zastosowane testy. Analiza dynamiczna jest więc skutecznym narzędziem w identyfikowaniu obszarów wymagających dodatkowego testowania oraz w ułatwianiu śledzenia postępów testów w zakresie różnych aspektów kodu źródłowego.

# Testowanie mutacyjne
Testowanie oparte na generowaniu składniowo poprawnych mutantów testowanego programu polega na automatycznym tworzeniu zmienionych wersji programu, zwanych mutantami. Mutanty są programami wolnymi od błędów składniowych, różniącymi się od oryginału drobnymi szczegółami w różnych instrukcjach.

Proces testowania mutantów, zwany także "zasiewem błędów", przebiega następująco:
1. **Generowanie mutantów:** Tworzenie kolejnych wersji testowanego programu, które różnią się od oryginału w niewielkich szczegółach instrukcji. To może obejmować zmiany w warunkach logicznych, operatorach czy kolejności instrukcji.

2. **Wykonywanie mutantów:** Mutanty oraz oryginalny program są równocześnie wykonywane dla tych samych danych wejściowych, które są dostarczane przez testera lub generowane losowo.

3. **Analiza wyników:** Celem jest usunięcie z puli jak największej liczby mutantów. Mutanty, dla których zaobserwowano różnice w działaniu lub otrzymano inny wynik niż w przypadku programu testowanego, są uznawane za błędne i usuwane.

Testowanie mutantów ma na celu identyfikację potencjalnych słabości programu oraz zbadanie, jak dobrze program radzi sobie z różnymi modyfikacjami. Eliminowanie błędnych mutantów pozwala na zidentyfikowanie obszarów, które są bardziej odporne na zmiany oraz na ocenę skuteczności testów. To podejście jest szczególnie przydatne w kontekście doskonalenia procesu testowania i zwiększania odporności oprogramowania na różne modyfikacje.

# Testowanie danych – warunki graniczne
W tym kontekście zakłada się, że algorytm i jego implementacja są poprawne, a ewentualne błędy wynikają z ograniczeń związanych z platformą sprzętową i używanym językiem programowania. Celem testowania jest zaprojektowanie przypadków testowych, które skupiają się na wartościach granicznych i unikatowych związanych z architekturą komputera, na którym będzie uruchamiany testowany program, a także z językiem implementacji i realizowanym algorytmem.

### Kluczowe aspekty testowania:

1. **Wartości graniczne:** Przypadki testowe powinny obejmować skrajne przypadki, czyli wartości na granicy akceptowalnego zakresu. To pozwala sprawdzić, czy program poprawnie obsługuje krawędzie dopuszczalnych wartości.

2. **Unikatowe przypadki:** Testowanie powinno uwzględniać unikatowe sytuacje, które mogą wystąpić w kontekście konkretnej platformy sprzętowej, języka programowania czy też samego algorytmu. Obejmuje to rzadkie kombinacje warunków, specyficzne dla danej implementacji.

3. **Architektura komputera:** Testowanie powinno uwzględniać różnice w architekturze komputera, takie jak wielkość słowa, endianność, dostępność konkretnych instrukcji procesora, czy parametry pamięci podręcznej.

4. **Język programowania:** Różnice w języku programowania mogą wpływać na zachowanie programu. Testowanie powinno uwzględniać specyficzne cechy danego języka, takie jak zarządzanie pamięcią, obsługa błędów czy dostępność konkretnych funkcji.

5. **Algorytm:** Przypadki testowe powinny być dostosowane do zrozumienia, jak algorytm reaguje na różne dane wejściowe i sytuacje graniczne.

Testowanie skoncentrowane na tych aspektach pozwala zidentyfikować potencjalne problemy związane z konkretną platformą, językiem programowania czy algorytmem, co przyczynia się do doskonalenia działania programu w rzeczywistych warunkach jego użytkowania.

# Wartości specjalne i transcendentne
Problem doboru wartości testowych jest kluczowym aspektem w testowaniu oprogramowania. W przypadku różnych operacji, struktur danych i algorytmów, istnieje potrzeba starannego wyboru testów, które sprawdzą poprawne funkcjonowanie systemu w różnych warunkach. Poniżej przedstawione są przykłady doboru wartości testowych dla różnych przypadków:

1. **Operacje arytmetyczne:**
    - **Maksymalne i minimalne wartości operandów:** Sprawdzenie, czy program poprawnie obsługuje skrajne wartości liczbowe.
    - **Elementy jednostkowe:** Testy z małymi wartościami, aby zweryfikować dokładność i precyzję operacji.

2. **Tablice:**
    - **Pusta tablica:** Sprawdzenie, czy program poprawnie radzi sobie z pustą tablicą.
    - **Indeksy poza zakresem:** Testowanie, czy program obsługuje sytuacje, gdy indeksy wychodzą poza granice tablicy.
    - **Poprawne wartości indeksów:** Weryfikacja poprawności obsługi poprawnych wartości indeksów.

3. **Struktury danych - listy i drzewa:**
    - **Puste wskaźniki (odniesienia):** Sprawdzenie, czy program poprawnie obsługuje sytuacje z pustymi wskaźnikami.
    - **Jednoelementowe struktury:** Testowanie dla struktur zawierających tylko jeden element.
    - **Wieloelementowe struktury:** Sprawdzenie wydajności i poprawności dla struktur zawierających wiele elementów.
    - **Listy z zerwanym wskaźnikiem:** Testowanie sytuacji, gdy wskaźniki w liście są niepoprawne.

Dobór wartości testowych powinien być zróżnicowany, obejmować różne przypadki graniczne oraz sytuacje, które mogą prowadzić do potencjalnych błędów. Testy powinny obejmować scenariusze, które mogą wystąpić w rzeczywistych warunkach użycia programu, co pozwala na pewność, że oprogramowanie działa poprawnie i efektywnie.

# Metoda klas równoważności
Metoda klasy równoważności w testowaniu oprogramowania pozwala na efektywne ograniczenie dużego zbioru zadań testowych do mniejszych klas, gdzie każda klasa reprezentuje zestaw testów, które sprawdzają aplikację pod kątem tego samego błędu. Klasy równoważności grupują przypadki testowe o podobnym zachowaniu lub oczekiwanym rezultacie, co pozwala skoncentrować testy na reprezentatywnych przypadkach, minimalizując wysiłek i zasoby potrzebne do kompleksowego testowania różnych warunków wejściowych.

# Metoda Monte Carlo i metody genetyczne
Opisany algorytm genetyczny jest wykonywany cyklicznie i składa się z kilku kluczowych etapów:

1. **Inicjalizacja populacji:** W pierwszym cyklu populacja jest dobierana losowo, co oznacza, że tworzona jest grupa początkowych danych testowych.

2. **Operacje genetyczne w każdym cyklu:**
    - **Krzyżowanie:** Operacja polegająca na wymianie części pomiędzy wektorami bitowymi w populacji.
    - **Mutacja:** Losowy bit w wektorze bitowym ulega zmianie, wprowadzając pewne losowe zmiany w chromosomach.
    - **Reprodukcja:** Elementy biorące udział w tworzeniu nowej populacji są wybierane na podstawie wartości funkcji dopasowania, co oznacza, że lepiej dopasowane elementy mają większą szansę na reprodukcję.

3. **Funkcja dopasowania:** Wartość funkcji dopasowania opisuje, jak dobrze dany element (chromosom) spełnia określone kryteria. Elementy o lepszym dopasowaniu mają większą szansę na przetrwanie i reprodukcję.

4. **Optymalizacja populacji:** Algorytm genetyczny ma na celu ewolucję populacji w kierunku lepszych rozwiązań, co jest realizowane poprzez iteracyjne zastosowanie operacji genetycznych.

5. **Przekształcenie danych wejściowych:** Algorytm wymaga przekształcenia danych wejściowych do postaci wektorów bitowych (chromosomów), co wiąże się z dodatkowym kosztem.

Algorytm genetyczny pozwala na efektywne przeszukiwanie przestrzeni rozwiązań i znalezienie optymalnych lub satysfakcjonujących rozwiązań dla danego problemu. Chociaż może wymagać dodatkowego kosztu związanego z przekształceniem danych wejściowych, jego zastosowanie może prowadzić do redukcji liczby danych testowych oraz poprawy jakości rozwiązania w kolejnych cyklach ewolucji.


# POZIOMY TESTÓW
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
    - Testowanie, które ma na celu zweryfikowanie, czy system spełnia określone kryteria akceptacyjne klienta lub użytkownika.
    - Często obejmuje testy akceptacyjne użytkownika (UAT).

5. **Poziom regresji:**
    - Testowanie mające na celu sprawdzenie, czy wprowadzone zmiany lub nowe funkcje nie wpłynęły negatywnie na istniejącą funkcjonalność.

6. **Poziom wydajnościowy:**
    - Testowanie wydajności, skalowalności i odporności systemu na obciążenie.

7. **Poziom bezpieczeństwa:**
    - Testowanie zabezpieczeń systemu przed potencjalnymi zagrożeniami.

8. **Poziom kompatybilności:**
    - Testowanie zgodności systemu z różnymi środowiskami, platformami i konfiguracjami sprzętowymi.

Podczas procesu testowania, opracowywane są przypadki testowe i dokumentacja podtestowa dla każdego z tych poziomów, zgodnie z ustalonymi potrzebami i celami testów. Każdy poziom ma swoje specyficzne cechy i skupia się na różnych aspektach funkcji systemu.

### Klasyfikacja testów
Potrzeby klientów <br> $\downarrow$| $\leftrightarrow$ | Testowanie akceptacyjne <br> $\uparrow$
:---:|:---:|:---:
Wymagania <br> $\downarrow$| $\leftrightarrow$ | Testowanie systemowe<br> $\uparrow$
Projektowanie <br> $\downarrow$| $\leftrightarrow$ | Testowanie integracyjne <br> $\uparrow$
Napisanie kodu| $\leftrightarrow$ | Testowanie jednostkowe

# Poziomy testowania oprogramowania
Proces testowania oprogramowania obejmuje różne poziomy, z których każdy koncentruje się na określonych aspektach funkcji systemu. Poniżej przedstawione są główne poziomy testowania oprogramowania:

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

W praktyce, organizacje mogą dostosowywać i rozwijać te poziomy w zależności od swoich konkretnych potrzeb i kontekstu projektu. Każdy poziom ma swoje unikalne cechy i przyczynia się do zapewnienia kompleksowego i wysokiej jakości oprogramowania.


# Podział testów
Podział testów oprogramowania można realizować ze względu na różne kryteria. Poniżej przedstawiono podział ze względu na kilka kluczowych aspektów:

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

1. **Testy Strukturalne (Białe Skrzynki):**
   - Oceniają strukturę wewnętrzną kodu.
   - Przykłady to testy jednostkowe, testy instrukcji, pokrycia kodu.

2. **Testy Funkcjonalne (Czarne Skrzynki):**
   - Oceniają funkcjonalność systemu bez wiedzy o jego strukturze wewnętrznej.
   - Przykłady to testy akceptacyjne, testy przypadków użycia.

### Inne kategorie:

1. **Testy Wydajnościowe:**
   - Sprawdzają wydajność, skalowalność i reakcję systemu na obciążenie.

2. **Testy Bezpieczeństwa:**
   - Ocena systemu pod kątem zabezpieczeń przed atakami i zagrożeniami.

3. **Testy Kompatybilności:**
   - Sprawdzają zgodność systemu z różnymi platformami i konfiguracjami.

Podział testów w projektach może być dostosowany do specyfiki projektu, wymagań klienta, oraz przyjętych standardów i metodologii w organizacji. Optymalny wybór rodzajów testów zależy od kontekstu projektu oraz celów, jakie chce osiągnąć zespół testowy.

***WYKŁAD08--------------------------------------------***
# Testy jednostkowe (ang. Unit tests)

Testy jednostkowe (ang. Unit tests) są formą testowania oprogramowania, w której sprawdzana jest poprawność działania indywidualnych jednostek kodu, najczęściej modułów lub funkcji. Celem testów jednostkowych jest zweryfikowanie, czy poszczególne fragmenty kodu działają zgodnie z oczekiwaniami i spełniają określone warunki.

### Charakterystyka testów jednostkowych:

1. **Izolacja jednostki:**
   - Testy jednostkowe skupiają się na izolowaniu jednostki kodu do testowania. Oznacza to, że testowane są małe fragmenty kodu, często pojedyncze funkcje lub metody.

2. **Automatyzacja:**
   - Testy jednostkowe są zazwyczaj automatyzowane, co oznacza, że są wykonywane przy użyciu narzędzi automatyzacji testów. Automatyzacja pozwala na szybkie i powtarzalne testowanie kodu.

3. **Częsta wykonywalność:**
   - Testy jednostkowe są wykonywane często, zarówno podczas procesu programowania (testy deweloperskie) jak i w trakcie integracji i ciągłej integracji (CI/CD).

4. **Szybkość wykonania:**
   - Testy jednostkowe powinny być szybkie do wykonania, co pozwala na częste i błyskawiczne sprawdzanie poprawności działania kodu.

5. **Bezpośrednie środowisko wykonawcze:**
   - Testy jednostkowe są zazwyczaj wykonywane w bezpośrednim środowisku wykonawczym jednostki kodu, co oznacza, że nie ma potrzeby wdrażania całego systemu.

### Korzyści płynące z testów jednostkowych:

1. **Szybkie wykrywanie błędów:**
   - Testy jednostkowe pozwalają na szybkie wykrywanie i lokalizowanie błędów w kodzie.

2. **Ułatwienie refaktoryzacji:**
   - Testy jednostkowe ułatwiają wprowadzanie zmian w kodzie (refaktoryzację), ponieważ potwierdzają, czy zmiany nie wpływają negatywnie na istniejącą funkcjonalność.

3. **Dokumentacja:**
   - Testy jednostkowe stanowią rodzaj dokumentacji technicznej, opisując oczekiwane zachowanie jednostki kodu.

4. **Wsparcie dla ciągłej integracji:**
   - Testy jednostkowe są integralną częścią procesu ciągłej integracji, pozwalając na automatyczne testowanie kodu po każdej zmianie.

5. **Poprawa jakości kodu:**
   - Tworzenie testów jednostkowych często prowadzi do napisania bardziej modularnego, zrozumiałego i łatwiejszego do utrzymania kodu.

Przykład narzędzi do tworzenia testów jednostkowych to frameworki takie jak JUnit (dla języka Java), NUnit (dla języka C#), pytest (dla języka Python) oraz wiele innych dostępnych w zależności od używanego języka programowania.

# Testy komponentów (ang. Component tests)
Testy komponentów (ang. Component tests) są rodzajem testów oprogramowania, które skupiają się na weryfikowaniu poprawności działania poszczególnych komponentów lub modułów systemu. Komponenty to często odrębne części aplikacji, które mogą być testowane niezależnie, sprawdzając, czy zachowują się zgodnie z oczekiwaniami.

### Charakterystyka testów komponentów:

1. **Testowanie odrębnych komponentów:**
   - Testy komponentów koncentrują się na sprawdzaniu poprawności działania poszczególnych komponentów systemu. Komponenty mogą być funkcjami, klasami, modułami lub innymi jednostkami kodu.

2. **Izolacja komponentów:**
   - Każdy test komponentowy powinien izolować testowany komponent od reszty systemu. To oznacza, że inne komponenty lub zależności powinny być symulowane lub stosowane testy jednostkowe.

3. **Różnorodność testów:**
   - Testy komponentów mogą obejmować różne aspekty komponentu, takie jak interfejsy, zachowanie w różnych warunkach, wydajność, a także integrację z innymi komponentami.

4. **Automatyzacja:**
   - Podobnie jak w przypadku testów jednostkowych, testy komponentów często są automatyzowane, co pozwala na szybkie i efektywne przeprowadzanie testów.

5. **Sprawdzanie integracji komponentów:**
   - Testy komponentów mogą również obejmować sprawdzanie poprawności integracji poszczególnych komponentów, zwłaszcza gdy są one używane wspólnie.

### Korzyści płynące z testów komponentów:

1. **Izolacja problemów:**
   - Testy komponentów pozwalają na szybkie lokalizowanie i izolowanie problemów w obrębie konkretnych komponentów, ułatwiając naprawę błędów.

2. **Odtwarzalność:**
   - Automatyzacja testów komponentów umożliwia ich łatwe odtwarzanie, co jest istotne podczas procesu rozwoju i utrzymania oprogramowania.

3. **Wsparcie dla refaktoryzacji:**
   - Testy komponentów ułatwiają wprowadzanie zmian w kodzie poprzez potwierdzenie, że zmiany nie wpływają negatywnie na funkcjonalność komponentu.

4. **Skupienie na funkcjonalności:**
   - Poprzez testowanie indywidualnych komponentów, zespoły mogą skoncentrować się na weryfikowaniu funkcjonalności tych komponentów bez konieczności testowania całego systemu.

5. **Optymalizacja wydajności:**
   - Testy komponentów mogą pomóc w identyfikacji potencjalnych problemów wydajnościowych w obrębie konkretnych modułów.

Testy komponentów są jednym z elementów wielopoziomowego podejścia do testowania oprogramowania, współpracując z innymi rodzajami testów, takimi jak testy jednostkowe, integracyjne, czy testy systemowe, aby zapewnić kompleksową weryfikację systemu.

# Testy integracyjne (ang. Integration tests)
Testy integracyjne (ang. Integration tests) to rodzaj testów oprogramowania, które sprawdzają poprawność współpracy między różnymi komponentami lub modułami systemu. Celem tych testów jest weryfikacja, czy poszczególne części oprogramowania, które zostały już przetestowane indywidualnie (np. testami jednostkowymi), działają ze sobą zgodnie z oczekiwaniami.

### Charakterystyka testów integracyjnych:

1. **Testowanie interakcji:**
   - Skupiają się na sprawdzaniu poprawności współpracy między różnymi komponentami systemu. Mogą obejmować interakcje na poziomie interfejsów, przepływu danych i komunikacji między modułami.

2. **Środowisko testowe zbliżone do produkcji:**
   - Testy integracyjne są często przeprowadzane w środowisku zbliżonym do produkcji, co pozwala na realistyczne symulowanie warunków pracy systemu.

3. **Testowanie scenariuszy:**
   - Mogą obejmować testowanie konkretnych scenariuszy użycia, gdzie różne komponenty współpracują, aby dostarczyć określoną funkcjonalność.

4. **Automatyzacja:**
   - Automatyzacja testów integracyjnych jest powszechnie stosowana, umożliwiając szybkie i skuteczne sprawdzanie interakcji między komponentami.

5. **Dokładność przekazywania danych:**
   - Testy te sprawdzają, czy przekazywanie danych między komponentami odbywa się poprawnie, bez utraty informacji czy błędnej interpretacji.

### Korzyści płynące z testów integracyjnych:

1. **Wczesne wykrywanie problemów integracyjnych:**
   - Pozwalają na wczesne wykrywanie i rozwiązywanie problemów wynikających z integracji między komponentami.

2. **Zminimalizowane ryzyko wdrożenia:**
   - Testy integracyjne pomagają zminimalizować ryzyko wystąpienia problemów integracyjnych podczas fazy wdrożenia.

3. **Potwierdzenie poprawności integracji:**
   - Zapewniają pewność, że poszczególne komponenty, które działały poprawnie w izolacji, współpracują ze sobą zgodnie z oczekiwaniami.

4. **Wsparcie dla ciągłej integracji:**
   - Testy integracyjne są często integrowane z procesem ciągłej integracji (CI), co umożliwia automatyczne testowanie po każdej zmianie kodu.

5. **Ułatwienie skalowania:**
   - Testy integracyjne ułatwiają skalowanie systemu, ponieważ weryfikują, czy dodanie nowych komponentów nie wpływa negatywnie na całość.

Testy integracyjne są jednym z kluczowych elementów kompleksowego podejścia do testowania oprogramowania, uzupełniając testy jednostkowe i stanowiąc krok w kierunku weryfikacji działania systemu jako całości.


# Testy systemowe
Testy systemowe to rodzaj testów oprogramowania, które koncentrują się na weryfikacji poprawności i spełnienia wymagań funkcjonalnych oraz niefunkcjonalnych całego systemu jako jednostki. Celem testów systemowych jest potwierdzenie, że system działa zgodnie z oczekiwaniami użytkowników i spełnia wszystkie założenia określone w specyfikacji.

### Charakterystyka testów systemowych:

1. **Testowanie całości systemu:**
   - Skupiają się na kompleksowym sprawdzeniu funkcji systemu jako jednego, zintegrowanego elementu.

2. **Weryfikacja zgodności z wymaganiami:**
   - Testy systemowe sprawdzają, czy system spełnia wszystkie wymagania funkcjonalne i niefunkcjonalne określone w specyfikacji.

3. **Scenariusze użytkowania:**
   - Obejmują testowanie różnych scenariuszy użytkowania, aby upewnić się, że system zachowuje się zgodnie z oczekiwaniami w różnych warunkach.

4. **Testowanie niefunkcjonalne:**
   - Oprócz funkcji, testy systemowe sprawdzają również aspekty niefunkcjonalne, takie jak wydajność, bezpieczeństwo, dostępność, użyteczność itp.

5. **Testy akceptacyjne:**
   - W wielu przypadkach, testy systemowe są równoznaczne z testami akceptacyjnymi, co oznacza, że potwierdzają one gotowość systemu do akceptacji przez użytkownika końcowego.

### Przykłady testów systemowych:

1. **Testy funkcjonalne:**
   - Sprawdzają, czy wszystkie funkcje systemu działają zgodnie z założeniami i spełniają oczekiwania użytkowników.

2. **Testy wydajnościowe:**
   - Oceniają wydajność systemu pod względem szybkości, skalowalności i reakcji na obciążenie.

3. **Testy bezpieczeństwa:**
   - Badają odporność systemu na ataki z zewnątrz oraz zabezpieczenia przed utratą danych.

4. **Testy użyteczności:**
   - Oceniają łatwość użytkowania systemu, zrozumiałość interfejsu użytkownika i ogólną przyjazność dla użytkownika.

5. **Testy kompatybilności:**
   - Sprawdzają, czy system działa poprawnie na różnych platformach, przeglądarkach, urządzeniach itp.

### Korzyści płynące z testów systemowych:

1. **Potwierdzenie gotowości do wdrożenia:**
   - Testy systemowe potwierdzają, czy system jest gotowy do wdrożenia i użycia przez użytkowników końcowych.

2. **Odkrywanie problemów na etapie końcowym:**
   - Pomagają w identyfikacji ewentualnych problemów na etapie końcowym projektu przed udostępnieniem systemu użytkownikom.

3. **Zabezpieczenie przed błędami ukrytymi w integracji:**
   - Weryfikują poprawność integracji poszczególnych komponentów oraz identyfikują ewentualne błędy ukryte w procesie integracji.

4. **Spełnienie oczekiwań klienta:**
   - Testy systemowe mają na celu zapewnienie, że system spełnia oczekiwania klienta i dostarcza wartość biznesową.

5. **Ostateczne potwierdzenie jakości:**
   - Stanowią ostateczne potwierdzenie jakości systemu przed jego wdrożeniem.

Testy systemowe są kluczowym etapem w procesie testowania oprogramowania, pomagając zapewnić, że cały system działa zgodnie z założeniami i spełnia oczekiwania użytkowników oraz interesariuszy.


# Testy akceptacyjne
Testy akceptacyjne (ang. Acceptance tests) to rodzaj testów oprogramowania, których celem jest potwierdzenie, czy system spełnia założenia i oczekiwania klienta oraz innych interesariuszy. Te testy są przeprowadzane w celu uzyskania akceptacji systemu przed jego wdrożeniem, co oznacza, że klient lub użytkownik końcowy ocenia, czy dostarczony system spełnia jego wymagania i jest gotowy do użycia.

### Rodzaje testów akceptacyjnych:

1. **Testy akceptacyjne użytkownika (UAT - User Acceptance Tests):**
   - Przeprowadzane przez samych użytkowników końcowych, którzy oceniają funkcjonalność systemu pod kątem zgodności z ich rzeczywistymi potrzebami i oczekiwaniami. UAT jest często ostatnim etapem testów przed wdrożeniem.

2. **Testy akceptacyjne klienta (CAT - Customer Acceptance Tests):**
   - Przeprowadzane przez klienta lub przedstawiciela klienta, który ocenia system z perspektywy zgodności z umową i spełnienia założeń biznesowych.

3. **Testy akceptacyjne oprogramowania (SAT - Software Acceptance Tests):**
   - Przeprowadzane w celu potwierdzenia, że system jest gotowy do użycia, spełnia wymagania funkcjonalne i niefunkcjonalne oraz jest zgodny z umową.

4. **Testy akceptacyjne systemu (SAT - System Acceptance Tests):**
   - Oceniają, czy cały system działa zgodnie z oczekiwaniami klienta, spełniając ustalone kryteria akceptacyjne.

### Charakterystyka testów akceptacyjnych:

1. **Perspektywa użytkownika:**
   - Testy akceptacyjne skupiają się na ocenie systemu z perspektywy użytkowników końcowych, zapewniając, że spełniają one ich rzeczywiste potrzeby i oczekiwania.

2. **Zgodność z wymaganiami biznesowymi:**
   - Ocena systemu pod kątem zgodności z wymaganiami biznesowymi, umową oraz oczekiwaniami klienta.

3. **Testy end-to-end:**
   - Testy akceptacyjne obejmują cały system, a nie tylko pojedyncze komponenty czy moduły. Skupiają się na testowaniu scenariuszy end-to-end.

4. **Sprawdzenie użyteczności:**
   - Testowanie użyteczności systemu, czyli jego łatwości obsługi, intuicyjności, oraz ogólnego komfortu użytkowania.

5. **Automatyzacja (opcjonalnie):**
   - Testy akceptacyjne mogą być przeprowadzane ręcznie lub w formie automatycznej, w zależności od skomplikowania systemu i dostępnych zasobów.

### Korzyści płynące z testów akceptacyjnych:

1. **Zatwierdzenie przed wdrożeniem:**
   - Testy akceptacyjne są ostatecznym etapem potwierdzającym gotowość systemu do wdrożenia.

2. **Zgodność z oczekiwaniami klienta:**
   - Zapewniają, że system spełnia oczekiwania klienta oraz jest zgodny z umową i założeniami biznesowymi.

3. **Identyfikacja problemów na etapie końcowym:**
   - Pomagają w identyfikacji ewentualnych problemów na etapie końcowym projektu, umożliwiając ich szybkie rozwiązanie przed wdrożeniem.

4. **Zatwierdzenie ostateczne:**
   - Testy akceptacyjne umożliwiają ostateczne zatwierdzenie systemu przez klienta, co jest kluczowe dla przejścia do fazy wdrożenia.

5. **Spełnienie celów biznesowych:**
   - Potwierdzają, że system jest zgodny z założeniami biznesowymi i dostarcza oczekiwane korzyści.

Testy akceptacyjne są decydującym etapem w procesie testowania oprogramowania, pomagającym zapewnić, że system jest gotowy do użytku zgodnie z oczekiwaniami klienta oraz spełnia wymagania biznesowe.

# Testy Alpha i Beta
Testy Alfa i Beta są rodzajem testów oprogramowania, które są przeprowadzane w różnych etapach procesu rozwoju, a ich głównym celem jest ocena i poprawa jakości systemu przed wdrożeniem.

1. **Testy Alfa:**
   - **Kiedy są przeprowadzane:** Testy Alfa są przeprowadzane przez zespół deweloperski w środowisku deweloperskim przed udostępnieniem oprogramowania użytkownikom zewnętrznym.
   - **Uczestnicy:** Uczestnikami testów alfa są zazwyczaj programiści, testerzy wewnętrzni i inni członkowie zespołu deweloperskiego.
   - **Charakterystyka:** Testy Alfa mają na celu przetestowanie wszystkich funkcji systemu w środowisku kontrolowanym przez deweloperów. Mogą obejmować testy jednostkowe, testy integracyjne, a nawet testy funkcjonalne.
   - **Cele:** Identyfikacja wczesnych błędów, ocena ogólnej jakości systemu, sprawdzenie zgodności z wymaganiami.

#### Zalety:
1. **Szybkie wykrywanie wczesnych błędów:** Testy Alfa pozwalają na szybkie wykrywanie błędów i problemów już we wczesnych fazach rozwoju, co ułatwia ich natychmiastową naprawę.

2. **Kontrolowane środowisko:** Testy odbywają się w środowisku kontrolowanym przez deweloperów, co umożliwia skupienie się na konkretnych aspektach oprogramowania.

3. **Integracja wczesnych feedbacków:** Dostarcza możliwość uzyskania wczesnych opinii od członków zespołu deweloperskiego, co może przyspieszyć proces poprawek i doskonalenia.

#### Wady:
1. **Brak różnorodności sytuacji użytkowania:** Testy Alfa mogą nie uwzględniać pełnej różnorodności scenariuszy użytkowania, które mogą wystąpić w rzeczywistych warunkach.

2. **Ograniczona liczba uczestników:** Ponieważ testy są prowadzone przez zespół deweloperski, mogą obejmować tylko ograniczoną liczbę osób, co może nie odzwierciedlać różnorodności użytkowników.


2. **Testy Beta:**
   - **Kiedy są przeprowadzane:** Testy Beta są przeprowadzane po zakończeniu testów alfa, gdy oprogramowanie jest udostępniane grupie użytkowników zewnętrznych do testów.
   - **Uczestnicy:** Uczestnikami testów beta są zewnętrzni użytkownicy końcowi, którzy korzystają z oprogramowania w rzeczywistych warunkach.
   - **Charakterystyka:** Testy Beta mają na celu ocenę zachowania oprogramowania w środowisku produkcyjnym. Użytkownicy testują funkcje, zgłaszają błędy, a deweloperzy zbierają informacje zwrotne.
   - **Cele:** Ocena stabilności systemu w warunkach rzeczywistych, identyfikacja problemów, które mogą pojawić się tylko w realnych scenariuszach użycia.

#### Zalety:
1. **Rzeczywiste warunki użytkowania:** Testy Beta odbywają się w rzeczywistych warunkach użytkowania, co pozwala na ocenę zachowania oprogramowania w prawdziwych scenariuszach.

2. **Różnorodność użytkowników:** Biorą w nich udział różnorodni użytkownicy, co pozwala na identyfikację różnych perspektyw i potrzeb użytkowników.

3. **Realne sytuacje i obciążenia:** Pozwalają na testowanie oprogramowania podczas rzeczywistych obciążeń i sytuacji, co może ujawnić problemy z wydajnością.

#### Wady:
1. **Mniejsza kontrola nad środowiskiem:** Zespół deweloperski ma mniejszą kontrolę nad środowiskiem testowym, co może sprawić, że identyfikacja i naprawa błędów będzie bardziej złożona.

2. **Mniejsza ilość uzyskiwanych informacji zwrotnych:** Może być trudniejsze uzyskanie szczegółowych informacji zwrotnych od użytkowników, co może ograniczyć zdolność do identyfikacji konkretnych problemów.

3. **Ryzyko związane z wrażliwymi danymi:** W przypadku nieprawidłowej konfiguracji, testy Beta mogą stwarzać ryzyko związane z potencjalnym wyciekiem danych lub innymi problemami związanymi z bezpieczeństwem.

### Kluczowe różnice między testami Alfa a Beta:

1. **Środowisko testów:**
   - Testy Alfa są przeprowadzane w kontrolowanym środowisku deweloperskim, natomiast testy Beta odbywają się w rzeczywistych warunkach użytkowania przez zewnętrznych użytkowników.

2. **Uczestnicy:**
   - Uczestnikami testów Alfa są członkowie zespołu deweloperskiego, a w przypadku testów Beta, uczestniczą zewnętrzni użytkownicy końcowi.

3. **Cel:**
   - Testy Alfa mają na celu identyfikację wczesnych błędów i ocenę jakości systemu w środowisku deweloperskim. Testy Beta skupiają się na ocenie stabilności i zachowania oprogramowania w warunkach rzeczywistych.

4. **Etap procesu:**
   - Testy Alfa są przeprowadzane we wczesnych fazach rozwoju, przed wdrożeniem. Testy Beta odbywają się w fazie końcowej przed udostępnieniem oprogramowania publicznie.

Oba rodzaje testów są istotne dla zapewnienia jakości oprogramowania, a testy Beta zwłaszcza pomagają w identyfikacji problemów, które mogą pojawić się tylko w rzeczywistych warunkach użytkowania.
***WYKŁAD09--------------------------------------------***
# Podejście TDD - Test Driven Development
## Testowanie w metodykach zwinnych AGILE
W metodykach zwinnych, takich jak Agile, testowanie odgrywa istotną rolę, wprowadzając pewne elementy elastyczności i dostosowywania się do zmian w trakcie procesu rozwoju oprogramowania. Poniżej przedstawiam ogólny kontekst testowania w metodykach Agile, z uwzględnieniem kilku kluczowych elementów:
### Kluczowe Aspekty Testowania w Metodykach Agile:

1. **Iteracyjność i Inkrementalność:**
   - Testowanie w Agile jest często związane z krótkimi iteracjami (sprintami), gdzie w każdym cyklu dostarczane są nowe, funkcjonalne fragmenty oprogramowania. Testy są więc przeprowadzane inkrementalnie, a ich zakres dostosowywany jest do aktualnych wymagań.

2. **Zaangażowanie zespołu:**
   - W Agile, testowanie nie jest tylko rolą zespołu testującego. Wszyscy członkowie zespołu, w tym programiści i analitycy, są zaangażowani w proces testowania. Testowanie staje się odpowiedzialnością całego zespołu.

3. **Testy jednostkowe (Unit Testing):**
   - Programiści są zazwyczaj odpowiedzialni za pisanie testów jednostkowych, które sprawdzają poprawność pojedynczych komponentów kodu. Te testy są automatycznie uruchamiane w trakcie procesu kompilacji.

4. **Automatyzacja Testów:**
   - Automatyzacja testów jest kluczowym elementem w Agile, umożliwiając szybkie i powtarzalne testowanie. Automatyzacja obejmuje testy jednostkowe, testy integracyjne, a także testy funkcjonalne.

5. **Testy Akceptacyjne:**
   - Testy akceptacyjne są często przeprowadzane w ramach każdego sprintu, a ich celem jest potwierdzenie, czy dostarczone funkcje spełniają oczekiwania klienta. Mogą obejmować testy manualne i automatyczne.

6. **Testowanie Ciągłe (Continuous Testing):**
   - Testowanie ciągłe odbywa się w trakcie całego procesu rozwoju, zapewniając bieżącą ocenę jakości kodu i dostarczanych funkcji. Wdraża się je wraz z praktykami Continuous Integration (CI) i Continuous Delivery (CD).

7. **Testy Regresji:**
   - W miarę dodawania nowych funkcji w kolejnych iteracjach, istotne jest utrzymanie testów regresji, które zapewniają, że istniejące funkcje nie zostaną naruszone przez nowe zmiany.

8. **Refaktoryzacja i Testowanie:**
   - Agile promuje praktykę refaktoryzacji kodu. W miarę wprowadzania zmian w kodzie, testy są aktualizowane, a refaktoryzacja jest testowana, aby zapewnić, że nie wprowadziła nowych błędów.

9. **Komunikacja w Zespole:**
   - Komunikacja w zespole, zarówno między programistami a testerami, jak i z klientem, jest kluczowa. Regularne spotkania, tzw. Daily Standups, pomagają w synchronizacji działań i identyfikacji problemów.

10. **Elastyczność w Zakresie Testów:**
    - Zakres testów w Agile może ulegać zmianom w trakcie procesu. Zespoły muszą być elastyczne i gotowe dostosować strategię testowania w zależności od bieżących wymagań i priorytetów.

### Korzyści Testowania w Metodykach Agile:

1. **Szybkie dostarczanie wartości:**
   - Dzięki testowaniu inkrementalnemu i regularnemu dostarczaniu wartości w postaci działających funkcji, Agile pozwala na szybkie dostarczanie wartości dla klienta.

2. **Identyfikacja błędów we wczesnych fazach:**
   - Regularne testowanie we wczesnych fazach projektu pomaga w szybkiej identyfikacji i naprawie błędów, co minimalizuje ryzyko opóźnień.

3. **Elastyczność w dostosowywaniu się do zmian:**
   - Testowanie w Agile pozwala na dostosowanie strategii testowania do zmieniających się wymagań i priorytetów projektu.

4. **Zwiększone zaangażowanie zespołu:**
   - Wprowadzenie odpowiedzialności za testowanie dla całego zespołu zwiększa zaangażowanie i zrozumienie wszystkich członków zespołu w kontekście jakości oprogramowania.

5. **Automatyzacja i skrócony czas dostarczania:**
   - Automatyzacja testów, w połączeniu z praktyką Continuous Integration, przyspiesza proces testowania, skracając czas dostarczania oprogramowania.

### Wyzwania Testowania w Metodykach Agile:

1. **Konieczność szybkiego reagowania:**
   - Wymaga to sprawnej komunikacji między zespołem programistycznym a zespołem testującym, aby szybko rozpoznawać i rozwiązywać problemy.

2. **Wyzwania związane z automatyzacją:**
   - Automatyzacja testów może być wyzwaniem, zwłaszcza w przypadku zmieniających się często wymagań. Konieczne jest utrzymanie elastyczności skryptów testowych.

3. **Zapewnienie kompleksowego pokrycia testów:**
   - W warunkach szybkiego tempa dostarczania oprogramowania, zapewnienie kompleksowego pokrycia testów może być trudne. Niektóre obszary mogą być pomijane.

4. **Utrzymanie testów regresji:**
   - W miarę dodawania nowych funkcji, utrzymanie testów regresji może stać się wyzwaniem. Konieczne jest ich aktualizowanie i dostosowywan

# Podejście TDD - Test Driven Development
**Test-Driven Development (TDD):**

TDD, czyli Test-Driven Development, to technika wytwarzania oprogramowania, w której proces tworzenia kodu rozpoczyna się od napisania testów automatycznych, a następnie implementacji kodu, który spełnia te testy. Istnieje kilka kluczowych zasad związanych z TDD:

### Główne Założenia TDD:

1. **Pisanie Testów Pierwsze:**
   - Proces rozpoczyna się od napisania testów automatycznych, które opisują oczekiwaną funkcjonalność. Testy te są jednak pisane przed napisaniem kodu, który je zadowoli.

2. **Implementacja Minimalna:**
   - Po napisaniu testów, programista implementuje minimalną ilość kodu wymaganego do spełnienia tych testów. Celem jest stworzenie kodu, który działa, ale jest jak najbardziej prosty.

3. **Refaktoryzacja:**
   - Po zaimplementowaniu kodu, który przechodzi testy, przeprowadza się refaktoryzację. Oznacza to poprawę jakości kodu bez zmiany jego zachowania.

4. **Iteracyjny Proces:**
   - Proces powtarza się iteracyjnie. Kolejne funkcjonalności są dodawane poprzez cykle: napisanie testu, implementację kodu, refaktoryzację.

5. **Automatyzacja Testów:**
   - Testy automatyczne są kluczowe w TDD. Muszą być łatwe do uruchomienia, powtarzalne i szybkie. Automatyzacja testów zapewnia bieżącą kontrolę jakości kodu.

6. **Wsparcie dla Zwinnych Metodologii:**
   - TDD doskonale współpracuje z zwinymi metodykami, takimi jak Scrum czy Kanban. Pozwala na szybkie reagowanie na zmiany i dostarczanie wartości w każdym cyklu iteracyjnym.

### Zalety TDD:

1. **Szybsze Wykrywanie Błędów:**
   - Błędy są wykrywane we wczesnych fazach rozwoju, co ułatwia ich naprawę i zmniejsza koszty późniejszych poprawek.

2. **Łatwiejsza Refaktoryzacja:**
   - Zautomatyzowane testy działające w tle pozwalają na pewność, że refaktoryzacje nie psują istniejącej funkcjonalności.

3. **Dokumentacja Funkcjonalności:**
   - Testy automatyczne stanowią jednocześnie dokumentację funkcjonalności. Nowi programiści mogą zrozumieć, co kod ma robić, poprzez analizę testów.

4. **Zwięzłość Kodu:**
   - Proces tworzenia minimalnej ilości kodu wymaganej do spełnienia testów sprzyja zwięzłości kodu i unika nadmiernego rozbuchania się implementacji.

5. **Zwiększenie Pewności:**
   - Automatyzowane testy dają pewność, że zmiany w kodzie nie wprowadzają nowych błędów i nie psują już istniejącej funkcjonalności.

### Wyzwania TDD:

1. **Nauka i Przyzwyczajenie:**
   - Proces TDD wymaga nauki i przyzwyczajenia. Niektórzy programiści mogą odczuwać opór na początku.

2. **Wymaga Inwestycji Czasowej:**
   - Napisanie testów może wydłużyć czas początkowej implementacji, co może być traktowane jako inwestycja czasowa.

3. **Zależność od Zrozumienia Wymagań:**
   - Skuteczność TDD zależy od precyzyjnego zrozumienia wymagań przed napisaniem testów.

Warto podkreślić, że choć TDD to skuteczna praktyka, nie zawsze jest najlepszym podejściem w każdym przypadku. Ostateczny wybór zależy od kontekstu projektu, zespołu i specyfiki branży.
***WYKŁAD10--------------------------------------------***
# Continuous Integration i Delivery
**Continuous Integration (CI):**

Continuous Integration (CI) to praktyka, która polega na regularnym łączeniu kodu dostarczanego przez różnych programistów do wspólnego repozytorium. Głównym celem CI jest zapewnienie, że kod wprowadzany przez różnych członków zespołu jest zawsze zintegrowany z istniejącym kodem, a wszelkie konflikty czy błędy są wykrywane możliwie szybko.

1. **Regularne Integrowanie Kodu:**
   - Programiści regularnie wprowadzają swoje zmiany do wspólnego repozytorium, co prowadzi do częstego łączenia kodu.

2. **Automatyczne Budowanie i Testowanie:**
   - Po każdym wprowadzeniu zmian, system automatycznie buduje aplikację i uruchamia zestaw testów, weryfikując integralność kodu.

3. **Szybkie Wykrywanie Błędów:**
   - Dzięki regularnym integracjom, wszelkie konflikty czy błędy są szybko identyfikowane, co ułatwia ich natychmiastową naprawę.

**Continuous Delivery (CD):**

Continuous Delivery (CD) to rozszerzenie praktyki Continuous Integration. Obejmuje ona automatyzację procesu dostarczania oprogramowania do środowiska produkcyjnego po przejściu wszystkich etapów testowania.

1. **Automatyczne Dostarczanie do Środowiska Testowego:**
   - Po pomyślnym przejściu testów jednostkowych i integracyjnych, aplikacja jest automatycznie dostarczana do środowiska testowego.

2. **Przygotowanie do Wdrożenia:**
   - Kolejnym krokiem jest automatyczne przygotowanie aplikacji do wdrożenia, włączając w to wszelkie niezbędne konfiguracje i skrypty.

3. **Gotowość do Ręcznego Wdrożenia:**
   - Ostateczna decyzja o wdrożeniu do produkcji może być podjęta ręcznie, co daje zespołowi kontrolę nad procesem.

### Różnice między CI a CD:

1. **Continuous Integration (CI):**
   - Skupia się na regularnym łączeniu kodu i szybkim wykrywaniu błędów.

2. **Continuous Delivery (CD):**
   - Obejmuje proces automatycznego dostarczania aplikacji do środowiska testowego oraz przygotowanie do potencjalnego wdrożenia, jednak decyzja o wdrożeniu pozostaje w rękach zespołu.

W skrócie, Continuous Integration koncentruje się na regularnym łączeniu kodu i wczesnym wykrywaniu błędów, podczas gdy Continuous Delivery rozszerza ten proces, obejmując automatyczne dostarczanie do środowiska testowego i przygotowanie do ewentualnego wdrożenia, zachowując jednak decyzję o wdrożeniu.

# Narzędzia Wspierające Proces Ciągłej Integracji:

**Współdzielone Repozytoria Kodu:**
1. **GitHub:**
   - Platforma hostingowa dla projektów opartych na systemie kontroli wersji Git. Umożliwia współpracę programistów i zarządzanie kodem źródłowym.

2. **BitBucket:**
   - Hosting repozytoriów Git i Mercurial, oferujący funkcje zarządzania projektem i współpracy zespołowej. Jest często wykorzystywany wraz z narzędziami Atlassian, takimi jak Jira.

3. **GitLab:**
   - Narzędzie do zarządzania repozytoriami Git, oferujące funkcje Continuous Integration i Continuous Delivery. Może być używane zarówno w chmurze, jak i na własnych serwerach.

4. **SourceForge:**
   - Platforma hostingowa dla projektów open-source, zapewniająca repozytoria kodu, bug tracking, system kontroli wersji, a także środowisko Continuous Integration.

**Serwery Ciągłej Integracji:**
1. **Jenkins:**
   - Narzędzie open-source do automatyzacji procesu Continuous Integration. Posiada bogatą gamę wtyczek, co pozwala na integrację z wieloma narzędziami i środowiskami.

2. **TeamCity:**
   - Narzędzie JetBrains do Continuous Integration i Continuous Delivery. Oferuje łatwe w konfiguracji środowisko integracji i dostarczania, zintegrowane z narzędziami programistycznymi JetBrains.

3. **Travis:**
   - Platforma Continuous Integration dla projektów open-source zintegrowana z repozytoriami na GitHubie. Obsługuje wiele języków programowania i środowisk testowych.

4. **Codeship:**
   - Platforma Continuous Integration w chmurze, pozwalająca na prostą konfigurację i integrację z różnymi repozytoriami kodu.

5. **Semaphore:**
   - Narzędzie Continuous Integration w chmurze, dostarczające prostej i intuicyjnej platformy do automatyzacji procesu budowania i testowania aplikacji.

Wszystkie te narzędzia mają na celu ułatwienie procesu Continuous Integration, umożliwiając programistom integrację kodu, automatyzację testów, oraz dostarczanie oprogramowania w sposób ciągły. Wybór konkretnego narzędzia zależy od potrzeb projektu, preferencji zespołu oraz funkcji, jakie dany system oferuje.

***WYKŁAD11--------------------------------------------***
# Testowanie Typu Smoke (Smoke Testing):

Testowanie typu Smoke, zwane także testowaniem wstępnym lub testowaniem przeglądowym, jest rodzajem testowania, którego celem jest sprawdzenie podstawowej funkcjonalności aplikacji, bez wnikania w szczegóły. Jest to szybki i powierzchowny test, mający na celu potwierdzenie, czy główne funkcje systemu działają poprawnie po wprowadzeniu zmian lub aktualizacji.

**Charakterystyka Testowania Smoke:**

1. **Podstawowe Funkcje:**
   - Skupia się na podstawowych funkcjach systemu, które powinny działać bez zarzutu.

2. **Szybkość Wykonywania:**
   - Jest szybko przeprowadzane, nie zajmuje wiele czasu, ponieważ ma na celu jedynie potwierdzenie, że główne aspekty systemu są w dobrym stanie.

3. **Powierzchowność:**
   - Nie wchodzi w szczegółowe przypadki testowe. Jest bardziej powierzchowne niż testy funkcjonalne.

4. **Weryfikacja Stabilności:**
   - Służy do weryfikacji stabilności systemu po wprowadzeniu zmian, aktualizacji, lub nowej wersji oprogramowania.

5. **Cel:**
   - Jego głównym celem jest szybkie wykrycie ewidentnych błędów, które mogą uniemożliwić dalsze, bardziej szczegółowe testowanie.

**Przebieg Testowania Smoke:**

1. **Uruchomienie Aplikacji:**
   - Sprawdzenie, czy aplikacja uruchamia się poprawnie bez krytycznych błędów.

2. **Podstawowe Funkcje:**
   - Testowanie kluczowych funkcji, które są niezbędne do podstawowego działania systemu.

3. **Stabilność:**
   - Weryfikacja, czy wprowadzone zmiany nie spowodowały poważnych problemów w stabilności systemu.

4. **Automatyzacja:**
   - Może być częściowo lub w całości zautomatyzowane, aby przyspieszyć proces.

5. **Raportowanie:**
   - Dokładne raportowanie wszelkich błędów czy problemów wykrytych podczas testowania.

**Zalety Testowania Smoke:**

- Szybkość wykonywania, co pozwala na szybkie uzyskanie informacji o stabilności systemu.
- Identyfikacja ewidentnych błędów bez konieczności przeprowadzania bardziej szczegółowych testów.

**Wady Testowania Smoke:**

- Może nie wykryć ukrytych błędów, które wymagają bardziej szczegółowego testowania.
- Ograniczona zdolność do oceny pełnej funkcjonalności systemu.

Testowanie typu Smoke jest szczególnie przydatne na początku cyklu testowego, po wprowadzeniu znaczących zmian lub w przypadku szybkiego potwierdzenia, czy aplikacja jest gotowa do dalszych, bardziej szczegółowych testów.

# Testowanie Typu Sanity (Sanity Testing):

Testowanie typu Sanity, zwane także testowaniem rozsądkowym, jest formą testowania, które sprawdza, czy konkretne funkcje lub obszary systemu działają zgodnie z oczekiwaniami po wprowadzeniu zmian lub aktualizacji. To rodzaj testu weryfikacyjnego, który ma na celu zweryfikowanie, czy dany obszar aplikacji pozostaje w dobrym stanie po wprowadzeniu zmian, bez konieczności testowania wszystkich jego funkcji.

**Charakterystyka Testowania Sanity:**

1. **Zawężony Zakres:**
   - Ogranicza się do konkretnego obszaru lub funkcji aplikacji, nie obejmując wszystkich funkcji systemu.

2. **Potwierdzenie Poprawności:**
   - Skupia się na potwierdzeniu, że konkretne aspekty systemu są nadal poprawne po wprowadzeniu zmian.

3. **Szybkość Wykonywania:**
   - Jest szybko przeprowadzane, skupiając się na najważniejszych aspektach.

4. **Cel:**
   - Jego głównym celem jest zweryfikowanie, czy obszar, który był modyfikowany, jest nadal funkcjonalny.

5. **Identyfikacja Błędów:**
   - Ma na celu wykrycie ewidentnych błędów, które mogą pojawić się w obszarze zmian.

**Przebieg Testowania Sanity:**

1. **Wybór Konkretnego Obszaru:**
   - Wybór obszaru, który został zmodyfikowany lub zaktualizowany.

2. **Testy Podstawowe:**
   - Przeprowadzenie podstawowych testów dla tego obszaru, aby upewnić się, że główne funkcje działają poprawnie.

3. **Weryfikacja Błędów:**
   - Weryfikacja, czy błędy, które mogą się pojawić w wyniku zmian, są rozpoznawane.

4. **Integracja z Resztą Systemu:**
   - Weryfikacja, czy zmiany nie wpływają negatywnie na resztę systemu.

5. **Automatyzacja:**
   - W zależności od potrzeb, testowanie Sanity może być częściowo zautomatyzowane.

6. **Raportowanie:**
   - Dokładne raportowanie wyników, ze szczególnym uwzględnieniem ewentualnych problemów w obszarze zmian.

**Zalety Testowania Sanity:**

- Szybkość wykonania, co pozwala na szybkie uzyskanie informacji o stabilności obszaru zmian.
- Skupienie się na konkretnym obszarze, co ułatwia szybkie identyfikowanie problemów.

**Wady Testowania Sanity:**

- Ograniczona zdolność do oceny pełnej funkcjonalności systemu.
- Nie zawsze jest odpowiednie do zastosowania po wprowadzeniu bardzo obszernych zmian w aplikacji.

Testowanie Sanity jest szczególnie przydatne po wprowadzeniu zmian w systemie, aby zweryfikować, czy obszar zmian pozostaje w dobrym stanie. Jest to rodzaj testu, który pozwala na szybkie sprawdzenie najważniejszych funkcji bez konieczności przeprowadzania pełnego testu wszystkich aspektów systemu.


# SANITY vs SMOKE
**Różnica między Testowaniem Typu Smoke a Sanity:**

1. **Zakres Testowania:**
   - **Smoke Testing:**
     - Obejmuje ogólny przegląd całej aplikacji lub systemu, sprawdzając podstawowe funkcje, aby upewnić się, że można przystąpić do bardziej szczegółowych testów.
   - **Sanity Testing:**
     - Koncentruje się na konkretnej funkcji, obszarze lub komponencie systemu, sprawdzając, czy działa poprawnie po wprowadzeniu zmian lub aktualizacji.

2. **Cel Testowania:**
   - **Smoke Testing:**
     - Sprawdza, czy aplikacja jest gotowa do dalszych, bardziej szczegółowych testów. Ma na celu wykrycie ewidentnych problemów, które mogą uniemożliwić dalsze testowanie.
   - **Sanity Testing:**
     - Zweryfikowuje, czy konkretne obszary, które zostały zmodyfikowane, pozostają w dobrym stanie, a zmiany nie wpłynęły negatywnie na ich funkcjonalność.

3. **Zakres Funkcjonalności:**
   - **Smoke Testing:**
     - Sprawdza funkcje kluczowe i krytyczne dla całego systemu.
   - **Sanity Testing:**
     - Skupia się na potwierdzeniu poprawności określonego obszaru lub funkcji systemu.

4. **Czas Wykonywania:**
   - **Smoke Testing:**
     - Jest szybko przeprowadzane, aby szybko ocenić ogólną stabilność systemu.
   - **Sanity Testing:**
     - Jest również szybko przeprowadzane, ale skupia się na konkretnym obszarze zmian.

5. **Zautomatyzowanie:**
   - **Smoke Testing:**
     - Często jest zautomatyzowane, zwłaszcza jeśli ma być regularnie wykonywane.
   - **Sanity Testing:**
     - Może być zautomatyzowane w zależności od specyfiki obszaru, ale może również być wykonywane ręcznie.

6. **Przeznaczenie:**
   - **Smoke Testing:**
     - Wykonywane po dużych zmianach w systemie lub przed dużym cyklem testowym.
   - **Sanity Testing:**
     - Wykonywane po wprowadzeniu zmian w konkretnym obszarze, aby zweryfikować, czy obszar ten jest nadal funkcjonalny.

7. **Identyfikacja Błędów:**
   - **Smoke Testing:**
     - Służy do szybkiego wykrywania ewidentnych błędów, takich jak awarie aplikacji.
   - **Sanity Testing:**
     - Ma na celu wykrywanie błędów w konkretnym obszarze, które mogą wyniknąć ze zmian w tym obszarze.

Podsumowując, zarówno Smoke Testing, jak i Sanity Testing są formami testowania, które mają na celu szybkie sprawdzenie stabilności systemu, ale różnią się zakresem, celem i głębokością weryfikacji. Smoke Testing ma na celu potwierdzenie ogólnej gotowości systemu do dalszych testów, podczas gdy Sanity Testing skupia się na weryfikacji konkretnego obszaru zmian. Oba rodzaje testów są ważne w kontekście efektywnego procesu testowania oprogramowania.


# Testowanie Regresywne (Regression Testing):

Testowanie regresywne to rodzaj testowania oprogramowania, które ma na celu zweryfikowanie, czy wprowadzone zmiany w kodzie nie wpłynęły negatywnie na istniejące funkcjonalności systemu. Kiedy nowe funkcje są dodawane, błędy są naprawiane lub kod jest aktualizowany, testowanie regresywne pomaga upewnić się, że już przetestowane aspekty systemu nadal działają poprawnie.

**Charakterystyka Testowania Regresywnego:**

1. **Cel:**
   - Zweryfikowanie, czy wprowadzone zmiany nie spowodowały powstawania nowych błędów w już przetestowanych obszarach.

2. **Automatyzacja:**
   - Często jest zautomatyzowane, ponieważ wymaga wielokrotnego przeprowadzania tych samych testów po każdej zmianie w kodzie.

3. **Zakres Testów:**
   - Obejmuje funkcje, które zostały wcześniej przetestowane, a także sąsiednie obszary, które mogłyby być potencjalnie dotknięte zmianami.

4. **Czas Wykonywania:**
   - Jest regularnie wykonywane po każdej zmianie w kodzie, aby szybko wykryć ewentualne problemy.

5. **Skutki Zmian:**
   - Sprawdza, czy wprowadzone zmiany nie mają negatywnego wpływu na istniejące funkcje.

6. **Automatyczne Narzędzia:**
   - Wykorzystuje narzędzia do automatyzacji testów, aby przyspieszyć proces i zapewnić spójność.

7. **Przyspieszenie Procesu Rozwoju:**
   - Pomaga w szybkim dostarczaniu nowych wersji oprogramowania, ponieważ zmniejsza ryzyko pojawienia się nowych błędów.

**Przebieg Testowania Regresywnego:**

1. **Zidentyfikowanie Obszarów Wprowadzonych Zmian:**
   - Określenie, które części kodu zostały zmienione lub zaktualizowane.

2. **Wybór Testów do Wykonania:**
   - Wybór zestawu testów, które obejmują obszary zmian oraz sąsiednie obszary, które mogą być dotknięte zmianami.

3. **Automatyzacja Testów:**
   - Automatyzacja testów, aby skrócić czas i zachować spójność testów.

4. **Przeprowadzenie Testów:**
   - Wykonanie wybranych testów na zmienionych i sąsiednich obszarach.

5. **Analiza Wyników:**
   - Analiza wyników testów, aby zidentyfikować ewentualne problemy.

6. **Raportowanie:**
   - Dokładne raportowanie wyników, szczególnie w przypadku wykrycia nowych błędów.

**Zalety Testowania Regresywnego:**

- Szybkie wykrywanie potencjalnych błędów po wprowadzeniu zmian.
- Zapewnienie spójności i stabilności w funkcjonalnościach już przetestowanych.

**Wady Testowania Regresywnego:**

- Wymaga znacznego nakładu pracy, szczególnie przy częstych zmianach w kodzie.
- Automatyzacja testów regresywnych może być kosztowna.

Testowanie regresywne jest niezwykle istotne w procesie ciągłego dostarczania oprogramowania (Continuous Integration/Continuous Delivery - CI/CD), gdzie częste aktualizacje i zmiany w kodzie są powszechne. Pomaga to utrzymać wysoką jakość systemu i minimalizować ryzyko pojawienia się nowych błędów w wyniku wprowadzonych zmian.


# Testowanie Niefunkcjonalne (Non-functional Testing):

Testowanie niefunkcjonalne skupia się na atrybutach niefunkcjonalnych oprogramowania, czyli cechach, które nie dotyczą bezpośrednio jego funkcji, ale wpływają na ogólną wydajność, dostępność, bezpieczeństwo i inne aspekty. Jest to kluczowy element w ocenie jakości oprogramowania, ponieważ skupia się na cechach, które mają wpływ na doświadczenie użytkownika i ogólną wydajność systemu.

**Atrybuty Niefunkcjonalne, na Które Skierowane Jest Testowanie Niefunkcjonalne:**

1. **Wydajność:**
   - Testuje wydajność systemu pod względem szybkości, czasu odpowiedzi i obciążenia.

2. **Dostępność:**
   - Skupia się na dostępności systemu dla użytkowników, minimalizując ewentualne przerwy w działaniu.

3. **Bezpieczeństwo:**
   - Testuje odporność systemu na ataki, zabezpieczenia danych i dostępu do systemu.

4. **Niezbilansowanie:**
   - Sprawdza, jak system zachowuje się w warunkach skrajnych obciążeń i sytuacji awaryjnych.

5. **Skalowalność:**
   - Ocenia zdolność systemu do obsługi rosnącej liczby użytkowników lub zasobów.

6. **Zgodność:**
   - Testuje, czy system spełnia określone standardy, normy i wymagania prawne.

7. **Współpraca:**
   - Ocenia interoperacyjność systemu z innymi aplikacjami lub platformami.

8. **Zużycie Zasobów:**
   - Mierzy zużycie zasobów, takich jak pamięć, procesor i przepustowość sieci.

**Przebieg Testowania Niefunkcjonalnego:**

1. **Określenie Wymagań Niefunkcjonalnych:**
   - Zidentyfikowanie i sprecyzowanie atrybutów niefunkcjonalnych, które będą testowane.

2. **Tworzenie Planu Testów Niefunkcjonalnych:**
   - Opracowanie planu testów, który określa scenariusze testowe, kryteria sukcesu i metody pomiaru.

3. **Przygotowanie Środowiska Testowego:**
   - Stworzenie odpowiedniego środowiska testowego, uwzględniającego różne warunki, obciążenia i scenariusze.

4. **Przeprowadzenie Testów:**
   - Wykonanie testów, zgodnie z przygotowanym planem, symulując różne warunki i scenariusze.

5. **Analiza Wyników:**
   - Analiza wyników testów pod kątem spełnienia wymagań niefunkcjonalnych.

6. **Raportowanie:**
   - Dokładne raportowanie wyników, zidentyfikowanych problemów i rekomendacji.

**Zalety Testowania Niefunkcjonalnego:**

- Zapewnia kompleksową ocenę jakości oprogramowania.
- Pomaga w identyfikacji potencjalnych problemów wydajnościowych i bezpieczeństwa.

**Wady Testowania Niefunkcjonalnego:**

- Wymaga specjalistycznej wiedzy w dziedzinie poszczególnych atrybutów niefunkcjonalnych.
- Często wymaga specjalnych narzędzi i środowiska testowego.

## Testy niefunkcjonalne obejmują następujące rodzaje testów:
- Testowanie dostępności (ang. Availability Testing),
- Testowanie bazowe (ang. Baseline Testing),
- Testowani zdolności (ang. Capacity Testing),
- Testowanie zgodności (ang. Compatibility Testing),
- Testowanie zgodności z wymaganiami (ang. Compliance Testing),
- Testowanie konfiguracji (ang. Configuration Testing),
- Testowanie dokumentacji (ang. Documentation Testing),
- Testowanie efektywności (ang. Efficiency Testing),
- Testowanie wytrzymałości (ang. Endurance Testing),
- Testowanie funkcjonalności (ang. Functionality Testing),
- Testowanie współdziałania (ang. Interoperability Testing),
- Testowanie instalacji (ang. Installation Testing),
- Testowanie obciążenia (ang. Load Testing),
- Testowanie lokalizacji oraz internacjonalizacji (ang. Localization Testing and Internationalization Testing),
- Testy niefunkcjonalne obejmują następujące rodzaje testów:
- Testowanie utrzymywalności (ang. Maintainability Testing),
- Testowanie gotowości wdrożenia (ang. Operational Readiness Testing),
- Testowanie wydajnościowe (ang. Performance Testing),
- Testowanie przenośności (ang. Portability Testing),
- Testowanie odzyskiwania (ang. Recovery Testing),
- Testowanie wiarogodności i niezawodności (ang. Reliability and Dependability Testing),
- Testowanie odporności (ang. Resilience Testing),
- Testowanie bezpieczeństwa (ang. Security Testing),
- Testowanie skalowalności (ang. Scalability Testing),
- Testowanie stresy (ang. Stress Testing),
- Testowanie typu spike testing (ang. Spike Testing),
- Testowanie użyteczności (ang. Usability Testing),
- Testowanie objętości (ang. Volume Testing).

# Testowanie Bazowe (Baseline Testing):

Testowanie bazowe to rodzaj testowania, które koncentruje się na ustaleniu punktu odniesienia lub linii bazowej jako podstawy do oceny ewentualnych zmian lub udoskonaleń w oprogramowaniu. Jest to proces oceny stabilności i funkcjonalności systemu na początku jego cyklu życia lub po wprowadzeniu istotnych zmian.

**Główne Cechy Testowania Bazowego:**

1. **Ustalanie Punktów Bazowych:**
   - Określenie pierwotnego stanu oprogramowania, który będzie punktem odniesienia dla przyszłych testów.

2. **Ocena Stabilności:**
   - Testowanie bazowe ocenia, czy oprogramowanie działa zgodnie z oczekiwaniami i czy jest stabilne.

3. **Przypadki Testowe:**
   - Tworzenie przypadków testowych, które sprawdzają podstawowe funkcje systemu.

4. **Automatyzacja:**
   - Automatyzacja testów bazowych może pomóc w szybkim i spójnym wykonywaniu testów.

5. **Porównywanie Wyników:**
   - Porównywanie wyników testów bazowych z wynikami późniejszych testów, aby zidentyfikować ewentualne zmiany.

6. **Ocenianie Udoskonaleń:**
   - Jeśli wprowadzone zostaną zmiany, testowanie bazowe może ocenić, czy poprawki lub nowe funkcje wpłynęły na stabilność i jakość oprogramowania.

**Przebieg Testowania Bazowego:**

1. **Określenie Zakresu Testowania:**
   - Określenie zakresu testowania bazowego, tj. które funkcje i aspekty systemu zostaną przetestowane.

2. **Tworzenie Przypadków Testowych:**
   - Opracowanie przypadków testowych, które obejmują podstawowe funkcje i scenariusze użycia systemu.

3. **Przeprowadzenie Testów:**
   - Wykonanie testów bazowych, które mają na celu ocenę stabilności i podstawowej funkcjonalności systemu.

4. **Automatyzacja Testów (opcjonalnie):**
   - W razie potrzeby automatyzacja testów bazowych dla skrócenia czasu wykonania testów.

5. **Analiza Wyników:**
   - Analiza wyników testów bazowych w celu oceny, czy system spełnia założenia na etapie początkowym.

6. **Raportowanie:**
   - Sporządzenie raportu z wyników testów bazowych oraz ewentualnych zidentyfikowanych problemów lub sugestii do poprawy.

**Zalety Testowania Bazowego:**

- Zapewnia początkową ocenę jakości oprogramowania.
- Stanowi punkt odniesienia dla późniejszych testów.

**Wady Testowania Bazowego:**

- Czasochłonne, szczególnie w przypadku systemów złożonych.
- Wymaga starannej dokumentacji stanu bazowego.

# Testowanie Zdolności (Capacity Testing):

Testowanie zdolności (Capacity Testing) to proces oceny zdolności systemu do obsługi określonej liczby użytkowników, transakcji, danych lub innych elementów w warunkach rzeczywistego obciążenia. Celem tego rodzaju testowania jest zrozumienie granic systemu, identyfikacja potencjalnych wąskich gardeł, a także ocena, czy system spełnia wymagania dotyczące wydajności i skalowalności.

**Główne Cechy Testowania Zdolności:**

1. **Obciążenie Systemu:**
   - Ocena, jak system zachowuje się podczas maksymalnego lub przewidywanego obciążenia.

2. **Skalowalność:**
   - Testowanie zdolności obejmuje ocenę, jak łatwo system może skalować się w górę lub w dół w zależności od potrzeb.

3. **Identyfikacja Wąskich Gardeł:**
   - Zdolność identyfikowania obszarów systemu, które mogą stać się wąskimi gardłami w przypadku wzrostu obciążenia.

4. **Wydajność w Skrajnych Warunkach:**
   - Sprawdzenie, czy system jest w stanie obsłużyć skrajne warunki, takie jak nagły wzrost liczby użytkowników.

5. **Zarządzanie Zasobami:**
   - Testowanie, jak system zarządza zasobami, takimi jak pamięć, procesor czy przepustowość sieci.

6. **Ocena Wielozadaniowości:**
   - Weryfikacja, czy system radzi sobie z wieloma jednoczesnymi transakcjami, użytkownikami czy danymi.

**Przebieg Testowania Zdolności:**

1. **Definicja Celów Testowania:**
   - Określenie celów i parametrów, które będą testowane w ramach zdolności systemu.

2. **Tworzenie Scenariuszy Testowych:**
   - Opracowanie scenariuszy testowych, które symulują rzeczywiste obciążenie i użytkowanie systemu.

3. **Przeprowadzenie Testów:**
   - Realizacja testów, które oceniają zdolność systemu pod względem liczby użytkowników, transakcji lub danych.

4. **Analiza Wydajności:**
   - Analiza wyników testów pod kątem wydajności, identyfikacja obszarów do optymalizacji.

5. **Raportowanie:**
   - Sporządzenie raportu, zawierającego wyniki testów, wnioski, zidentyfikowane problemy i rekomendacje.

**Zalety Testowania Zdolności:**

- Pozwala na zrozumienie, jak system radzi sobie podczas maksymalnego obciążenia.
- Pomaga w identyfikacji potencjalnych problemów z wydajnością.

**Wady Testowania Zdolności:**

- Wymaga dużej ilości zasobów do przeprowadzenia testów na dużą skalę.
- Może być czasochłonne, zwłaszcza dla systemów o dużej złożoności.

# Testowanie Konfiguracji:

Testowanie konfiguracji to proces, który ma na celu sprawdzenie, czy oprogramowanie działa zgodnie z oczekiwaniami w różnych konfiguracjach środowiskowych, sprzętowych, sieciowych czy systemowych. W tym rodzaju testowania oceniana jest zdolność oprogramowania do dostosowania się do różnych ustawień i warunków, a także zapewnienie spójności i poprawnego funkcjonowania w różnych scenariuszach konfiguracyjnych.

**Główne Cechy Testowania Konfiguracji:**

1. **Różne Środowiska:**
   - Testowanie z różnymi konfiguracjami systemowymi, takimi jak różne wersje systemu operacyjnego, różne przeglądarki internetowe, itp.

2. **Zgodność Sprzętowa:**
   - Ocena, czy oprogramowanie działa poprawnie na różnych rodzajach sprzętu.

3. **Sieci i Protokoły:**
   - Sprawdzenie działania oprogramowania w różnych warunkach sieciowych i z różnymi protokołami.

4. **Wersje Językowe:**
   - Testowanie z różnymi ustawieniami językowymi, aby zweryfikować poprawność obsługi różnych wersji językowych.

5. **Konfiguracje Bezpieczeństwa:**
   - Testowanie oprogramowania w różnych konfiguracjach zabezpieczeń i uprawnień dostępu.

6. **Skalowalność:**
   - Sprawdzenie, czy oprogramowanie może skalować się i dostosowywać do różnych poziomów obciążenia.

**Przebieg Testowania Konfiguracji:**

1. **Definicja Scenariuszy Konfiguracyjnych:**
   - Określenie różnych scenariuszy konfiguracyjnych, które zostaną przetestowane.

2. **Przygotowanie Środowisk Testowych:**
   - Utworzenie środowisk testowych, które odzwierciedlają różne konfiguracje.

3. **Przeprowadzenie Testów:**
   - Wykonanie testów w różnych konfiguracjach, stosując różne ustawienia i warunki.

4. **Analiza Wyników:**
   - Analiza wyników testów pod kątem poprawności i spójności działania oprogramowania w różnych konfiguracjach.

5. **Raportowanie:**
   - Sporządzenie raportu, w którym zawarte są wyniki testów, zidentyfikowane problemy i rekomendacje.

**Zalety Testowania Konfiguracji:**

- Gwarantuje spójność działania oprogramowania w różnych środowiskach.
- Identyfikuje potencjalne problemy związane z różnymi konfiguracjami.

**Wady Testowania Konfiguracji:**

- Może wymagać znacznej ilości zasobów do przetestowania wszystkich możliwych konfiguracji.
- Czasochłonne, szczególnie dla dużych i złożonych systemów.


# Testowanie Dokumentacji:

Testowanie dokumentacji to proces oceny jakości dokumentów związanych z projektem, produktami lub systemem informatycznym. W skład dokumentacji mogą wchodzić specyfikacje, instrukcje obsługi, podręczniki, opisy przypadków użycia, diagramy, itp. Celem tego rodzaju testowania jest upewnienie się, że dokumentacja jest zrozumiała, kompletna, zgodna z rzeczywistością oraz spełnia oczekiwania użytkowników.

**Główne Cechy Testowania Dokumentacji:**

1. **Zgodność z Wymaganiami:**
   - Sprawdzenie, czy dokumentacja jest zgodna z założeniami i wymaganiami określonymi w specyfikacji projektu.

2. **Zrozumiałość:**
   - Ocena czytelności i zrozumiałości dokumentów, aby użytkownicy mogli łatwo korzystać z dostarczonych informacji.

3. **Aktualność:**
   - Weryfikacja, czy dokumentacja jest aktualna i odzwierciedla bieżący stan projektu, produktu lub systemu.

4. **Kompletność:**
   - Zapewnienie, że dokumentacja zawiera wszystkie niezbędne informacje dotyczące użytkowania, konfiguracji, instalacji, itp.

5. **Spójność:**
   - Sprawdzenie spójności informacji w różnych częściach dokumentacji oraz unikanie sprzeczności w treści.

6. **Zgodność z Standardami:**
   - Ocena, czy dokumentacja jest zgodna z przyjętymi standardami branżowymi lub firmowymi.

7. **Dostępność:**
   - Sprawdzenie, czy dokumentacja jest łatwo dostępna i czy jej struktura ułatwia nawigację.

**Przebieg Testowania Dokumentacji:**

1. **Analiza Dokumentów:**
   - Przegląd i analiza dostępnej dokumentacji, w tym specyfikacji, instrukcji, itp.

2. **Sprawdzenie Zgodności:**
   - Weryfikacja, czy dokumentacja jest zgodna z założeniami projektowymi i wymaganiami.

3. **Testy Zrozumiałości:**
   - Przeprowadzenie testów zrozumiałości, aby ocenić, czy użytkownicy mogą łatwo korzystać z dokumentów.

4. **Aktualizacja Dokumentacji:**
   - Weryfikacja, czy dokumentacja jest aktualna i odzwierciedla ostatnie zmiany w projekcie lub produkcie.

5. **Kontrola Kompletności:**
   - Sprawdzenie, czy dokumentacja jest kompletna i zawiera wszystkie niezbędne informacje.

6. **Testy Spójności:**
   - Ocena spójności informacji w różnych częściach dokumentacji.

7. **Raportowanie:**
   - Sporządzenie raportu zawierającego wyniki testów, zidentyfikowane problemy i ewentualne sugestie poprawy.

**Zalety Testowania Dokumentacji:**

- Poprawa zrozumiałości dla użytkowników końcowych.
- Zapewnienie, że dokumentacja jest zgodna z rzeczywistym stanem projektu.

**Wady Testowania Dokumentacji:**

- Wymaga czasu i wysiłku, szczególnie dla obszernych dokumentów.
- Może być subiektywne, zależne od doświadczenia testerów.

***WYKŁAD12--------------------------------------------***
# Testowanie efektywności
Testowanie efektywności (ang. Efficiency Testing) odnosi się do procesu oceny wydajności i efektywności systemu, aplikacji lub procesu pod kątem zużycia zasobów, czasu odpowiedzi, przepustowości i innych czynników wpływających na efektywne funkcjonowanie. Celem tego rodzaju testowania jest zidentyfikowanie obszarów, które mogą wymagać optymalizacji w celu poprawy wydajności.

**Główne Aspekty Testowania Efektywności:**

1. **Zużycie Zasobów:**
   - Ocena, ile zasobów, takich jak pamięć, procesor czy przestrzeń dyskowa, zużywa aplikacja lub system podczas różnych operacji.

2. **Czas Odpowiedzi:**
   - Pomiar czasu, jaki potrzebuje system lub aplikacja na odpowiedź na konkretne żądanie użytkownika.

3. **Przepustowość:**
   - Testowanie zdolności systemu do obsługi konkretnej ilości transakcji lub operacji w jednostce czasu.

4. **Skalowalność:**
   - Badanie, jak efektywnie system dostosowuje się do zwiększonego obciążenia lub ilości użytkowników.

5. **Stabilność:**
   - Sprawdzanie, czy system utrzymuje stabilność i wydajność w dłuższej perspektywie czasowej.

6. **Optymalizacja Kodu:**
   - Analiza, czy kod źródłowy aplikacji jest zoptymalizowany pod kątem wydajności.

**Przebieg Testowania Efektywności:**

1. **Definicja Celów Testów:**
   - Określenie oczekiwanych parametrów wydajnościowych, takich jak maksymalny czas odpowiedzi, minimalna przepustowość, itp.

2. **Przygotowanie Środowiska Testowego:**
   - Utworzenie środowiska testowego, które odzwierciedla rzeczywiste warunki użytkowania.

3. **Przeprowadzenie Testów:**
   - Wykonanie testów efektywności zgodnie z ustalonymi scenariuszami, uwzględniając różne warunki i scenariusze użycia.

4. **Monitorowanie Zasobów:**
   - Monitorowanie zużycia zasobów systemowych podczas testów.

5. **Analiza Wyników:**
   - Analiza wyników testów w celu zidentyfikowania obszarów wymagających optymalizacji.

6. **Optymalizacja i Retestowanie:**
   - Wprowadzenie optymalizacji tam, gdzie to konieczne, a następnie ponowne przetestowanie, aby zweryfikować poprawę efektywności.

7. **Raportowanie:**
   - Sporządzenie raportu zawierającego wyniki testów, wnioski, zalecenia i ewentualne problemy.

**Zalety Testowania Efektywności:**

- Umożliwia identyfikację i rozwiązanie problemów z wydajnością przed wdrożeniem systemu lub aplikacji.
- Zapewnia, że system będzie działał efektywnie nawet w warunkach obciążeniowych.

**Wady Testowania Efektywności:**

- Może wymagać zaawansowanych narzędzi i specjalistycznej wiedzy.
- Czasochłonne, zwłaszcza dla dużych i złożonych systemów.

Testowanie wytrzymałości (ang. Endurance Testing lub Soak Testing) to proces oceny, jak długo system lub aplikacja jest w stanie utrzymać określony poziom obciążenia lub działania w warunkach ekstremalnych. Celem tego rodzaju testów jest zidentyfikowanie potencjalnych problemów związanych z długotrwałym używaniem systemu, takich jak wycieki pamięci, problemy zasobów czy degradacja wydajności w czasie.

# Główne Cechy Testowania Wytrzymałości:

1. **Długotrwałe Obciążenie:**
   - System jest poddawany długotrwałemu obciążeniu, aby sprawdzić, czy utrzymuje stabilność i wydajność w czasie.

2. **Monitorowanie Zasobów:**
   - Monitorowanie zużycia zasobów, takich jak pamięć, procesor, przestrzeń dyskowa, podczas całego okresu testowania.

3. **Równoczesne Scenariusze:**
   - Wykonywanie różnych scenariuszy testowych jednocześnie, aby symulować rzeczywiste warunki użytkowania.

4. **Identyfikacja Wycieków Pamięci:**
   - Testowanie, czy system utrzymuje stałe zużycie pamięci, bez występowania wycieków.

5. **Długotrwałe Transakcje:**
   - Weryfikacja, czy system jest w stanie obsługiwać długotrwałe transakcje bez degradacji wydajności.

6. **Skalowalność w Czasie:**
   - Badanie, czy system jest skalowalny i czy może dostosować się do ewentualnego wzrostu obciążenia w dłuższej perspektywie czasowej.

**Przebieg Testowania Wytrzymałości:**

1. **Definicja Celów Testów:**
   - Określenie celów dotyczących czasu trwania testów, poziomu obciążenia, oraz oczekiwanej stabilności systemu.

2. **Konfiguracja Środowiska Testowego:**
   - Przygotowanie środowiska testowego, które odzwierciedla warunki rzeczywistego użytkowania.

3. **Przeprowadzenie Długotrwałych Testów:**
   - Wykonywanie testów, które trwają długi okres czasu, monitorowanie i rejestracja wyników.

4. **Analiza Wyników:**
   - Analiza wyników testów w poszukiwaniu potencjalnych problemów, takich jak wycieki pamięci czy degradacja wydajności.

5. **Optymalizacja i Retestowanie:**
   - Wprowadzenie optymalizacji tam, gdzie to konieczne, i ponowne przetestowanie systemu.

6. **Raportowanie:**
   - Sporządzenie raportu zawierającego wyniki testów, zidentyfikowane problemy, wnioski i zalecenia.

**Zalety Testowania Wytrzymałości:**

- Pozwala identyfikować problemy związane z długotrwałym używaniem systemu.
- Pomaga zweryfikować, czy system jest stabilny i efektywny w czasie.

**Wady Testowania Wytrzymałości:**

- Może wymagać dłuższego okresu czasu na przeprowadzenie pełnych testów.
- Potrzebuje odpowiedniego środowiska testowego do symulowania realnych warunków.


Testowanie funkcjonalności to proces oceny, czy oprogramowanie spełnia określone wymagania funkcjonalne i działa zgodnie z oczekiwaniami użytkowników. Jest to jedna z kluczowych części procesu testowania oprogramowania. Testowanie funkcjonalności koncentruje się na funkcjach, operacjach i interakcjach systemu.

# Główne Aspekty Testowania Funkcjonalności:

1. **Sprawdzanie Wymagań Funkcjonalnych:**
   - Weryfikacja, czy oprogramowanie spełnia wszystkie określone wymagania funkcjonalne.

2. **Przypadki Testowe:**
   - Tworzenie przypadków testowych opartych na wymaganiach funkcjonalnych, które obejmują różne scenariusze użycia.

3. **Testowanie Interakcji:**
   - Ocena interakcji pomiędzy różnymi elementami systemu, modułami lub funkcjami.

4. **Testowanie Operacji:**
   - Sprawdzanie, czy wszystkie operacje i funkcje wykonują się zgodnie z oczekiwaniami.

5. **Testowanie Zgodności:**
   - Weryfikacja, czy oprogramowanie jest zgodne z zewnętrznymi standardami, protokołami i innymi wymaganiami.

6. **Testowanie Bezpieczeństwa:**
   - Badanie funkcji zabezpieczających i sprawdzanie, czy oprogramowanie jest odporne na ataki.

7. **Testowanie Wydajności:**
   - Ocena wydajności funkcjonalności pod względem czasu reakcji, przepustowości i efektywności.

8. **Testowanie Integracji:**
   - Weryfikacja, czy funkcjonalności integrują się poprawnie ze sobą.

9. **Przypadek Użycia:**
   - Testowanie funkcji na podstawie konkretnych przypadków użycia, które mogą wystąpić w rzeczywistych warunkach.

**Przebieg Testowania Funkcjonalności:**

1. **Analiza Wymagań:**
   - Zapoznanie się z wymaganiami funkcjonalnymi oprogramowania.

2. **Tworzenie Przypadków Testowych:**
   - Opracowanie przypadków testowych opartych na wymaganiach, scenariuszach użycia i innych dokumentach.

3. **Przeprowadzenie Testów:**
   - Wykonanie testów zgodnie z przygotowanymi przypadkami testowymi.

4. **Rejestracja Wyników:**
   - Dokumentacja wyników testów, z uwzględnieniem znalezionych błędów i rezultatów pozytywnych.

5. **Analiza Błędów:**
   - Analiza i raportowanie znalezionych błędów, współpraca z zespołem deweloperskim w celu ich naprawy.

6. **Retestowanie:**
   - Ponowne przetestowanie błędów po ich naprawie w celu zweryfikowania poprawności.

7. **Akceptacja:**
   - Weryfikacja, czy oprogramowanie spełnia wymagania klienta i jest gotowe do akceptacji.

**Zalety Testowania Funkcjonalności:**

- Zapewnia, że oprogramowanie spełnia założone funkcje.
- Pomaga w identyfikacji błędów i niezgodności z wymaganiami.

**Wady Testowania Funkcjonalności:**

- Nie uwzględnia aspektów niefunkcjonalnych, takich jak wydajność czy bezpieczeństwo.
- Może być czasochłonne, szczególnie w przypadku obszernych aplikacji.

Testowanie współdziałania (ang. interoperability testing) to proces oceny zdolności różnych systemów, aplikacji lub komponentów do współpracy i komunikacji ze sobą. Celem jest sprawdzenie, czy produkty działają poprawnie, gdy są ze sobą integrowane, zwłaszcza w przypadku, gdy pochodzą od różnych dostawców lub są oparte na różnych standardach.

# Główne Cechy Testowania Współdziałania:

1. **Integracja Systemów:**
   - Ocena zdolności różnych systemów do współpracy i wymiany danych.

2. **Kompatybilność:**
   - Sprawdzenie, czy różne wersje systemów lub aplikacji są ze sobą kompatybilne.

3. **Wymiana Danych:**
   - Testowanie poprawności przesyłania i odbierania danych między różnymi elementami systemu.

4. **Standardy i Protokoły:**
   - Weryfikacja zgodności z ustalonymi standardami i protokołami komunikacyjnymi.

5. **Współpraca Zestawów Narzędziowych:**
   - Testowanie, czy różne zestawy narzędziowe czy platformy są ze sobą interoperacyjne.

6. **Testowanie Zdalne:**
   - Ocena współdziałania komponentów znajdujących się na różnych fizycznych urządzeniach.

7. **Testowanie Cross-Browser:**
   - Weryfikacja, czy aplikacja działa poprawnie na różnych przeglądarkach internetowych.

8. **Testowanie Cross-Platform:**
   - Sprawdzenie, czy aplikacja jest interoperacyjna na różnych platformach, takich jak systemy operacyjne czy urządzenia mobilne.

**Przebieg Testowania Współdziałania:**

1. **Analiza Wymagań Współdziałania:**
   - Zidentyfikowanie wymagań dotyczących współdziałania między systemami.

2. **Tworzenie Scenariuszy Współdziałania:**
   - Opracowanie scenariuszy testowych obejmujących różne przypadki współdziałania.

3. **Integracja Systemów:**
   - Integracja różnych systemów lub komponentów w celu przeprowadzenia testów.

4. **Przeprowadzenie Testów:**
   - Wykonanie testów zgodnie z przygotowanymi scenariuszami, sprawdzenie poprawności współdziałania.

5. **Rejestracja Wyników:**
   - Dokumentacja wyników testów, z uwzględnieniem znalezionych błędów i wyników pozytywnych.

6. **Analiza Błędów:**
   - Analiza i raportowanie znalezionych błędów, współpraca z zespołem deweloperskim w celu ich naprawy.

7. **Retestowanie:**
   - Ponowne przetestowanie błędów po ich naprawie w celu zweryfikowania poprawności.

8. **Akceptacja:**
   - Weryfikacja, czy systemy są w stanie współpracować zgodnie z oczekiwaniami.

**Zalety Testowania Współdziałania:**

- Zapewnia, że różne elementy systemu mogą ze sobą współpracować.
- Identyfikuje potencjalne problemy związane z integracją międzykomponentową.

**Wady Testowania Współdziałania:**

- Może być skomplikowane, szczególnie w przypadku dużych i rozbudowanych systemów.
- Wymaga dostępu do różnych systemów i środowisk testowych.


Testowanie instalacji (ang. installation testing) to proces oceny poprawności instalacji oprogramowania na docelowej platformie lub środowisku. Celem jest zapewnienie, że proces instalacji przebiega bezproblemowo, a zainstalowane oprogramowanie działa zgodnie z oczekiwaniami. Testowanie instalacji jest kluczowym etapem w cyklu życia oprogramowania, ponieważ błędy w instalacji mogą prowadzić do problemów z użytkowaniem aplikacji.

# Główne Aspekty Testowania Instalacji:

1. **Poprawność Procesu Instalacji:**
   - Ocena, czy proces instalacji działa zgodnie z założeniami, czy nie występują błędy ani problemy.

2. **Integracja z Systemem Operacyjnym:**
   - Weryfikacja, czy instalowana aplikacja integruje się poprawnie z systemem operacyjnym.

3. **Zgodność Zależności:**
   - Sprawdzenie, czy wymagane zależności i biblioteki są poprawnie zainstalowane.

4. **Przestrzeganie Standardów:**
   - Weryfikacja, czy proces instalacji przestrzega standardów i najlepszych praktyk.

5. **Konfiguracja Domyślna:**
   - Sprawdzenie, czy konfiguracja domyślna po instalacji jest poprawna i zgodna z oczekiwaniami.

6. **Usuwanie Aplikacji:**
   - Testowanie procesu deinstalacji, czy aplikacja może być poprawnie odinstalowana.

7. **Sprawdzenie Praw Dostępu:**
   - Weryfikacja, czy instalacja nie narusza praw dostępu do zasobów systemowych.

**Przebieg Testowania Instalacji:**

1. **Przygotowanie Środowiska Testowego:**
   - Utworzenie kontrolowanej przestrzeni testowej, na której będzie przeprowadzane testowanie.

2. **Instalacja Oprogramowania:**
   - Przeprowadzenie procesu instalacji na docelowej platformie, z użyciem różnych konfiguracji.

3. **Testy Funkcjonalności:**
   - Sprawdzenie, czy zainstalowane oprogramowanie działa poprawnie po instalacji.

4. **Testy Integracji:**
   - Weryfikacja, czy zainstalowane oprogramowanie integruje się z innymi składnikami systemu.

5. **Testy Deinstalacji:**
   - Przeprowadzenie testów deinstalacji, sprawdzenie, czy aplikacja może być usunięta bezproblemowo.

6. **Rejestracja Wyników:**
   - Dokumentacja wyników testów, z uwzględnieniem ewentualnych błędów lub problemów.

7. **Analiza Błędów:**
   - Analiza i raportowanie znalezionych błędów, współpraca z zespołem deweloperskim w celu ich naprawy.

8. **Retestowanie:**
   - Ponowne przetestowanie błędów po ich naprawie w celu zweryfikowania poprawności.

**Zalety Testowania Instalacji:**

- Minimalizuje ryzyko problemów związanych z instalacją u użytkowników końcowych.
- Zapewnia, że oprogramowanie działa zgodnie z oczekiwaniami po poprawnej instalacji.

**Wady Testowania Instalacji:**

- Może być czasochłonne, szczególnie w przypadku aplikacji o skomplikowanym procesie instalacji.
- Wymaga dostępu do różnych środowisk i platform, co może być utrudnione w niektórych przypadkach.


Testowanie obciążenia (ang. load testing) to proces oceny zdolności systemu, aplikacji lub serwera do obsługi określonego poziomu obciążenia lub liczby jednoczesnych użytkowników. Celem tego rodzaju testowania jest zidentyfikowanie granic wydajności systemu, a także ocena jego zachowania w warunkach dużej liczby użytkowników lub intensywnego obciążenia. Testowanie obciążenia jest szczególnie istotne w przypadku aplikacji internetowych, serwerów, systemów e-commerce i innych rozwiązań, gdzie skuteczność obsługi wielu użytkowników równocześnie jest kluczowa.

# Główne Aspekty Testowania Obciążenia:

1. **Wydajność:**
   - Ocena ogólnej wydajności systemu podczas obciążenia.

2. **Stabilność:**
   - Weryfikacja, czy system utrzymuje stabilność przy dużej liczbie jednoczesnych żądań.

3. **Reakcja na Obciążenie:**
   - Testowanie, jak system reaguje na stopniowe zwiększanie liczby użytkowników lub obciążenia.

4. **Odzyskiwanie po Awarii:**
   - Weryfikacja zdolności systemu do odzyskiwania po ewentualnych awariach lub przeciążeniach.

5. **Czas Odpowiedzi:**
   - Pomiar czasu odpowiedzi systemu podczas obciążenia, zwłaszcza w przypadku różnych scenariuszy użycia.

6. **Skalowalność:**
   - Testowanie skalowalności systemu poprzez dodawanie zasobów (np. serwerów) w celu obsługi większej liczby użytkowników.

7. **Monitorowanie Zasobów:**
   - Śledzenie zużycia zasobów systemowych (CPU, pamięć, przepustowość sieci) podczas obciążenia.

8. **Testy Długotrwałe:**
   - Przeprowadzanie testów obciążeniowych przez dłuższy czas w celu identyfikacji problemów wynikających z ciągłego obciążenia.

**Przebieg Testowania Obciążenia:**

1. **Określenie Celów Testów:**
   - Zdefiniowanie celów testów, takich jak określona liczba jednoczesnych użytkowników, czas odpowiedzi czy skalowalność.

2. **Przygotowanie Scenariuszy Testowych:**
   - Opracowanie scenariuszy testowych odzwierciedlających rzeczywiste warunki użytkowania systemu.

3. **Konfiguracja Środowiska Testowego:**
   - Skonfigurowanie kontrolowanego środowiska testowego do przeprowadzenia testów.

4. **Przeprowadzenie Testów:**
   - Wykonanie testów obciążeniowych zgodnie z przygotowanymi scenariuszami.

5. **Monitorowanie Zasobów:**
   - Śledzenie wydajności i zużycia zasobów systemowych podczas obciążenia.

6. **Analiza Wyników:**
   - Dokumentacja wyników testów, identyfikacja ewentualnych problemów i bottlenecków.

7. **Optymalizacja:**
   - W przypadku znalezienia problemów, praca nad optymalizacją systemu w celu poprawy wydajności.

8. **Raportowanie:**
   - Przygotowanie raportu z wynikami testów oraz wnioskami dotyczącymi wydajności systemu.

**Zalety Testowania Obciążenia:**

- Identyfikacja potencjalnych problemów z wydajnością przed wprowadzeniem systemu do produkcji.
- Zapewnienie, że system może obsłużyć planowany poziom obciążenia.

**Wady Testowania Obciążenia:**

- Może być złożone w przeprowadzeniu, zwłaszcza przy dużych i rozbudowanych systemach.
- Wymaga dostępu do narzędzi do przeprowadzania testów obciążeniowych oraz kontrolowanego środowiska testowego.

# Testowanie lokalizacji (L10N) i internacjonalizacji (I18N):

**1. Lokalizacja (L10N):**
   - Lokalizacja odnosi się do dostosowywania oprogramowania do konkretnego regionu, języka, kultury czy ustawień lokalnych. Testowanie lokalizacji ma na celu sprawdzenie, czy oprogramowanie działa poprawnie i jest zrozumiałe dla użytkowników w danym obszarze geograficznym.

**Aspekty Testowania Lokalizacji:**
   - **Język i Znaki:**
      - Sprawdzenie poprawności wyświetlania i obsługi różnych języków oraz znaków specyficznych dla danego alfabetu.
   - **Formaty Daty i Czasu:**
      - Weryfikacja, czy formaty daty i czasu są zgodne z lokalnymi ustawieniami.
   - **Formaty Walut:**
      - Testowanie poprawności obsługi lokalnych formatów walut i symboli.
   - **Adaptacja do Kultury:**
      - Sprawdzenie, czy oprogramowanie dostosowuje się do specyfiki kulturowej danego obszaru.

**2. Internacjonalizacja (I18N):**
   - Internacjonalizacja to projektowanie i implementacja oprogramowania w taki sposób, aby było ono łatwo dostosowywalne do różnych lokalizacji i kultur. Testowanie internacjonalizacji ocenia, czy oprogramowanie jest gotowe do lokalizacji.

**Aspekty Testowania Internacjonalizacji:**
   - **Zasoby Językowe:**
      - Weryfikacja, czy aplikacja korzysta z zasobów językowych, ułatwiając proces lokalizacji.
   - **Obsługa Znaków Specjalnych:**
      - Testowanie poprawności obsługi znaków specjalnych i różnych zestawów znaków.
   - **Rozszerzalność Interfejsu Użytkownika:**
      - Sprawdzenie, czy interfejs użytkownika jest elastyczny i dostosowuje się do różnych długości tekstów w różnych językach.
   - **Obsługa Wielu Języków:**
      - Weryfikacja, czy oprogramowanie obsługuje równocześnie wiele języków.

**Przebieg Testowania Lokalizacji i Internacjonalizacji:**

1. **Analiza Wymagań:**
   - Zrozumienie, które obszary aplikacji wymagają lokalizacji, a które powinny być internacjonalizowane.

2. **Przygotowanie Środowiska Testowego:**
   - Utworzenie kontrolowanego środowiska testowego, uwzględniającego różne ustawienia regionalne.

3. **Testowanie Zasobów Językowych:**
   - Weryfikacja poprawności i kompletności zasobów językowych w interfejsie użytkownika.

4. **Testowanie Znaków Specjalnych:**
   - Sprawdzenie poprawności obsługi znaków specjalnych w różnych językach.

5. **Adaptacja do Formatów Daty i Czasu:**
   - Testowanie, czy formaty daty i czasu są zgodne z lokalnymi preferencjami.

6. **Testowanie Lokalizacji Interfejsu Użytkownika:**
   - Weryfikacja, czy interfejs użytkownika dostosowuje się do różnych lokalizacji.

7. **Sprawdzanie Kulturowych Oczekiwań:**
   - Testowanie, czy oprogramowanie spełnia kulturowe oczekiwania użytkowników.

8. **Ocena Elastyczności Aplikacji:**
   - Sprawdzenie, czy interfejs użytkownika jest elastyczny i dostosowuje się do różnych długości tekstów.

9. **Raportowanie Błędów:**
   - Dokumentacja wszelkich znalezionych błędów i problemów z lokalizacją/internacjonalizacją.

**Zalety Testowania Lokalizacji i Internacjonalizacji:**

- Zapewnienie, że oprogramowanie jest dostosowane do różnych regionów, co zwiększa jego atrakcyjność na rynkach międzynarodowych.
-

 Poprawa zrozumiałości i użyteczności oprogramowania dla użytkowników z różnych kultur i języków.

**Wady Testowania Lokalizacji i Internacjonalizacji:**

- Wymaga dużej ilości zasobów językowych do przetestowania.
- Różnorodność kultur i języków sprawia, że testowanie może być czasochłonne.

**Testowanie Utrzymywalności Oprogramowania:**

**Utrzymywalność oprogramowania** odnosi się do zdolności oprogramowania do łatwej modyfikacji, rozwoju, naprawiania błędów oraz dostosowywania do zmieniających się potrzeb. Testowanie utrzymywalności koncentruje się na sprawdzeniu, czy oprogramowanie jest zbudowane w sposób, który ułatwia jego późniejsze utrzymanie i rozwijanie.

# Aspekty Testowania Utrzymywalności:

1. **Czytelność Kodu:**
   - Sprawdzenie czy kod źródłowy jest czytelny, zgodny z zasadami formatowania i dokumentacji.

2. **Modułowość:**
   - Ocena, czy oprogramowanie jest podzielone na funkcjonalne moduły, co ułatwia izolację i modyfikację poszczególnych części.

3. **Skalowalność:**
   - Testowanie zdolności oprogramowania do skalowania, czyli dostosowywania się do zmiany rozmiaru projektu bez utraty wydajności.

4. **Łatwość Rozszerzania:**
   - Weryfikacja, czy dodawanie nowych funkcji lub modułów jest łatwe i nie prowadzi do nieprzewidzianych problemów.

5. **Testowalność:**
   - Sprawdzenie, czy oprogramowanie jest łatwe do testowania, czy istnieją odpowiednie mechanizmy do przeprowadzania testów jednostkowych, integracyjnych itp.

6. **Łatwość Diagnozowania Błędów:**
   - Ocena czy oprogramowanie dostarcza informacji diagnostycznych w przypadku błędów, ułatwiających ich identyfikację i naprawę.

7. **Dokumentacja:**
   - Przegląd dokumentacji, aby upewnić się, że jest kompletna i zrozumiała dla osób utrzymujących oprogramowanie.

8. **Zależności Zewnętrzne:**
   - Sprawdzenie, czy oprogramowanie niezawodnie obsługuje zmiany w zależnościach zewnętrznych, takich jak aktualizacje bibliotek czy systemów operacyjnych.

9. **Łatwość Zastępowania Komponentów:**
   - Testowanie, czy poszczególne komponenty lub biblioteki mogą być łatwo zastępowane nowymi wersjami.

**Przebieg Testowania Utrzymywalności:**

1. **Analiza Kodu Źródłowego:**
   - Przegląd kodu źródłowego w poszukiwaniu czytelności, zrozumiałości i zgodności z zasadami programowania.

2. **Testowanie Modułowości:**
   - Sprawdzenie, czy oprogramowanie jest podzielone na moduły i czy zmiany w jednym module nie wpływają negatywnie na inne.

3. **Skalowalność:**
   - Ocena, jak oprogramowanie radzi sobie ze zwiększeniem liczby użytkowników, danych czy innych elementów, które mogą rosnąć w czasie.

4. **Testowanie Łatwości Rozszerzania:**
   - Dodanie nowych funkcji lub modułów w celu oceny, czy proces rozszerzania oprogramowania jest intuicyjny i prosty.

5. **Testowalność:**
   - Sprawdzenie, czy istniejące mechanizmy testowania są skuteczne i czy tworzenie nowych testów jest wygodne.

6. **Łatwość Diagnozowania Błędów:**
   - Symulacja błędów i ocena, czy dostarczane są wystarczające informacje diagnostyczne.

7. **Przegląd Dokumentacji:**
   - Sprawdzenie, czy dokumentacja jest aktualna, kompletna i czytelna.

8. **Zarządzanie Zależnościami:**
   - Testowanie zachowania oprogramowania w przypadku zmian w zależnościach zewnętrznych.

**Zalety Testowania Utrzymywalności:**

- Skrócenie czasu i kosztów utrzymania oprogramowania.
- Zwiększenie elastyczności i dostosowawczości do zmian.

**Wady Testowania Utrzymywalności:**

- Może wymagać dodatkowego czasu na przegląd kodu i dokumentacji.
- Testowanie skalowalności może być trudne do przeprowadzenia w warunkach laboratoryjnych.

# Testowanie Gotowości Wdrożenia:

**Testowanie Gotowości Wdrożenia** to proces oceny, czy oprogramowanie jest gotowe do wprowadzenia na rynek lub wdrożenia w środowisku produkcyjnym. Ten rodzaj testowania ma na celu upewnienie się, że wszystkie aspekty związane z wdrożeniem, takie jak funkcjonalność, wydajność, bezpieczeństwo i zgodność z wymaganiami, zostały zrealizowane zgodnie z oczekiwaniami.

**Aspekty Testowania Gotowości Wdrożenia:**

1. **Funkcjonalność:**
   - Sprawdzenie, czy wszystkie funkcje oprogramowania działają zgodnie z wymaganiami i spełniają oczekiwania użytkowników.

2. **Wydajność:**
   - Ocena wydajności oprogramowania pod kątem obciążenia, szybkości działania i responsywności.

3. **Bezpieczeństwo:**
   - Testowanie zabezpieczeń oprogramowania, identyfikacja i naprawa potencjalnych luk w bezpieczeństwie.

4. **Zgodność:**
   - Upewnienie się, że oprogramowanie jest zgodne z wszelkimi standardami, regulacjami i wymaganiami prawnymi.

5. **Przypadki Awaryjne:**
   - Sprawdzenie, jak oprogramowanie reaguje na przypadki awaryjne, takie jak błędy, utrata połączenia, itp.

6. **Testy Przejściowe:**
   - Przeprowadzenie testów przechodzących między różnymi etapami w cyklu życia oprogramowania, od testów jednostkowych po testy akceptacyjne.

7. **Dokumentacja:**
   - Przegląd dokumentacji, w tym instrukcji obsługi, podręczników użytkownika i wszelkich instrukcji związanych z wdrożeniem.

8. **Skrypty i Narzędzia Wdrożeniowe:**
   - Upewnienie się, że wszelkie skrypty i narzędzia używane do wdrożenia są gotowe do użycia i zrozumiałe.

9. **Kompatybilność:**
   - Testowanie kompatybilności oprogramowania z różnymi platformami, systemami operacyjnymi i środowiskami.

**Przebieg Testowania Gotowości Wdrożenia:**

1. **Ostatnie Testy Funkcjonalne:**
   - Przeprowadzenie ostatnich testów funkcjonalnych, aby upewnić się, że wszystkie funkcje działają poprawnie.

2. **Testy Wydajności:**
   - Symulacja obciążenia w celu oceny wydajności systemu i identyfikacji potencjalnych problemów.

3. **Testy Bezpieczeństwa:**
   - Przeprowadzenie testów bezpieczeństwa, w tym penetracyjnych, aby zidentyfikować ewentualne luki w zabezpieczeniach.

4. **Testy Przejściowe:**
   - Testowanie przejścia między różnymi etapami cyklu życia oprogramowania, sprawdzenie, czy wszystkie etapy są zgodne z planem.

5. **Testy Kompatybilności:**
   - Sprawdzenie, czy oprogramowanie działa poprawnie na różnych platformach i środowiskach.

6. **Dokumentacja:**
   - Przegląd dokumentacji, aby upewnić się, że jest kompletna i zrozumiała dla użytkowników i administratorów systemu.

7. **Awaryjność:**
   - Symulacja sytuacji awaryjnych i ocena, czy oprogramowanie radzi sobie w takich sytuacjach.

**Zalety Testowania Gotowości Wdrożenia:**

- Minimalizacja ryzyka błędów po wdrożeniu.
- Zwiększenie pewności co do stabilności i wydajności oprogramowania.

**Wady Testowania Gotowości Wdrożenia:**

- Wymaga dodatkowego nakładu czasu i zasobów przed planowanym wdrożeniem.
- Może generować koszty związane z ewentualnymi poprawkami i dostosowaniami.


# Testowanie Wydajnościowe:

**Testowanie Wydajnościowe** to proces oceny i pomiaru zdolności oprogramowania do spełniania określonych kryteriów wydajnościowych. Celem tego rodzaju testów jest zidentyfikowanie potencjalnych problemów związanych z wydajnością, takich jak opóźnienia, obciążenie systemu, zużycie zasobów czy nieefektywne zarządzanie danymi. Testowanie wydajnościowe pozwala również określić, czy oprogramowanie spełnia ustalone wymagania dotyczące czasu odpowiedzi, przepustowości i stabilności w warunkach rzeczywistego użytkowania.

**Aspekty Testowania Wydajnościowego:**

1. **Obciążenie (Load Testing):**
   - Ocena, jak oprogramowanie radzi sobie podczas normalnego obciążenia i w warunkach przekraczających granice jego zdolności.

2. **Stres (Stress Testing):**
   - Testowanie systemu pod kątem ekstremalnych warunków obciążenia w celu sprawdzenia, jak zachowa się w warunkach przekraczających jego granice.

3. **Przepustowość (Throughput Testing):**
   - Pomiar zdolności systemu do obsługi określonej ilości transakcji w jednostce czasu.

4. **Czas Odpowiedzi (Response Time Testing):**
   - Pomiar czasu, jaki upływa od wysłania żądania do otrzymania odpowiedzi od systemu.

5. **Stabilność (Stability Testing):**
   - Ocena, czy system utrzymuje swoją stabilność w dłuższej perspektywie czasowej i podczas ciągłego obciążenia.

6. **Skalowalność (Scalability Testing):**
   - Testowanie, jak system skaluje się w odpowiedzi na rosnące obciążenie, czy jest w stanie efektywnie obsłużyć rosnącą liczbę użytkowników lub transakcji.

7. **Testowanie Piki Obciążenia (Spike Testing):**
   - Sprawdzanie, jak system reaguje na nagły wzrost obciążenia, tzw. piki, które mogą wystąpić w krótkim okresie czasu.

8. **Testowanie Wartości Granicznych (Boundary Testing):**
   - Ocena, jak system zachowuje się w przypadku osiągnięcia lub przekroczenia wartości granicznych jego zdolności.

**Proces Testowania Wydajnościowego:**

1. **Definicja Kryteriów Wydajnościowych:**
   - Określenie, jakie kryteria wydajnościowe muszą być spełnione.

2. **Planowanie i Przygotowanie Testów:**
   - Opracowanie planu testów, identyfikacja scenariuszy testowych i przygotowanie środowiska testowego.

3. **Implementacja i Wykonanie Testów:**
   - Realizacja testów zgodnie z przygotowanym planem, zbieranie danych dotyczących wydajności.

4. **Monitorowanie i Analiza Wyników:**
   - Monitorowanie systemu podczas testów, analiza uzyskanych wyników i identyfikacja ewentualnych problemów.

5. **Optymalizacja i Poprawki:**
   - Wprowadzanie poprawek i optymalizacji w celu poprawy wydajności systemu.

**Zalety Testowania Wydajnościowego:**

- Identyfikacja potencjalnych problemów z wydajnością przed wdrożeniem.
- Poprawa stabilności i efektywności systemu.

**Wady Testowania Wydajnościowego:**

- Wymaga zaawansowanej wiedzy na temat architektury systemu i jego komponentów.
- Może generować dodatkowe koszty związane z ewentualnymi dostosowaniami i optymalizacjami.

# Testowanie Przenośności:

**Testowanie Przenośności** to proces, w którym ocenia się zdolność oprogramowania do łatwego przenoszenia pomiędzy różnymi środowiskami, platformami i systemami operacyjnymi. Celem tego rodzaju testów jest zapewnienie, że oprogramowanie działa poprawnie na różnych konfiguracjach sprzętowych i oprogramowania, niezależnie od specyfikacji technicznych danego środowiska.

**Aspekty Testowania Przenośności:**

1. **Zgodność ze Standardami:**
   - Sprawdzenie, czy oprogramowanie jest zgodne ze standardami przenośnościowymi i wytycznymi.

2. **Kompatybilność Zawartości:**
   - Testowanie, czy oprogramowanie działa poprawnie z różnymi rodzajami danych wejściowych.

3. **Zgodność z Systemem Operacyjnym:**
   - Ocena, czy oprogramowanie działa zgodnie z oczekiwaniami na różnych systemach operacyjnych.

4. **Zgodność z Przeglądarkami:**
   - Testowanie, czy aplikacja internetowa działa poprawnie na różnych przeglądarkach.

5. **Przenoszenie Konfiguracji:**
   - Sprawdzenie, czy konfiguracja oprogramowania może być łatwo przenoszona pomiędzy różnymi środowiskami.

6. **Przenoszenie Danych:**
   - Ocena, czy dane zapisane przez oprogramowanie w jednym środowisku mogą być łatwo przeniesione do innego.

7. **Zarządzanie Pamięcią:**
   - Sprawdzenie, jak oprogramowanie zarządza pamięcią i zasobami w różnych warunkach przenoszenia.

8. **Odporność na Błędy:**
   - Testowanie, jak oprogramowanie reaguje na błędy i sytuacje awaryjne w różnych środowiskach.

**Proces Testowania Przenośności:**

1. **Analiza Wymagań Przenośnościowych:**
   - Zidentyfikowanie wymagań dotyczących przenośności oprogramowania.

2. **Projektowanie Testów Przenośnościowych:**
   - Opracowanie planu testów przenośnościowych, w tym scenariuszy testowych i przypadków testowych.

3. **Przygotowanie Środowiska Testowego:**
   - Stworzenie różnych środowisk testowych, które odzwierciedlają różne platformy i konfiguracje.

4. **Wykonanie Testów:**
   - Realizacja testów przenośnościowych zgodnie z planem, uwzględniając różne warunki.

5. **Monitorowanie i Analiza Wyników:**
   - Analiza uzyskanych wyników, identyfikacja ewentualnych problemów z przenośnością.

6. **Dostosowanie i Poprawki:**
   - Wprowadzanie poprawek i dostosowań w celu zwiększenia przenośności oprogramowania.

**Zalety Testowania Przenośności:**

- Zapewnienie, że oprogramowanie może działać na różnych platformach.
- Zminimalizowanie ryzyka związanego z niekompatybilnością na różnych środowiskach.

**Wady Testowania Przenośności:**

- Wymaga dostępu do różnych środowisk testowych, co może być czasochłonne.
- Testy przenośnościowe mogą generować dodatkowe koszty związane z utrzymaniem różnych platform i konfiguracji.

# Testowanie Odzyskiwania (Recovery Testing):

**Testowanie Odzyskiwania** to proces, w ramach którego sprawdza się zdolność oprogramowania do poprawnego i skutecznego odzyskiwania po awarii lub sytuacji awaryjnej. Celem tego rodzaju testów jest zidentyfikowanie, jak szybko i efektywnie oprogramowanie może wrócić do normalnego stanu działania po wystąpieniu problemu, takiego jak awaria sprzętu, błąd w oprogramowaniu, czy utrata zasilania.

**Aspekty Testowania Odzyskiwania:**

1. **Odzyskiwanie po Awarii Sprzętu:**
   - Ocena, jak oprogramowanie radzi sobie po awarii sprzętu, takiej jak dysk twardy, pamięć RAM czy procesor.

2. **Odzyskiwanie po Błędach Oprogramowania:**
   - Sprawdzenie, czy oprogramowanie potrafi wykrywać i naprawiać błędy w trakcie działania.

3. **Odzyskiwanie po Utracie Zasilania:**
   - Testowanie, jak oprogramowanie reaguje na nagłą utratę zasilania i jak skutecznie może wrócić do normalnego stanu pracy.

4. **Odzyskiwanie po Atakach Złośliwego Oprogramowania:**
   - Sprawdzenie, czy oprogramowanie potrafi odzyskać się po atakach hakerskich, wirusach czy innego rodzaju atakach złośliwego oprogramowania.

5. **Odzyskiwanie po Utracie Danych:**
   - Testowanie, czy oprogramowanie potrafi skutecznie odzyskać dane po ich utracie.

6. **Odzyskiwanie po Błędach Interfejsu Użytkownika:**
   - Ocena, jak oprogramowanie radzi sobie z błędami zgłaszanymi przez użytkownika czy wynikającymi z błędów interfejsu użytkownika.

**Proces Testowania Odzyskiwania:**

1. **Definicja Wymagań Odzyskiwania:**
   - Określenie wymagań dotyczących zdolności odzyskiwania oprogramowania.

2. **Projektowanie Testów Odzyskiwania:**
   - Opracowanie planu testów, identyfikacja scenariuszy odzyskiwania i przygotowanie przypadków testowych.

3. **Przygotowanie Środowiska Testowego:**
   - Stworzenie środowiska testowego, które pozwoli na symulację różnych sytuacji awaryjnych.

4. **Wykonanie Testów:**
   - Realizacja testów odzyskiwania zgodnie z planem, uwzględniając różne scenariusze.

5. **Monitorowanie i Analiza Wyników:**
   - Analiza wyników testów, identyfikacja czasu potrzebnego na odzyskiwanie i ewentualnych problemów.

6. **Optymalizacja i Poprawki:**
   - Wprowadzanie poprawek i optymalizacji w celu zwiększenia skuteczności procesu odzyskiwania.

**Zalety Testowania Odzyskiwania:**

- Zapewnienie, że oprogramowanie jest odporne na różne rodzaje awarii.
- Minimalizacja ryzyka utraty danych lub czasu w przypadku problemów.

**Wady Testowania Odzyskiwania:**

- Wymaga zaawansowanej wiedzy na temat architektury systemu i mechanizmów odzyskiwania.
- Może generować dodatkowe koszty związane z ewentualnymi dostosowaniami i optymalizacjami.


# Testowanie Wiarygodności i Niezawodności:

**Testowanie Wiarygodności i Niezawodności** to proces, w ramach którego ocenia się zdolność oprogramowania do działania zgodnie z oczekiwaniami przez długi okres czasu oraz w różnych warunkach obciążeniowych. Celem tych testów jest zapewnienie, że oprogramowanie jest wiarygodne, niezawodne i nie ulega awariom w długotrwałym użytkowaniu.

**Aspekty Testowania Wiarygodności i Niezawodności:**

1. **Testowanie Długotrwałego Użytkowania:**
   - Sprawdzenie, jak oprogramowanie zachowuje się podczas długotrwałego użytkowania, bez zaników wydajności czy awarii.

2. **Testowanie Obciążenia:**
   - Ocena, jak oprogramowanie radzi sobie w warunkach wysokiego obciążenia, z dużą liczbą użytkowników lub dużym obciążeniem systemu.

3. **Testowanie Stabilności:**
   - Sprawdzenie stabilności oprogramowania podczas różnych operacji, transakcji czy interakcji użytkownika.

4. **Testowanie Niezawodności:**
   - Ocena, jak oprogramowanie reaguje na błędy i czy potrafi się skutecznie odzyskać po awarii.

5. **Testowanie Awarii:**
   - Symulacja różnych scenariuszy awaryjnych, aby sprawdzić, jak oprogramowanie reaguje na różne rodzaje problemów.

6. **Testowanie Przywracania Systemu:**
   - Sprawdzenie, czy oprogramowanie potrafi skutecznie przywrócić system do normalnego stanu po wystąpieniu problemów.

7. **Testowanie Bezpieczeństwa:**
   - Sprawdzenie, jak oprogramowanie radzi sobie z zagrożeniami bezpieczeństwa i czy potrafi zapobiegać atakom.

8. **Testowanie Zgodności:**
   - Ocena, czy oprogramowanie jest zgodne z różnymi platformami, systemami operacyjnymi i konfiguracjami.

**Proces Testowania Wiarygodności i Niezawodności:**

1. **Analiza Wymagań:**
   - Zdefiniowanie wymagań dotyczących wiarygodności i niezawodności oprogramowania.

2. **Projektowanie Testów:**
   - Opracowanie planu testów, identyfikacja scenariuszy testowych i przygotowanie przypadków testowych.

3. **Przygotowanie Środowiska Testowego:**
   - Stworzenie środowiska testowego, które umożliwi symulację różnych warunków i scenariuszy.

4. **Wykonanie Testów:**
   - Realizacja testów wiarygodności i niezawodności zgodnie z planem, uwzględniając różne scenariusze.

5. **Monitorowanie i Analiza Wyników:**
   - Analiza uzyskanych wyników, identyfikacja obszarów wymagających poprawek i optymalizacji.

6. **Optymalizacja i Poprawki:**
   - Wprowadzanie poprawek i optymalizacji w celu zwiększenia wiarygodności i niezawodności oprogramowania.

**Zalety Testowania Wiarygodności i Niezawodności:**

- Zapewnienie, że oprogramowanie działa niezawodnie i skutecznie w długim okresie użytkowania.
- Minimalizacja ryzyka awarii i utraty danych w trakcie użytkowania.

**Wady Testowania Wiarygodności i Niezawodności:**

- Wymaga zaawansowanych narzędzi i umiejętności, aby symulować różne scenariusze awaryjne.
- Może generować dodatkowe koszty związane z dostosowaniami i optymalizacjami.


# Testowanie Odporności (ang. Resilience Testing):

**Testowanie Odporności** to proces, którego celem jest ocena zdolności systemu do radzenia sobie z różnymi rodzajami awarii, zakłóceń i problemów, aby zapewnić ciągłość działania oraz szybkie i skuteczne przywrócenie funkcji po wystąpieniu problemów. Testy odpornościowe pozwalają na identyfikację obszarów podatnych na awarie i dostarczają informacji na temat skutków zakłóceń na funkcjonowanie systemu.

**Aspekty Testowania Odporności:**

1. **Testowanie Awarii Sprzętu:**
   - Symulacja awarii sprzętu, takiej jak przestój serwera czy utrata połączenia z siecią.

2. **Testowanie Awarii Oprogramowania:**
   - Ocena reakcji systemu na awarie oprogramowania, np. błędy w kodzie czy nieprawidłowe konfiguracje.

3. **Testowanie Awarii Sieci:**
   - Symulacja problemów z siecią, takich jak utrata połączenia czy opóźnienia w transmisji danych.

4. **Testowanie Awarii Zasobów:**
   - Ocena zachowania systemu w sytuacjach, gdy zasoby, takie jak pamięć czy procesory, są wyczerpane.

5. **Testowanie Ataków Cybernetycznych:**
   - Symulacja ataków hakerskich i sprawdzenie, czy system potrafi się obronić i zminimalizować skutki.

6. **Testowanie Awarii Usług Zewnętrznych:**
   - Ocena reakcji systemu na niedostępność lub awarie usług zewnętrznych, których system używa.

7. **Testowanie Odporności na Błędy:**
   - Sprawdzenie, jak system radzi sobie z błędami i czy potrafi skutecznie odzyskać się po ich wystąpieniu.

**Proces Testowania Odporności:**

1. **Definiowanie Scenariuszy Testowych:**
   - Określenie różnych scenariuszy awaryjnych i zakłóceń do przetestowania.

2. **Przygotowanie Środowiska Testowego:**
   - Stworzenie środowiska testowego umożliwiającego symulację różnych problemów.

3. **Symulacja Awarii:**
   - Przeprowadzenie testów, które symulują awarie i zakłócenia zgodnie z wcześniej zdefiniowanymi scenariuszami.

4. **Analiza Reakcji Systemu:**
   - Monitorowanie reakcji systemu na symulowane awarie, zbieranie danych i analiza wyników.

5. **Optymalizacja i Poprawki:**
   - Wprowadzanie poprawek i optymalizacji w celu zwiększenia odporności systemu na problemy.

**Zalety Testowania Odporności:**

- Zwiększenie odporności systemu na awarie i zakłócenia.
- Minimalizacja ryzyka utraty danych i funkcjonalności w przypadku problemów.

**Wady Testowania Odporności:**

- Wymaga zaawansowanych narzędzi i umiejętności do symulowania różnych scenariuszy awaryjnych.
- Może generować dodatkowe koszty związane z dostosowaniami i optymalizacjami systemu.


# Testowanie Bezpieczeństwa:

**Testowanie Bezpieczeństwa (ang. Security Testing)** to proces, w ramach którego sprawdza się, czy system, aplikacja czy sieć są odporne na różnego rodzaju ataki, zabezpieczone przed nieautoryzowanym dostępem oraz czy spełniają standardy bezpieczeństwa. Celem testowania bezpieczeństwa jest identyfikacja potencjalnych luk w zabezpieczeniach i poprawa ogólnej odporności systemu na zagrożenia cybernetyczne.

**Aspekty Testowania Bezpieczeństwa:**

1. **Testowanie Autentykacji:**
   - Sprawdzenie skuteczności mechanizmów autentykacji i weryfikacji tożsamości użytkowników.

2. **Testowanie Autoryzacji:**
   - Ocena, czy system poprawnie zarządza uprawnieniami dostępu do różnych zasobów.

3. **Testowanie Ochrony Danych:**
   - Sprawdzenie, czy dane przechowywane w systemie są odpowiednio zabezpieczone przed nieautoryzowanym dostępem.

4. **Testowanie Ataków Hakerskich:**
   - Symulacja różnych rodzajów ataków hakerskich, takich jak ataki DDoS czy próby przełamania systemu.

5. **Testowanie Zabezpieczeń Sieciowych:**
   - Ocena skuteczności zabezpieczeń sieciowych, takich jak firewalle i systemy wykrywania intruzów.

6. **Testowanie Bezpieczeństwa Aplikacji:**
   - Analiza aplikacji pod kątem potencjalnych zagrożeń, takich jak błędy programistyczne czy ataki XSS.

7. **Testowanie Bezpieczeństwa Mobilnego:**
   - Sprawdzenie zabezpieczeń aplikacji mobilnych oraz systemów operacyjnych na urządzeniach przenośnych.

8. **Testowanie Bezpieczeństwa w Chmurze:**
   - Ocena bezpieczeństwa aplikacji i danych przechowywanych w środowiskach chmurowych.

**Proces Testowania Bezpieczeństwa:**

1. **Analiza Bezpieczeństwa:**
   - Analiza potencjalnych zagrożeń i obszarów podatnych na ataki.

2. **Projektowanie Testów:**
   - Opracowanie planu testów obejmującego różne scenariusze ataków.

3. **Przygotowanie Narzędzi i Środowiska:**
   - Przygotowanie narzędzi do przeprowadzania testów oraz stworzenie środowiska testowego.

4. **Przeprowadzenie Testów:**
   - Realizacja testów zgodnie z przygotowanym planem, w tym próby przełamania systemu.

5. **Analiza Wyników:**
   - Analiza uzyskanych wyników, identyfikacja luk w zabezpieczeniach i potencjalnych miejsc do poprawy.

6. **Raportowanie:**
   - Przygotowanie raportu zawierającego wyniki testów, zidentyfikowane zagrożenia i rekomendacje dotyczące poprawek.

7. **Wdrażanie Poprawek:**
   - Wprowadzanie poprawek w celu usunięcia zidentyfikowanych luk i zagrożeń.

**Zalety Testowania Bezpieczeństwa:**

- Zwiększenie odporności systemu na ataki hakerskie.
- Minimalizacja ryzyka utraty danych i naruszenia prywatności użytkowników.

**Wady Testowania Bezpieczeństwa:**

- Wymaga zaawansowanych umiejętności i doświadczenia w dziedzinie bezpieczeństwa informatycznego.
- Może generować dodatkowe koszty związane z poprawkami i optymalizacjami systemu.


# Testowanie Skalowalności:

**Testowanie Skalowalności (ang. Scalability Testing):**

Testowanie skalowalności jest procesem oceny zdolności systemu do efektywnego obsłużenia rosnącej ilości zasobów lub obciążenia, jednocześnie utrzymując wydajność i wydajność operacji. Celem tego rodzaju testów jest sprawdzenie, jak system radzi sobie z rosnącym obciążeniem, ilością użytkowników lub danymi, a także jak łatwo można dostosować system do zwiększonych wymagań.

**Aspekty Testowania Skalowalności:**

1. **Testowanie Obciążenia:**
   - Ocena, jak system radzi sobie z dużej ilości danych, zapytań czy transakcji.

2. **Testowanie Wydajności:**
   - Pomiar wydajności systemu w kontekście rosnącej liczby użytkowników lub zasobów.

3. **Testowanie Elastyczności:**
   - Sprawdzenie, jak łatwo można dostosować system do zmiennych wymagań.

4. **Testowanie Rozszerzalności:**
   - Ocena, jak łatwo można zwiększać dostępne zasoby w systemie.

5. **Testowanie Reakcji na Wzrost Użytkowników:**
   - Analiza, jak system reaguje na zwiększoną liczbę jednoczesnych użytkowników.

6. **Testowanie Skalowalności Horyzontalnej i Pionowej:**
   - Ocena, czy system lepiej skaluje się poprzez dodawanie nowych maszyn (skalowalność horyzontalna) czy zwiększanie zasobów jednej maszyny (skalowalność pionowa).

7. **Testowanie Pod Obciążeniem w Określonych Warunkach:**
   - Symulacja obciążenia w warunkach specyficznych dla danego środowiska lub branży.

**Proces Testowania Skalowalności:**

1. **Definiowanie Scenariuszy Skalowania:**
   - Określenie scenariuszy, w których system będzie musiał dostosować się do wzrostu obciążenia.

2. **Przygotowanie Środowiska Testowego:**
   - Stworzenie środowiska umożliwiającego kontrolowane testy skalowalności.

3. **Przeprowadzenie Testów:**
   - Realizacja testów zgodnie z przygotowanymi scenariuszami, zwiększanie obciążenia i monitorowanie wydajności systemu.

4. **Analiza Wyników:**
   - Analiza uzyskanych wyników, identyfikacja obszarów, w których system może wymagać poprawek.

5. **Raportowanie:**
   - Przygotowanie raportu zawierającego wyniki testów, zidentyfikowane problemy i rekomendacje.

6. **Wdrożenie Poprawek:**
   - Wprowadzanie poprawek i optymalizacji w celu zwiększenia skalowalności systemu.

**Zalety Testowania Skalowalności:**

- Zapobieganie problemom z wydajnością w przypadku wzrostu użytkowników lub danych.
- Umożliwia skonfigurowanie systemu tak, aby lepiej reagował na dynamiczne zmiany.

**Wady Testowania Skalowalności:**

- Wymaga zaawansowanych umiejętności w zakresie analizy wydajności i dostosowywania systemu.
- Może generować koszty związane z dodatkowymi zasobami i optymalizacjami.


# Testowanie Typu Stress:

**Testowanie Typu Stress (ang. Stress Testing):**

Testowanie typu Stress to rodzaj testowania niefunkcjonalnego, którego celem jest zbadanie stabilności systemu podczas ekstremalnych warunków obciążenia. Proces ten polega na przekraczaniu granic wydajności i obciążenia, aby zidentyfikować, jak system reaguje na skrajne warunki działania. Testowanie typu Stress umożliwia określenie, czy system zachowa się stabilnie w przypadku przeciążenia, a także identyfikuje ewentualne słabe punkty, awarie lub utraty wydajności.

**Aspekty Testowania Typu Stress:**

1. **Obciążenie Systemu:**
   - Zastosowanie dużej ilości użytkowników, transakcji lub danych w celu sprawdzenia, jak system radzi sobie podczas przeciążenia.

2. **Testowanie Granic Wydajności:**
   - Sprawdzanie, jak system reaguje na maksymalne wartości obciążenia, przekraczając granice wydajności.

3. **Testowanie Zasobów:**
   - Monitorowanie wykorzystania zasobów, takich jak CPU, pamięć, sieć itp., podczas intensywnego obciążenia.

4. **Testowanie Awaryjności:**
   - Symulacja awarii lub utraty zasobów w celu zbadania, czy system może powrócić do stabilnego stanu.

5. **Testowanie Trwałości:**
   - Sprawdzanie, czy system utrzymuje swoją wydajność i stabilność podczas długotrwałego obciążenia.

**Proces Testowania Typu Stress:**

1. **Określenie Celów Testów:**
   - Zdefiniowanie celów i scenariuszy testów, określenie, co będzie testowane i jakie są oczekiwane wyniki.

2. **Przygotowanie Środowiska Testowego:**
   - Stworzenie kontrolowanego środowiska testowego, które umożliwia przeprowadzenie testów pod ekstremalnym obciążeniem.

3. **Przeprowadzenie Testów:**
   - Uruchomienie testów pod wyjątkowym obciążeniem, zgodnie z wcześniej zdefiniowanymi scenariuszami.

4. **Monitorowanie i Analiza Wyników:**
   - Bieżące monitorowanie wydajności systemu oraz analiza uzyskanych wyników w trakcie i po zakończeniu testów.

5. **Identyfikacja Słabych Punktów:**
   - Rozpoznawanie obszarów, w których system może ulegać awariom, utracie wydajności lub niestabilności.

6. **Raportowanie i Rekomendacje:**
   - Przygotowanie raportu zawierającego wyniki testów, zidentyfikowane problemy oraz rekomendacje dotyczące optymalizacji.

**Zalety Testowania Typu Stress:**

- Identyfikacja potencjalnych problemów związanych z obciążeniem i wydajnością systemu.
- Zapobieganie awariom w warunkach skrajnego obciążenia.

**Wady Testowania Typu Stress:**

- Potrzeba zaawansowanych umiejętności w zakresie analizy i zarządzania zasobami.
- Wymaga starannej dokumentacji i przygotowania testów, aby uniknąć przypadkowego uszkodzenia systemu.



# Testowanie Typu Spike:

**Testowanie Typu Spike (ang. Spike Testing):**

Testowanie typu Spike to rodzaj testowania niefunkcjonalnego, które ma na celu zbadanie, jak system radzi sobie z nagłym, krótkotrwałym wzrostem obciążenia. Jest to rodzaj testu obciążeniowego, w którym intensywność obciążenia jest gwałtownie zwiększana, a następnie równie szybko zmniejszana. Celem tego rodzaju testów jest zidentyfikowanie, czy system utrzymuje stabilność i wydajność w przypadku nagłego skoku obciążenia, który może wystąpić w rzeczywistych warunkach.

**Aspekty Testowania Typu Spike:**

1. **Gwałtowne Zwiększenie Obciążenia:**
   - Nagłe i intensywne zwiększenie liczby użytkowników, transakcji lub danych.

2. **Krótkotrwałe Trwanie Testu:**
   - Testowanie trwa tylko przez krótki okres czasu, zanim obciążenie zostanie równie szybko zmniejszone.

3. **Monitorowanie i Analiza Reakcji Systemu:**
   - Monitorowanie wydajności systemu w czasie rzeczywistym i analiza, jak szybko system dostosowuje się do wzrostu obciążenia oraz czy powraca do stabilnego stanu.

4. **Identyfikacja Słabych Punktów:**
   - Rozpoznawanie obszarów systemu, które mogą ulegać awariom lub utracie wydajności w przypadku nagłego wzrostu obciążenia.

**Proces Testowania Typu Spike:**

1. **Planowanie Testu:**
   - Określenie, kiedy i jak gwałtowne zwiększenie obciążenia zostanie wprowadzone w celu przetestowania systemu.

2. **Przygotowanie Środowiska Testowego:**
   - Stworzenie środowiska umożliwiającego przeprowadzenie testu typu Spike.

3. **Przeprowadzenie Testu:**
   - Wykonanie testu poprzez szybkie zwiększenie obciążenia, monitorowanie systemu i równie szybkie zmniejszenie obciążenia.

4. **Analiza Wyników:**
   - Analiza wyników w czasie rzeczywistym, identyfikacja reakcji systemu na nagłe zwiększenie obciążenia.

5. **Raportowanie:**
   - Przygotowanie raportu zawierającego wyniki testu, zidentyfikowane problemy i ewentualne rekomendacje.

**Zalety Testowania Typu Spike:**

- Identyfikacja potencjalnych problemów związanych z nagłym wzrostem obciążenia.
- Ocena reakcji systemu na krótkotrwałe skoki intensywności.

**Wady Testowania Typu Spike:**

- Ryzyko spowodowania awarii systemu w wyniku gwałtownego wzrostu obciążenia.
- Wymaga starannej koordynacji i planowania, aby uniknąć negatywnego wpływu na użytkowników rzeczywistych.


# Testowanie Użyteczności:

**Testowanie Użyteczności (ang. Usability Testing):**

Testowanie Użyteczności to proces oceny, w którym badane są aspekty związane z łatwością użytkowania, dostępności oraz ogólną satysfakcją użytkowników korzystających z oprogramowania, produktu czy interfejsu użytkownika. Celem tego rodzaju testów jest zidentyfikowanie potencjalnych problemów, które mogą wpływać na doświadczenie użytkownika oraz wprowadzenie usprawnień mających na celu poprawę użyteczności i satysfakcji użytkowników.

**Aspekty Testowania Użyteczności:**

1. **Łatwość Nauki:**
   - Ocena, jak szybko nowi użytkownicy są w stanie nauczyć się korzystać z oprogramowania czy produktu.

2. **Efektywność Użytkowania:**
   - Badanie, jak skutecznie użytkownicy mogą wykonywać zadania i osiągać zamierzone cele przy użyciu produktu.

3. **Zapamiętywalność:**
   - Mierzenie, jak łatwo użytkownicy zapamiętują i odnajdują funkcje czy elementy interfejsu.

4. **Błędy i Ich Skutki:**
   - Analiza rodzaju popełnianych błędów, ich częstości oraz wpływu na użyteczność.

5. **Satysfakcja Użytkowników:**
   - Badanie ogólnej satysfakcji użytkowników związanej z korzystaniem z danego produktu czy interfejsu.

**Proces Testowania Użyteczności:**

1. **Definiowanie Celów:**
   - Określenie konkretnych celów, które mają być osiągnięte w ramach testowania użyteczności.

2. **Wybór Grupy Testowej:**
   - Selekcja reprezentatywnej grupy użytkowników, która będzie uczestniczyć w testach.

3. **Tworzenie Scenariuszy Testowych:**
   - Opracowanie scenariuszy testowych, które obejmują różne przypadki użycia i sytuacje.

4. **Przeprowadzenie Testów:**
   - Realizacja testów z udziałem użytkowników, obserwacja ich interakcji z produktem i zbieranie danych.

5. **Analiza Wyników:**
   - Analiza uzyskanych danych, identyfikacja problemów i obszarów wymagających poprawy.

6. **Raportowanie i Rekomendacje:**
   - Przygotowanie raportu zawierającego wyniki testów, opis problemów oraz sugestie dotyczące usprawnień.

**Zalety Testowania Użyteczności:**

- Poprawa doświadczenia użytkownika.
- Zwiększenie satysfakcji i lojalności użytkowników.
- Identyfikacja potencjalnych problemów wcześnie w procesie tworzenia produktu.

**Wady Testowania Użyteczności:**

- Subiektywność ocen użytkowników.
- Konieczność dużej ilości uczestników testów, aby uzyskać reprezentatywne wyniki.
- Wysokie koszty przeprowadzenia testów z udziałem użytkowników.


# Testowanie Objętości (ang. Volume Testing):

**Testowanie Objętości:**

Testowanie Objętości to rodzaj testowania niefunkcjonalnego, które ma na celu ocenę, jak system radzi sobie z dużymi ilościami danych lub obciążeniem. Jest to test mający na celu zbadanie, jak system reaguje na znaczną ilość informacji, transakcji, rekordów czy innych jednostek danych, a także czy utrzymuje stabilność i wydajność w warunkach dużych obciążeń.

**Aspekty Testowania Objętości:**

1. **Przepustowość Systemu:**
   - Sprawdzenie, jak szybko system jest w stanie przetwarzać duże ilości danych.

2. **Odporność na Duże Zbiory Danych:**
   - Ocena, czy system jest w stanie efektywnie obsługiwać duże zbiory danych, takie jak bazy danych czy pliki.

3. **Skalowalność:**
   - Testowanie, czy system jest skalowalny i czy może obsługiwać rosnącą liczbę użytkowników, transakcji itp.

4. **Zarządzanie Pamięcią:**
   - Monitorowanie zużycia pamięci i ocena, czy system efektywnie zarządza zasobami.

5. **Stabilność:**
   - Sprawdzenie, czy system pozostaje stabilny podczas pracy z dużą ilością danych, bez awarii czy błędów krytycznych.

**Proces Testowania Objętości:**

1. **Określenie Skali Testu:**
   - Zdefiniowanie zakresu testu, czyli ile danych lub obciążenia będzie używane podczas testów.

2. **Przygotowanie Danych Testowych:**
   - Stworzenie odpowiednich danych testowych, które będą używane do testowania objętości.

3. **Przeprowadzenie Testu:**
   - Realizacja testów przy użyciu dużych zbiorów danych lub intensywnego obciążenia, zgodnie z wcześniej określoną skalą.

4. **Monitorowanie Wydajności:**
   - Monitorowanie wydajności systemu w trakcie testu, zbieranie danych na temat czasów odpowiedzi, zużycia zasobów itp.

5. **Analiza Wyników:**
   - Analiza uzyskanych wyników w kontekście zdefiniowanych kryteriów wydajności i stabilności.

6. **Raportowanie:**
   - Przygotowanie raportu zawierającego wyniki testów, zidentyfikowane problemy oraz rekomendacje.

**Zalety Testowania Objętości:**

- Identyfikacja potencjalnych problemów związanych z dużymi ilościami danych.
- Ocena wydajności systemu w warunkach maksymalnego obciążenia.

**Wady Testowania Objętości:**

- Wymaga dużej ilości zasobów i czasu.
- Nie zawsze możliwe jest przetestowanie wszystkich scenariuszy objętościowych.



# Testowanie Strukturalne / Architektury Oprogramowania:

**Testowanie Strukturalne:**

Testowanie Strukturalne, znane również jako testowanie białej skrzynki (ang. white-box testing), skupia się na analizie wewnętrznej struktury, logiki i architektury oprogramowania. Celem tego rodzaju testów jest sprawdzenie, czy implementacja programu działa zgodnie z założeniami architektonicznymi, zasadami projektowymi oraz specyfikacją kodu źródłowego. Testowanie Strukturalne obejmuje różne poziomy szczegółowości, w tym testowanie jednostkowe, testowanie integracyjne i testowanie systemowe.

**Aspekty Testowania Strukturalnego:**

1. **Testowanie Jednostkowe:**
   - Sprawdzenie poprawności pojedynczych jednostek kodu, takich jak funkcje, procedury czy klasy.

2. **Testowanie Integracyjne:**
   - Ocena poprawności współpracy i integracji różnych modułów lub komponentów systemu.

3. **Analiza Struktury Kodu Źródłowego:**
   - Przeglądanie i analiza struktury kodu źródłowego w celu identyfikacji potencjalnych błędów.

4. **Pokrycie Kodu:**
   - Mierzenie, które części kodu zostały wywołane lub przetestowane podczas procesu testowania.

5. **Analiza Zależności:**
   - Sprawdzanie zależności między różnymi fragmentami kodu oraz ocena ich wpływu na funkcjonowanie systemu.

**Proces Testowania Strukturalnego:**

1. **Analiza Kodu Źródłowego:**
   - Przeglądanie kodu źródłowego w celu zrozumienia struktury i logiki implementacji.

2. **Tworzenie Testów:**
   - Opracowywanie testów na podstawie analizy kodu, przy użyciu różnych technik, takich jak testy krawędziowe czy testy ścieżek.

3. **Przeprowadzenie Testów:**
   - Realizacja testów, które oceniają wewnętrzną strukturę oprogramowania na różnych poziomach abstrakcji.

4. **Analiza Pokrycia Kodu:**
   - Monitorowanie, które części kodu zostały pokryte przez przeprowadzone testy.

5. **Raportowanie Wyników:**
   - Przygotowanie raportu zawierającego wyniki testów, zidentyfikowane błędy oraz zalecenia poprawek.

**Zalety Testowania Strukturalnego:**

- Wczesna identyfikacja problemów związanych z implementacją.
- Skoncentrowane na detalicznej analizie struktury kodu.

**Wady Testowania Strukturalnego:**

- Wymaga dostępu do kodu źródłowego, co może być utrudnione w przypadku oprogramowania komercyjnego.
- Nie zawsze pokrywa wszystkie możliwe przypadki użycia czy scenariusze funkcji.

***Wykład13------------------------------------------***

# Testowanie automatyczne
Testowanie automatyczne, czyli automatyzacja procesu wykonywania testów, niesie za sobą szereg korzyści, które sprawiają, że jest coraz powszechniejsze w dziedzinie tworzenia oprogramowania. Oto niektóre z głównych zalet testowania automatycznego:

1. **Szybkość i Skuteczność:**
   - Automatyzacja pozwala na szybkie i efektywne wykonanie dużej liczby testów, co znacznie przyspiesza proces testowania w porównaniu do ręcznego wykonywania testów.

2. **Powtarzalność:**
   - Testy automatyczne można łatwo powtarzać wielokrotnie bez utraty jakości. To umożliwia szybkie zweryfikowanie, czy wprowadzone zmiany wpływają na istniejącą funkcjonalność.

3. **Wczesna Wykrywalność Błędów:**
   - Automatyczne testy mogą być uruchamiane na bieżąco w trakcie procesu budowania aplikacji, co pozwala na szybką identyfikację błędów na wczesnych etapach rozwoju.

4. **Oszczędność Czasu i Kosztów:**
   - Pomimo inwestycji początkowej w stworzenie i utrzymanie testów automatycznych, długoterminowo automatyzacja prowadzi do znacznych oszczędności czasu i kosztów związanych z ręcznym testowaniem.

5. **Testowanie Wielowariantowe:**
   - Automatyzacja umożliwia łatwe testowanie różnych wariantów scenariuszy, zestawów danych czy konfiguracji, co jest trudne do osiągnięcia ręcznie.

6. **Zwiększenie Pokrycia Testów:**
   - Automatyczne testy pozwalają na szerokie pokrycie funkcjonalności, zwłaszcza w obszarach, które są często zmieniane lub wymagają częstej weryfikacji.

7. **Reprodukcja Warunków Błędnych:**
   - Testy automatyczne mogą łatwo symulować warunki błędne, co pozwala na sprawdzenie, czy system poprawnie reaguje na różne scenariusze awaryjne.

8. **Skalowalność:**
   - Automatyzacja ułatwia zarządzanie testami w projektach o większej skali, gdzie ręczne testowanie stałoby się czasochłonne i trudne do zarządzania.

9. **Ułatwione Wdrażanie Ciągłej Integracji (CI) i Ciągłej Dostawy (CD):**
   - Testy automatyczne są kluczowym elementem w praktykach CI/CD, ponieważ pozwalają na szybkie weryfikowanie stabilności kodu po każdej zmianie.

10. **Dokumentacja Testów:**
    - Automatyczne testy często generują automatycznie raporty, co ułatwia utrzymanie dokumentacji dotyczącej testów.

Warto jednak pamiętać, że choć testowanie automatyczne ma wiele zalet, nie zastępuje ono w pełni testowania ręcznego. Optymalne podejście polega na zrównoważonym wykorzystaniu obu metod w zależności od potrzeb projektu.


# Weryfikacja vs. Walidacja w Kontekście Testowania Oprogramowania:

**Weryfikacja:**
- **Definicja:** Weryfikacja to proces oceny systemu lub komponentu pod kątem spełnienia określonych wymagań i spektyfikacji. Obejmuje to analizę dokumentacji, projektu i kodu źródłowego w celu upewnienia się, że system jest zgodny z założeniami i spełnia określone standardy.
- **Cele Weryfikacji:**
  - Sprawdzenie, czy produkt jest zbudowany poprawnie.
  - Obejmuje ocenę procesu wytwarzania oprogramowania.
  - Koncentruje się na spełnieniu wymagań specyfikacji.

**Przykłady Weryfikacji:**
- Przegląd kodu źródłowego.
- Inspekcja dokumentacji projektowej.
- Analiza statyczna kodu.

**Walidacja:**
- **Definicja:** Walidacja to proces oceny systemu lub komponentu pod kątem spełnienia rzeczywistych potrzeb i oczekiwań użytkownika. Skupia się na sprawdzeniu, czy produkt spełnia oczekiwania użytkownika i czy jest zgodny z rzeczywistym środowiskiem operacyjnym.
- **Cele Walidacji:**
  - Sprawdzenie, czy produkt spełnia oczekiwania klienta.
  - Obejmuje ocenę gotowego produktu.
  - Skoncentrowane jest na zapewnieniu, że produkt jest użyteczny w rzeczywistych warunkach.

**Przykłady Walidacji:**
- Testy akceptacyjne.
- Testy użytkownika końcowego.
- Testy wydajności w rzeczywistych warunkach.

**Podsumowanie:**
- Weryfikacja skupia się na ocenie, czy produkt jest zbudowany poprawnie, zgodnie z określonymi wymaganiami i standardami, natomiast walidacja koncentruje się na sprawdzeniu, czy produkt spełnia rzeczywiste oczekiwania użytkownika w rzeczywistych warunkach.
- Oba procesy są istotne w kontekście zapewnienia jakości oprogramowania, a ich równoległe zastosowanie pomaga w dostarczeniu kompleksowej oceny produktu.

# Metodologia testów
Metodologia testów odnosi się do zorganizowanego podejścia do planowania, projektowania, wykonywania i zarządzania testami w procesie tworzenia oprogramowania. Istnieje wiele różnych metodologii testów, a ich wybór zależy od konkretnych potrzeb projektu, typu oprogramowania, dostępnych zasobów i innych czynników. Oto kilka popularnych metodologii testów:

1. **Model Wodospadowy:**
   - Testowanie odbywa się na kolejnych etapach procesu wytwarzania oprogramowania, zaczynając od analizy i projektowania, aż do wdrożenia.
   - Każdy etap obejmuje konkretne zadania testowe, a proces przemieszcza się liniowo od jednego etapu do drugiego.

2. **Metoda Agile (Zwinne):**
   - Testowanie odbywa się równocześnie z procesem rozwoju.
   - Skupia się na częstych dostawach wartości dla klienta.
   - Wymaga elastyczności, szybkiego dostosowywania się do zmian i częstego oddawania działającej funkcjonalności.

3. **Model V (V-Model):**
   - Opiera się na założeniu, że każda faza procesu rozwoju powinna być odpowiednio przetestowana przed przejściem do kolejnej fazy.
   - Każda faza rozwoju ma odpowiadającą jej fazę testową, tworząc symetryczny kształt litery "V".

4. **Model Spiralny:**
   - Kombinuje elementy modelu wodospadowego i prototypowego.
   - Proces rozwijania oprogramowania postępuje cyklicznie, z każdym cyklem dodającym nową funkcjonalność.

5. **Metoda DevOps:**
   - Kładzie nacisk na integrację procesów deweloperskich i operacyjnych.
   - Testowanie jest integralną częścią procesu CI/CD, co oznacza ciągłą integrację i dostarczanie oprogramowania.

6. **Testowanie Przypadków Użycia:**
   - Testowanie skupia się na scenariuszach użycia produktu.
   - Bazuje na funkcjonalnościach, jakie użytkownik będzie wykonywał podczas korzystania z oprogramowania.

7. **Programowanie Ekstremalne (XP - Extreme Programming):**
   - Zakłada krótkie cykle iteracji i częste dostarczanie działającej funkcjonalności.
   - Testowanie odbywa się równocześnie z procesem programowania.

8. **Testowanie Przełączające (Switch Testing):**
   - Polega na dynamicznym przełączaniu się pomiędzy różnymi typami testów w zależności od aktualnych potrzeb projektu.

9. **Model Big Bang:**
   - W tym podejściu testy są przeprowadzane, gdy produkt jest już gotowy.
   - Często stosowany w projektach, gdzie trudno zdefiniować konkretne kroki testowania wczesniej.

Wybór odpowiedniej metodologii testów zależy od specyfiki projektu, wymagań klienta, dostępnych zasobów, oraz skali i złożoności projektu. W praktyce często używa się hybrydowych podejść, łączących różne elementy różnych metodologii.

# Analiza statyczna i dynamiczna
Analiza statyczna i dynamiczna to dwie główne kategorie technik testowania oprogramowania, które są używane do identyfikacji błędów i oceny jakości kodu. Oto krótkie omówienie obu podejść:

### Analiza Statyczna:

1. **Definicja:**
   - Analiza statyczna to proces oceny oprogramowania bez jego faktycznego wykonywania.
   - Obejmuje ocenę kodu źródłowego, dokumentacji i innych artefaktów projektowych.

2. **Techniki Analizy Statycznej:**
   - **Przegląd Kodu (Code Review):** Ręczna ocena kodu źródłowego przez zespół programistyczny w celu znalezienia błędów.
   - **Inspekcje:** Strukturalne przeglądy kodu z udziałem zespołu, zdefiniowane procedury i narzędzia.

3. **Zalety Analizy Statycznej:**
   - Pomaga w identyfikacji błędów na wczesnym etapie, zanim kod zostanie skompilowany i uruchomiony.
   - Wspiera zrozumienie i poprawę jakości kodu poprzez współpracę zespołową.
   - Pomaga w eliminowaniu potencjalnych problemów zanim staną się bardziej kosztowne do naprawy.

4. **Wady Analizy Statycznej:**
   - Niektóre błędy mogą pozostać niewykryte, zwłaszcza te związane z logiką wykonania programu.
   - Wymaga zaangażowania czasowego zespołu programistycznego.

### Analiza Dynamiczna:

1. **Definicja:**
   - Analiza dynamiczna to proces oceny oprogramowania podczas jego wykonywania.
   - Obejmuje testowanie różnych aspektów działania oprogramowania, takie jak funkcjonalność, wydajność i niezawodność.

2. **Techniki Analizy Dynamicznej:**
   - **Testy Jednostkowe:** Sprawdzanie indywidualnych jednostek kodu w izolacji.
   - **Testy Integracyjne:** Sprawdzanie współpracy pomiędzy różnymi komponentami lub modułami.
   - **Testy Systemowe:** Sprawdzanie, czy cały system działa zgodnie z założeniami.
   - **Testy Wydajności:** Ocena wydajności systemu podczas różnych warunków obciążenia.

3. **Zalety Analizy Dynamicznej:**
   - Zbiera informacje o zachowaniu oprogramowania w rzeczywistych warunkach działania.
   - Pozwala na identyfikację błędów, które mogą pojawić się tylko w określonych warunkach.

4. **Wady Analizy Dynamicznej:**
   - Wymaga uruchamiania i testowania całego systemu, co może być czasochłonne.
   - Niektóre błędy mogą pozostać niewykryte, jeśli nie są uwzględnione w scenariuszach testowych.

### Podsumowanie:

Analiza statyczna i dynamiczna są uzupełniającymi się technikami testowania, a ich skuteczne zastosowanie zależy od konkretnych potrzeb projektu. W praktyce często stosuje się obie metody, aby zapewnić kompleksową ocenę jakości oprogramowania.

***Wykład_Mocks-Stabs-------------------------***
Mocks i stabs są dwiema różnymi koncepcjami wykorzystywanymi w testowaniu jednostkowym w programowaniu. Oto krótkie omówienie obu terminów:

### Mocks:

1. **Definicja:**
   - Mock to obiekt symulujący zachowanie rzeczywistego obiektu, który pozwala na kontrolowanie, jak jest używany w teście jednostkowym.
   - Mocki są tworzone w celu imitowania interakcji z obiektami, takimi jak bazy danych, serwisy internetowe lub inne zasoby zewnętrzne.

2. **Funkcje Mocków:**
   - **Kontrola zachowania:** Pozwala na sprawdzenie, czy metody obiektu są wywoływane z oczekiwanymi argumentami.
   - **Symulacja wyników:** Umożliwia ustawianie spodziewanych wyników lub błędów dla konkretnych wywołań metod.

3. **Zastosowania Mocków:**
   - Testowanie jednostkowe, gdy chcemy kontrolować zachowanie zależności obiektów.

### Stabs:

1. **Definicja:**
   - Stab (inaczej nazywany Dummy lub Test Stub) to prosta implementacja obiektu, która zastępuje rzeczywistą zależność w testach jednostkowych.
   - Stabs są zazwyczaj używane, gdy chcemy zastąpić obiekt, ale nie musimy kontrolować, jak jest używany.

2. **Funkcje Stabs:**
   - **Minimalna implementacja:** Stab dostarcza minimalną implementację potrzebną do zastąpienia rzeczywistego obiektu w teście.

3. **Zastosowania Stabs:**
   - Testowanie jednostkowe, gdy zależy nam na zastąpieniu zależności, ale nie musimy kontrolować interakcji z nią.

### Różnice:

- **Kontrola vs Minimalna Implementacja:**
  - Mocks dają pełną kontrolę nad zachowaniem obiektu i pozwalają na dokładne określenie, jakie metody powinny być wywołane.
  - Stabs dostarczają minimalnej implementacji obiektu, która po prostu pozwala na zastąpienie rzeczywistej zależności.

- **Precyzja vs Prostota:**
  - Mocki są bardziej precyzyjne i są używane, gdy chcemy dokładnie kontrolować interakcje z obiektem.
  - Stabs są prostsze, używane w sytuacjach, gdzie zależy nam głównie na zastąpieniu zależności.

- **Kontrola Wyników vs Minimalna Reakcja:**
  - Mocki pozwalają na kontrolę wyników i działanie obiektu w sposób ściśle określony przez test.
  - Stabs są bardziej reaktywne, dostarczając minimalnej reakcji na wywołania, zazwyczaj bez zbytniego zainteresowania wynikami.

W praktyce używa się zarówno mocków, jak i stabs, w zależności od konkretnych potrzeb testu jednostkowego i stopnia kontroli, jaki chcemy utrzymać.
```yaml
title:        "Teoria systemów"
author:       "BO$"
date:         21.01.2024
keywords:     ["teoria systemów"]
tags:         ["notes"]
categories:   ["semester5", "summary"]
comment:      "Notatki z wykładów."
copyright:    "All rights reserved (c) 2024 BO$ & WEEK-END DEVELOPMENT"
organization: "WEEK-END DEVELOPMENT"
status:       "active"
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
# TEORIA SYSTEMÓW
***10/2023 - 01/2024***

---
## 1A. Przekształć równanie różniczkowe na transmitancje operatorową (0 warunek początkowy).

$$ \frac{d^2y}{dt^2} + 2\frac{dy}{dt} + 3y - \frac{du}{dt} + u = 0 $$

$$ s^2Y(s) + 2sY(s) + 3Y(s) - sU(s) + U(s) = 0 $$

$$ (s^2+2s+3)Y(s) = (s-1)U(s) $$

$$ Y(s)=\frac{s-1}{s^2+2s+3}U(s) $$

$$ \text{transmitancja operatorowa}=G(s)=\frac{s-1}{s^2+2s+3} $$

---
## 1B. Przekształć transmitancję operatorową na równanie różniczkowe.

$$ G(s)=\frac{1}{s^2+2} $$

$$ Y(s)=\frac{1}{s^2+2}U(s) $$

$$ (s^2+2)Y(s)=U(s) $$

$$ s^2Y(s)+2Y(s)=U(S) $$

$$ s^2Y(s)+2Y(s)-U(S)=0 $$

$$ \text{równanie różniczkowe}=\frac{d^2y}{dt^2}+2y-u=0 $$

---
## 2. Dla podanej transmitancji operatorowej określ stabilność układu, przedstaw bieguny na osi oraz określ czy jest oscylacyjny czy inercyjny.

$$ G(s)=\frac{1}{s^2+s+1} $$

BIEGUNY:

$$ s^2+s+1=0 $$

$$ \Delta=b^2-4ac=1-4=-3 $$

$$ s_1=\frac{-b+\sqrt{\Delta}}{2a}=\frac{-1+\sqrt{-3}}{2}=-0.5-i\frac{\sqrt{3}}{2}$$

$$ s_2=\frac{-b-\sqrt{\Delta}}{2a}=\frac{-1-\sqrt{-3}}{2}=-0.5+i\frac{\sqrt{3}}{2}$$

CZY STABILNY?
> TAK, ponieważ bieguny znajdują się po lewej stronie osi Im (mają ujemną część rzeczywistą).

OSCYLACYJNY CZY INERCYJNY?
> OSCYLACYJNY, ponieważ część urojona jest większa od rzeczywistej.

---
> [!TIP]
> **Stabilność układu**
> - Układ jest stabilny, jeśli wszystkie jego bieguny mają ujemną część rzeczywistą (leżą po lewej stronie osi Im).
> - Jeśli choć jeden biegun leży w prawej półpłaszczyźnie układ może być `niestabilny`.
>
> **Układ Inercyjny**
> - Bieguny leżące na osi urojonej (o zerowej części rzeczywistej) lub mające bardzo małą część urojoną. <br> np.:`-0.1 +/- 0.5i`
>
> **Układ Oscylacyjny**
> - Pary biegunów zespolonych z czysto urojoną częścią rzeczywistą. <br> np.:`0 +/- 2i`

---
## 3. Wyznacz 5 kolejnych kroków układu impulsowego.
Ts - co ile czasu \
q - operator przesunięcia do przodu

$$ G(s)=\frac{1}{10s+1} $$

METODA EULERA dla Ts=1

$$ s=\frac{q-1}{Ts} $$

$$ G(s)=\frac{1}{10(\frac{q-1}{Ts})+1}=\frac{1}{10(q-1)+1}=\frac{1}{10q-9} $$

$$ y=\frac{1}{10q-9}u $$

$$ y(t)(10q-9)=u(t) $$

$$ 10y(t+1)-9y(t)=u(t) $$

$$ y(t+1)=\frac{u(t)}{10}+\frac{9y(t)}{10} $$

SYMULACJA

$$ y(1)=0.1u(0)+0.9y(0)=0.1 $$

$$ y(2)=0.1u(1)+0.9y(1)=0.19 $$

$$ y(3)=0.1u(2)+0.9y(2)=0.271 $$

---
## 4. Wylicz błędy dla danych z tabeli.

y  |$$\hat{y}$$|$$\|\|y-\hat{y}\|\|$$|$$(y_i-\hat{y}_i)^2$$
---|---|:---:|:---:
1  |1.1|0.1  |0.01
2  |2.5|0.5  |0.25
3  |4.0|1    |1
4  |4.5|0.5  |0.25
5  |5.7|0.7  |0.49
. |**SUMA:**|**2.8**  |**2**|

BŁEDY:
```math
L_1\ \|y-\hat{y}\|_1 = \sum_{i=1}^{n} \|y_i-\hat{y}_i\| = 2.8
```
```math
L_2\ \|y-\hat{y}\|_2 = \sqrt{\sum_{i=1}^{n} (y_i-\hat{y}_i)^2} = \sqrt{2}
```
```math
L_3\ \|y-\hat{y}\|_\infty = \sqrt[\infty]{\sum_{i=1}^{n} (y_i-\hat{y}_i)^\infty} = \max(|y-\hat{y}|) = 1
```
---
## 5. EXTRA (Nyquist)
Metoda Nyquista stanowi narzędzie matematyczne i graficzne do analizy stabilności układów dynamicznych opisanych funkcjami transmitancji. Charakterystyka Nyquista przedstawia zależność części rzeczywistej i urojonej transmitancji w dziedzinie częstotliwości, co pozwala ocenić stabilność układu.

Wzory charakterystyki Nyquista oparte są na funkcji transmitancji $H(s)$ układu. Ogólny wzór charakterystyki Nyquista to:

$$ G(j\omega)=Re[H(h\omega)]+jIm[H(j\omega)]=H(j\omega) $$

Przykłady funkcji transmitancji obejmują układ inercyjny $H(s) = \frac{K}{s+a}$, gdzie charakterystyka Nyquista jest punktem na osi urojonej o wartości $K$, co wskazuje na stabilność. 

Dla układu oscylacyjnego $H(s) = \frac{K}{(s+a)^2 + b^2}$, charakterystyka Nyquista może obejmować okrążenie punktu (-1, j0), co wskazuje na oscylacje, a stabilność zależy od wartości parametrów $a$ i $b$.

W przypadku układu oscylacyjnego z tłumieniem $H(s) = \frac{K}{(s+a)^2 + (2\zeta a)^2}$, charakterystyka Nyquista również może obejmować okrążenie punktu (-1, j0), z tłumieniem $\zeta$ wpływającym na charakter krzywej.

Analiza charakterystyki Nyquista pozwala ocenić stabilność układu, a kryterium Nyquista mówi, że liczba okrążń punktu (-1, j0) odpowiada liczbie biegunów w prawej półpłaszczyźnie zespolonej. Metoda ta jest szeroko stosowana w teorii sterowania i analizie układów dynamicznych.

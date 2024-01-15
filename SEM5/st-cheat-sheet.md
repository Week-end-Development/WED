```
       All rights reserved (c) 2024 Week-End Development
██╗    ██╗███████╗███████╗██╗  ██╗     ███████╗███╗   ██╗██████╗
██║    ██║██╔════╝██╔════╝██║ ██╔╝     ██╔════╝████╗  ██║██╔══██╗
██║ █╗ ██║█████╗  █████╗  █████╔╝█████╗█████╗  ██╔██╗ ██║██║  ██║
██║███╗██║██╔══╝  ██╔══╝  ██╔═██╗╚════╝██╔══╝  ██║╚██╗██║██║  ██║
╚███╔███╔╝███████╗███████╗██║  ██╗     ███████╗██║ ╚████║██████╔╝
 ╚══╝╚══╝ ╚══════╝╚══════╝╚═╝  ╚═╝     ╚══════╝╚═╝  ╚═══╝╚═════╝
      ██████╗ ███████╗██╗   ██╗███████╗   Version: 001
      ██╔══██╗██╔════╝██║   ██║██╔════╝   DATE: 15/01/2024
      ██║  ██║█████╗  ██║   ██║███████╗   Author: bos-8
      ██║  ██║██╔══╝  ╚██╗ ██╔╝╚════██║
      ██████╔╝███████╗ ╚████╔╝ ███████║
      ╚═════╝ ╚══════╝  ╚═══╝  ╚══════╝   PRESENT:
```
# TEORIA SYSTEMÓW
***10/2023 - 01/2024***

## 1A. Przekształć równanie różniczkowe na transmitancje operatorową (0 warunek początkowy).

$$ \frac{d^2y}{dt^2} + 2\frac{dy}{dt} + 3y - \frac{du}{dt} + u = 0 $$

$$ s^2Y(s) + 2sY(s) + 3Y(s) - sU(s) + U(s) = 0 $$

$$ (s^2+2s+3)Y(s) = (s+1)U(s) $$

$$ Y(s)=\frac{s+1}{s^2+2s+3}U(s) $$

$$ \text{transmitancja operatorowa}=G(s)=\frac{s+1}{s^2+2s+3} $$

## 1B. Przekształć transmitancję operatorową na równanie różniczkowe.

$$ G(s)=\frac{1}{s^2+2} $$

$$ Y(s)=\frac{1}{s^2+2}U(s) $$

$$ (s^2+Y)Y(s)=U(s) $$

$$ s^2Y(s)+2Y(s)=U(S) $$

$$ s^2Y(s)+2Y(s)-U(S)=0 $$

$$ \text{równanie różniczkowe}=\frac{d^2y}{dt^2}+2y-u=0 $$

## 2. Dla podanej transmitancji operatorowej określ stabilność układu, przedstaw bieguny na osi oraz określ czy jest oscylacyjny czy inercyjny.

$$ G(s)=\frac{1}{s^2+s+1} $$
BIEGUNY:
$$ s^2+s+1=0 $$

$$ \Delta=b^2-4ac=1-4=-3 $$

$$ s_1=\frac{-b+\sqrt{\Delta}}{2a}=\frac{-1+\sqrt{-3}}{2}=-0.5-i\frac{\sqrt{3}}{2}$$

$$ s_2=\frac{-b-\sqrt{\Delta}}{2a}=\frac{-1-\sqrt{-3}}{2}=-0.5+i\frac{\sqrt{3}}{2}$$

CZY OSCYLACYJNY?
> TAK, ponieważ znajduje się po lewej stronie osi Im.

OSCYLACYJNY CZY INERCYJNY?
> OSCYLACYJNY, ponieważ część urojona jest większa od rzeczywistej.

**Układ jest stabilny, gdy bieguny znajdują się po lewej stronie wykresu.**

## 3. Wyznacz 5 kolejnych kroków układu impulsowego.
Ts - co ile czasu \
q - operator przesunięcia do przodu

$$ G(s)=\frac{1}{10s+1} $$
METODA EULERA dla Ts=1
$$ s=\frac{q-1}{Ts} $$

$$ G(s)=\frac{1}{10(\frac{q-1}{Ts})+1}=\frac{1}{10(q-1)+1}=\frac{1}{10q-9} $$

$$ y=\frac{1}{10q-9}u $$

$$ y(t)(10q-9)=u(t) $$

$$ 10y(t+1)-9y(t0)=u(t) $$

$$ y(t+1)=\frac{u(t)}{10}+\frac{9y(t)}{10} $$
SYMULACJA

$$ y(1)=0.1u(0)+0.9y(0)=0.1 $$

$$ y(2)=0.1u(1)+0.9y(1)=0.19 $$

$$ y(3)=0.1u(1)+0.9y(1)=0.271 $$

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

## 5. EXTRA (Nyquist)

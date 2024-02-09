%{####################WEEK#END#DEVELOPMENT######################
file:         st_lab2.m
autor:        ["BO$", "Nikovsky"]
date:         30/10/2023
version:      0x0002
copyrights:   All rights reserved (c) 2024 Week-End Development
================================================================
TASK No.:     2
TASK TOPIC:   Reprezentacja układów LTI w MATLABIE
----------------------------------------------------------------
TASK DESCRIPTION
  Sprawozdanie przedstawia krótko opisane sposoby realizacji układów LTI w Matlabie.
  Rozwiązanie zadań 1a, 1b, 1c, 2, 3, 4, 5 oraz kody źródłowe zadań.
----------------------------------------------------------------
SUBTASKS: ([x]-DONE, [ ]-TODO, [?]-DONE, but not shure it is GOOD)
  1a. [x] -czy bieguny są rzeczywiste?
            NIE, ponieważ: Bieguny są liczbami urojonymi.
      [x] -czy układ jest stabilny?
            TAK, ponieważ bieguny dla transmitancji znajdują się w lewej półpłaszczyźnie zespolonej(cześć rzeczywista jest mniejsza od zera).
      [x] -czy układ jest nieminimalnofazowy? (czyli czy posiada zera w prawej półpłaszczyźnie s)?
            NIE, ponieważ aby układ był nieminimalnofazowy musi zawierać co najmniej jedno zera w prawej półpłaszczyźnie zespolonej (rzeczywista jest większa od zera).
  1b. [x] Za pomocą funkcji tf2zp oblicz zera, bieguny i wzmocnienie transmitancji i przedstaw ją w postaci sfaktoryzowanej.
  1c. [x] Dobierz tak parametry układu aby zaobserwować odpowiedzi układu na skok jednostkowy w przypadku oscylacyjnym i tłumionym.
  2.  [x] Za pomocą funkcji zpk zapisz poniższą transmitancję: G\left(s\right)=\frac{4s+1}{s(0.2s+1)(10s+1)}
  3.  [x] Dokonaj konwersji transmitancji modelu zawieszenia do przestrzeni stanów obiema metodami tj. za pomocą funkcji zp2ss oraz tf2ss i porównaj wyniki (czy macierze 𝑨, 𝑩, 𝑪, 𝑫 są takie same? Czy odpowiedzi skokowe są takie same?).
  4.  [x] Obliczony wektor biegunów 𝑝1 powinien być taki sam jak wektor zadany 𝑝, ale nie jest. Jaka jest różnica?
  5.  [x] Oblicz transmitancję zastępczą 𝐺𝑠𝑦𝑠 dla połączenia szeregowego, równoległego i ujemnego sprzężenia zwrotnego, zakładając, że transmitancje obiektów 𝑠𝑦𝑠1 i 𝑠𝑦𝑠2 są dane jako: G_{sys1}\left(s\right)=\ \frac{s+1}{s^2+5s+1}  oraz G_{sys2}\left(s\right)=\ \frac{1}{s^3+s^2-2s+1}
######################WEEK#END#DEVELOPMENT####################%}
%====[TASK-01-A]================================================
licz = [0 0 1];
mian = [1000 500 400];

%step(licz, mian);
%impulse(licz, main);

obiekt = tf(licz, mian); %Tworzenie transmitancji

%step(obiekt);
%impulse(obiekt);

%pzmap(p, z);
%pzmap(licz, main);
pzmap(obiekt); %odp. czy nieminimalnofazowy? -> NIE

%====[TASK-01-B]================================================
[z, p, k]= tf2zp(licz, mian);

disp('ZERA:');
if exist(z)
    disp(z);
else
    disp('BRAK ZER');
end

disp('Bieguny:');
disp(p);

disp('Wzmocnienia:');
disp(k);

% Reprezentacja transmitancji w postaci sfaktoryzowanej
[z, p, k] = zpkdata(obiekt, 'v');
disp('Transmitancja w postaci sfaktoryzowanej:');

disp('Zera:');
if exist(z)
    disp(z);
else
    disp('BRAK ZER');
end

disp('Bieguny:');
disp(p);

disp('Wzmocnienie:');
disp(k);

%transmitancja w postaci sfaktoryzowanej
syms s;
H_s = k * prod(s - z) / prod(s - p);
pretty(H_s);

%====[TASK-01-C]================================================
% Przypadek oscylacyjny
licz_osc = [0 0 1];
mian_osc = [1 0.4 1];

H_osc = tf(licz_osc, mian_osc);
step(H_osc);
title('Odpowiedź na skok jednostkowy (oscylacyjny)');


% Przypadek tłumiony
licz_tlum = [0 0 1];
mian_tlum = [1 1 1];

H_tlum = tf(licz_tlum, mian_tlum);
step(H_tlum);
title('Odpowiedź na skok jednostkowy (tłumiony)');

%====[TASK-02]==================================================

z=-1/4;
p=[0 -5 -1/10];
k=2;

H=zpk(z, p, k);
%Wyświetlenie transmitancji
disp(H);

%====[TASK-03]==================================================

licz = [0 0 1];
mian = [1000 500 400];
[z, p, k] = tf2zp(licz, mian);

%zp2ss
[A_zp2ss, B_zp2ss, C_zp2ss, D_zp2ss] = zp2ss(z, p, k);
disp('Macierze stanu z zp2ss:');
disp('Macierz A_zp2ss:');
disp(A_zp2ss);
disp('Macierz B_zp2ss:');
disp(B_zp2ss);
disp('Macierz C_zp2ss:');
disp(C_zp2ss);
disp('Macierz D_zp2ss:');
disp(D_zp2ss);

%tf2ss
[A_tf2ss, B_tf2ss, C_tf2ss, D_tf2ss] = tf2ss(licz, mian);
disp('Macierze stanu z tf2ss:');
disp('Macierz A_tf2ss:');
disp(A_tf2ss);
disp('Macierz B_tf2ss:');
disp(B_tf2ss);
disp('Macierz C_tf2ss:');
disp(C_tf2ss);
disp('Macierz D_tf2ss:');
disp(D_tf2ss);

if isequal(A_zp2ss, A_tf2ss)
    disp("A_zp2ss == A_tf2ss");
else
    disp("A_zp2ss != A_tf2ss");
end

if isequal(B_zp2ss, B_tf2ss)
    disp("B_zp2ss == B_tf2ss");
else
    disp("B_zp2ss != B_tf2ss");
end

if isequal(C_zp2ss, C_tf2ss)
    disp("C_zp2ss == C_tf2ss");
else
    disp("C_zp2ss != C_tf2ss");
end

if isequal(D_zp2ss, D_tf2ss)
    disp("D_zp2ss == D_tf2ss");
else
    disp("D_zp2ss != D_tf2ss");
end

if isequal(step(A_zp2ss, B_zp2ss, C_zp2ss, D_zp2ss), step(A_tf2ss, B_tf2ss, C_tf2ss, D_tf2ss))
    disp("SKOKI SĄ RÓWNE");
else
    disp("SKOKI NIE SĄ RÓWNE");
end

%====[TASK-04]==================================================
z = [];
p = [-1 -1 -1 -1 -1 -1 -1 -1 -1 -1];
k = 1;

[licz, mian] = zp2tf(z, p, k);

[z1, p1, k1] = tf2zp(licz, mian);

disp("Wektor biegunów p:");
disp(p);
disp("Wektor biegunów p1:");
disp(p1);

if isequal(p, p1)
    disp("p == p1");
else
    disp("p != p1");
end

%====[TASK-05]==================================================
sys1 = tf([0 1 1], [1 5 1]);
sys2 = tf([0 0 0 1], [1 1 -2 1]);

sys_s = series(sys1, sys2);
sys_p = parallel(sys1, sys2);
sys_f = feedback(sys1, sys2);

disp("Transmitancja zastępcza sys szeregowa:");
%disp(sys_s);
sys_s

disp("Transmitancja zastępcza sys równoległa:");
%disp(sys_p);
sys_p

disp("Transmitancja zastępcza sys sprzężenia zwrotnego:");
%disp(sys_f);
sys_f

% Transmitancja połączenia szeregowego
subplot(3, 1, 1);
hold on;
step(sys_s);
impulse(sys_s);
title('Transmitancja Szeregowa');
legend('Step', 'Impulse');
grid on;
hold off;

% Transmitancja połączenia równoległego
subplot(3, 1, 2);
hold on;
step(sys_p);
impulse(sys_p);
title('Transmitancja Równoległa');
legend('Step', 'Impulse');
grid on;
hold off;

% Transmitancja połączenia sprzężenia zwrotnego
subplot(3, 1, 3);
hold on;
step(sys_f);
impulse(sys_f);
title('Transmitancja Sprzężenia Zwrotnego');
legend('Step', 'Impulse');
grid on;
hold off;
%#####################WEEK#END#DEVELOPMENT######################
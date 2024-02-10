#!/bin/bash
######################WEEK#END#DEVELOPMENT######################
# file:        so2-lab02-23.sh
# autor:       BO$
# date:        27.03.2023
# version:     0x0004
# copyrights:  All rights reserved (c) 2024 Week-End Development
# ==============================================================
# TOPIC:       Przeanalizuj konfigurację sprzętową.
######################WEEK#END#DEVELOPMENT######################
# 1. Zbadaj następujące pliki:
nano /proc/ioports
nano /proc/interrupts
nano /proc/iomem
nano /proc/dma
nano /etc/rc.d
nano /etc/rc.d/rc0.d
nano /dev/*
#---------------------------------------------------------------
# 2. Sprawdź opcje startowe jądra.
cd grub.d/
dir
nano README
# lub
#cat /etc/grub.conf
#===============================================================
# SPRAWDŹ OSTATNI STATUS URUCHAMIANIA
# 3. Czasami proces uruchamiania nie kończy się poprawnie. W takim przypadku możesz sprawdzić, co poszło nie tak, na przykład, wykonując polecenie dmesg lub, w celu rozwiązywania problemów w fazie uruchamiania usług, możesz sprawdzić pliki dziennika, przeglądając pliki w katalogu /var/log/*, głównie /var/log/messages/.
nano /var/log/messages
dmesg
#===============================================================
# SPRAWDŹ PROCES URUCHAMIANIA I WYŁĄCZANIA SYSTEMU
# 4. Sprawdź domyślny cel, do którego system uruchamia się (systemctl get-default).
systemctl get-default
systemctl set-default multi-user.target
reboot
#---------------------------------------------------------------
# 5. Zmień domyślny cel na multi-user oraz zrestartuj system.
systemctl set-default graphical.target
reboot
#---------------------------------------------------------------
# 6. Przywróć domyślny cel na ten, z którego zmieniłeś się na multi-user target.
man systemctl
#===============================================================
# DODAJ/USUŃ USŁUGĘ Z CELÓW(TARGETS)
# 7. Zbadaj, które usługi działają w poszczególnych celach. Możesz potrzebować dokładnie sprawdzić katalog /usr/lib/system/system.
#    Wyłącz jedną wybraną usługę, aby nie była uwzględniona w domyślnym celu (np. firewalld). Zrestartuj system i sprawdź, czy faktycznie nie jest uruchomiona (ps -ax).
top -p "$(pgrep -d, firewalld)"

systemctl stop firewalld
systemctl disable firewalld
systemctl daemon-reaload
top -p "$(pgrep -d, firewalld)"
reboot

top -p "$(pgrep -d, firewalld)"
#---------------------------------------------------------------
# 8. Przywróć zmianę, aby usługa ponownie była uwzględniona w domyślnym celu.
systemctl enable firewalld
systemctl daemon-reaload
systemctl start firewalld

reboot

top -p "$(pgrep -d, firewalld)"
######################WEEK#END#DEVELOPMENT######################
```yaml
title:        "Konfiguracja Hyper-V & VMs"
author:       ["BO$", "Nikolas"]
date:         13/10/2023
tags:         ["notes"]
copyright:    "All rights reserved (c) 2024  WEEK-END DEVELOPMENT"
version:      1.0
```
- [Wymagania](#wymagania)
- [1. Instalacja Hyper-V](#1-instalacja-hyper-v)
- [2. Zmiana parametrów w Skrypcie](#2-zmiana-parametrów-w-skrypcie)
- [3. Odpalenie skryptu jako administrator](#3-odpalenie-skryptu-jako-administrator)
- [SKRYPT](#skrypt)
- [4. Wpisz polecenia do powershella hosta (nie VM)](#4-wpisz-polecenia-do-powershella-hosta-nie-vm)
- [5.](#5)
- [KONFIGURACJA DC1 ZAKOŃCZONA](#konfiguracja-dc1-zakończona)

## Wymagania
1. Windows PRO/EDUCATION/ENTERPRICE
2. User w grupie Administrator Funkcji Hyper-V
3. Pobrane iso windows server 2022/2019

## 1. Instalacja Hyper-V
```powershell
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All
```

## 2. Zmiana parametrów w Skrypcie
```powershell
# xx -> Inicjały
$VMName = 'xx-2022-DC1'
$Switch = 'NET-1' # NIE ZMIENIAĆ
# Scieżka do ISO
$InstallMedia = 'C:\path-to\windows-server.iso'
# Nazwa karty sieciowej (Standardowo:)v
$NetAdapter = 'Ethernet'
```

## 3. Odpalenie skryptu jako administrator
```powershell
hyper-vm-conf-dc1.ps1
```
## SKRYPT

## 4. Wpisz polecenia do powershella hosta (nie VM)
```powershell
# Wprowadź zmienne z kroku 2 (WYMAGANE)
# Łączenie się do VM-ki przez PSSession
Enter-PSSession -VMName $VMName -Credential (New-Object PSCredential -ArgumentList 'Administrator', (ConvertTo-SecureString -String 'Pa$$w0rd' -AsPlainText -Force))

# Poniższe polecenia wykonaj wewnątrz sesji
New-NetIPAddress -InterfaceAlias "Ethernet" -IPAddress '172.16.0.10' -PrefixLength 16 -DefaultGateway '172.16.0.1'
Set-DnsClientServerAddress -InterfaceAlias "Ethernet" -ServerAddresses '127.0.0.1'
Rename-Computer -NewName "DC1" -Restart

# POCZEKAJ AŻ SYSTEM WSTANIE ABY PRZEJŚĆ DALEJ
```

## 5.
```powershell
# Łączenie się do VM-ki przez PSSession
Enter-PSSession -VMName $VMName -Credential (New-Object PSCredential -ArgumentList 'Administrator', (ConvertTo-SecureString -String 'Pa$$w0rd' -AsPlainText -Force))

# Poniższe polecenia wykonaj wewnątrz sesji
# INSTALACJA AD
Install-WindowsFeature -name AD-Domain-Services -IncludeManagementTools
# TWORZENIE DRZEWA
Install-ADDSForest -DomainName 'KEJA.msft' -DomainNetbiosName 'KEJA' -ForestMode Default -DomainMode Default -SafeModeAdministratorPassword (ConvertTo-SecureString -String 'Pa$$w0rd' -AsPlainText -Force)
```
## KONFIGURACJA DC1 ZAKOŃCZONA
> LOGIN: KEJA\Administrator

> PASSWORD: Pa$$w0rd
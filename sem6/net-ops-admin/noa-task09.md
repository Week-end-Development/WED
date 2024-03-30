---
topic: "Integrujące VLAN-y"
subject: "Administracja infrastrukturą sieciową przedsiębiorstwa"
tags: ["sem6", "noa", "task09"]
---
```yaml
author:       "BO$"
date:         30.03.2024
copyright:    "All rights reserved (c) 2024 WEEK-END DEVELOPMENT"
task_no:      0x09
version:      0x0001
```
- Packet Tracer - Integrujące VLAN-y
- Urządzenia
- Adresacja
  - VLAN
  - ROUTER
  - Przydzielenie IP
- Konfiguracja SW1
- Konfiguracja SW2
- Konfiguracja SW3
- Konfiguracja R1
- Konfiguracja K1
- Konfiguracja K2
- Konfiguracja K3
- Konfiguracja K4
- Konfiguracja K5
- Konfiguracja K6

## Packet Tracer - Integrujące VLAN-y

```mermaid
---
title: SCHEMAT
---
graph LR
  r1[(R1)] -- "g0/0 - g0/2" --- s1
  s1[[SW1]] -- "g0/1 - g0/2" --- s2[[SW2]] -- "g0/1 - g0/2" --- s3[[SW3]]
  subgraph VLAN99 : MGMT
    K6
    K1
  end
  subgraph VLAN30 : SALES
    K2
    K3
  end
  subgraph VLAN40 : HR
    K4
    K5
  end
  s1 -- "fa0/1" --- K1
  s1 -- "fa0/2" --- K2
  s2 -- "fa0/1" --- K3
  s2 -- "fa0/2" --- K4
  s3 -- "fa0/1" --- K5
  s3 -- "fa0/2" --- K6
```

## Urządzenia
```yaml
R1: 1941
SW1: 2960
SW2: 2960
SW3: 2960
```
## LINK
[INSTRUKCJA](https://github.com/Week-end-Development/INF-I/blob/main/sem6/net-ops-admin/noa-task09.md)

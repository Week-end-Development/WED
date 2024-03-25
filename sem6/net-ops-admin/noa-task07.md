---
topic: "Protokół OSPF"
subject: "Administracja infrastrukturą sieciową przedsiębiorstwa"
tags: ["sem6", "noa", "task06"]
---
```yaml
author:       "BO$"
date:         25.02.2024
copyright:    "All rights reserved (c) 2024 WEEK-END DEVELOPMENT"
task_no:      0x07
version:      0x0003
```
## Protokół OSPF
```mermaid
graph LR
  subgraph NET1
  PC1 --- s1[[SW1]] -- "f0/0" --- r1[(R1)]
  end
  r1[(R1)] -. "s0/0/0 <-> s0/0/1" .- r2[(R2)] -. "s0/0/0 <-> s0/0/1" .- r3[(R3)] -. "s0/0/0 <-> s0/0/1" .- r1
  subgraph NET2
  r2 -- "f0/0" --- s2[[SW2]] --- PC2
  end
  subgraph NET3
  r3 -- "f0/0" --- s3[[SW3]] ---PC3
  end
```
## LINK
[INSTRUKCJA](https://github.com/Week-end-Development/INF-I/blob/main/sem6/net-ops-admin/noa-task07.md)

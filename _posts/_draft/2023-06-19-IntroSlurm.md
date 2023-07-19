---
title: Introduction to Slurm
tags: [Server]
---

# Slurm 이란

Slurm이란 여러 리눅스 서버 클러스터가 있는 환경에서 클러스터를 관리하고, 관련된 프로그램 스케쥴링도 수행하는 프로그램이다.

# Slurm의 구조

Slurm에서 크게 `slrumd` 데몬과 `slurmctld` 데몬을 중심으로 구성되어 있다.
각 연산을 수행하는 노드에서는 `slurmd` 데몬이 돌아가며, 연산 노드를 관리하는 관리노드에서는 `slurmctld`로 연산 노드를 제어한다.
데몬이란 리눅스 백그라운드에서 계속 돌아가면서 작업을 수행하는 프로그램을 의미한다. `d` 로 끝나는 특징이 있다.

# 관련 링크

- [Slurm: Quick Start User Guide](https://slurm.schedmd.com/quickstart.html)
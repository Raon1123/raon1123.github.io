---
title: 연구실 개인 컴퓨터 세팅 작업
tags: Lab Research
---

인공지능 연구실에 들어가고 제일 먼저 하는 작업은, 나의 연구실 자리를 세팅하는 것이다.
개인 경험을 기준으로 내가 어떻게 연구실 환경을 세팅했는지 정리해보고자 한다.
아마도 Windows 혹은 Linux 기반의 데스크톱을 하나 받게 된다.

# GPU와 CUDA

현재의 대다수의 인공지능 모델은 GPU를 기반으로 실험되고 있다.
그러

# Model 구현

## Python 가상환경

(Anaconda 어쩌고)

## PyTorch의 설치

[PyTorch Install](https://pytorch.org/get-started/locally/)

나의 경우는 
- PyTorch Build: Stable(1.10.2, 22.02.09. 기준)
- Your OS: Windows
- Package: Conda
- Language: Python
- Compute Platform: CUDA 11.3

``` bash
conda install pytorch torchvision torchaudio cudatoolkit=11.3 -c pytorch
```

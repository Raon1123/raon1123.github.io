---
title: 연구실 세팅 작업
tags: [Lab] 
---

Last Update: 24. 3. 1.

연구실 컴퓨터를 세팅하면서 한 작업들을 정리해보고자 한다.
나의 경우 인공지능 대학원에 진학하여서, 관련된 서버(혹은 데스크톱)을 할당 받았고, 이러한 머신을 활용하기 위해 세팅을 공유하고자 한다.

---


## CUDA

인공지능 연구실이니 GPU를 당연히 활용한다. 
보통은(99%...) NVIDIA의 CUDA 라이브러리를 활용하게 된다.
CUDA는 이러한 GPU 하드웨어를 활용하게 만들어주는 라이브러리라고 생각하면 된다.

[CUDA Doc](https://docs.nvidia.com/cuda/cuda-installation-guide-microsoft-windows/)
[cuDNN Doc](https://docs.nvidia.com/deeplearning/cudnn/install-guide/index.html)

CUDA는 Download 페이지 [CUDA Toolkit Download](https://developer.nvidia.com/cuda-downloads)에서 밑 Archive of Previous CUDA releases를 선택하여 원하는 버전을 다운 받도록 하자.
문제는 너무 최신 버전의 경우 이를 지원하는 Python 라이브러리가 없는 한계점이 존재한다. 또한, 머신러닝 실험에서 각 CUDA 버전별로 성능의 차이가 있어 이를 맞추어서 실행해야 재현을 할 수 있을 것이다.

# Docker와 WSL

Docker를 활용하면 개발 환경 세팅을 옮기기 편하다.
그렇지만 Docker는 윈도우 환경에서는 단독으로 활용할 수 없지만, WSL 이라는 리눅스를 지원하는 툴을 활용하면 활용하게 만들 수 있다.

[WSL 설치](https://docs.microsoft.com/ko-kr/windows/wsl/install-win10)

[WSL with CUDA](https://docs.nvidia.com/cuda/wsl-user-guide/index.html#ch02-getting-started)

[Docker](https://docs.docker.com/desktop/windows/wsl/#develop-with-docker-and-wsl-2)

# IDE

[VS Code](https://code.visualstudio.com/)

# Python and Friends

[Anaconda](https://www.anaconda.com/products/individual)

```bash
conda create -n pytorch_env python=3.7
```

[Jupyter](https://jupyter.org/install)

[PyTorch](https://pytorch.org/get-started/locally/)


# 참고한 자료들

[Ref](https://pakalguksu.github.io/development/Anaconda%EB%A1%9C-PyTorch-%EC%84%A4%EC%B9%98%ED%95%98%EA%B3%A0-GPU-%EC%82%AC%EC%9A%A9%ED%95%98%EA%B8%B0/)
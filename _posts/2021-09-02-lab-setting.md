---
title: 연구실 세팅 작업
tags: [Lab] 
---

Last Update: 24. 3. 1.

연구실 컴퓨터를 세팅하면서 한 작업들을 정리해보고자 한다.
나의 경우 인공지능 대학원에 진학하여서, 관련된 서버(혹은 데스크톱)을 할당 받았고, 이러한 머신을 활용하기 위해 세팅을 공유하고자 한다.

---

# Environment Modules

[Environment Modules Docs](https://modules.readthedocs.io/en/latest/)

인공지능 관련 실험을 하면서 가장 힘들었던 부분은 환경변수의 설정이였다.
각 논문마다 필요한 환경이 다르고, 후술할 CUDA 버전까지 다양한 변수들을 맞추어야 동작을 하는 경우가 많았다.
이러한 변수를 관리해주는 프로그램이 environment modules이다.
개인적으로 관리하는 변수는 아나콘다 환경, CUDA 환경을 주로 설정해두었다.

설치의 경우 [Installing on Unix](https://modules.readthedocs.io/en/latest/INSTALL.html)를 참고하면 최신 내용을 얻을 수 있ㅇ르 것이다.
아마도 Ubuntu package 관리자인 `apt` 를 통해서 아래와 같이 설치할 수 있을 것이다. Environment modules를 위한 패키지인 `tcl`도 함께 설치해주자.
```
sudo apt install environment-modules tcl
```

이제 이를 실행하기 위해 스크립트를 실행하여야 한다. `man module`을 통해서 Environment module 패키지 `module`의 설명을 알 수 있다. (필자는 `bashrc`를 썼다.)
```
$ . /usr/share/modules/init/sh
```


# CUDA

인공지능 연구실이니 GPU를 당연히 활용한다.

[CUDA Doc](https://docs.nvidia.com/cuda/cuda-installation-guide-microsoft-windows/)

[cuDNN Doc](https://docs.nvidia.com/deeplearning/cudnn/install-guide/index.html)

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
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
이를 `/etc/bash.bashrc` 마지막에 추가한다면 모든 유저에 적용할 수 있을 것이다.

가능한 `module`의 확인은 `module avail`을 통해 할 수 있다.
```
$ module avail
----- /usr/share/modules/modulefiles -----
dot  module-git  module-info  modules  null  use.own
```
여기서는 `/usr/share/modules/modulefiles` 위치에 모듈이 저장되어 있다는 것을 확인할 수 있고, 여기에 아래와 같은 모듈을 사용할 수 있는 것을 확인하였다.

하나의 환경변수 설정의 예시로 anaconda와 CUDA를 작성해보자.

## Anaconda

Anaconda는 파이썬 패키지를 관리한다.

[Anaconda Download](https://www.anaconda.com/download) 에서 Linux Tux 아래 64-bit installer를 다운로드 하자. 우클릭으로 링크를 복사하고, 쉘에 다음과 같이 붙여넣자 (https로 시작하는 주소를 붙여넣으면 된다)
```
$ wget https://repo.anaconda.com/archive/Anaconda3-2023.09-0-Linux-x86_64.sh
```

원래는 각 user가 사용한다면 각각 설치해도 무방하다. 그렇지만, 모든 user가 사용할 수 있게 설치하자.
```
$ sudo sh ./Anaconda3-2023.09-0-Linux-x86_64.sh
```
라이센스 term은 Enter를 계속 누르면 no가 되어서... 키보드 Page Down 키를 여러 번 눌러서 읽어가면서 확인하자. `yes`를 눌러 라이센스에 동의하면 아래와 같은 설치 위치를 정해야 한다.
```
Anaconda3 will now be installed into this location:
/root/anaconda3

  - Press ENTER to confirm the location
  - Press CTRL-C to abort the installation
  - Or specify a different location below

[/root/anaconda3] >>> /usr/local/anaconda3
```
`sudo`로 실행을 해서 홈 디렉토리가 `/root`로 바뀐 모습이다. 우리는 다른 유저도 접근할 수 있게 (그렇지만 수정은 못하는) `/usr/local/anaconda3`로 지정하자. 설치는 이 디렉토리에 진행이 되게 된다.
이후 환경변수 설정도 이를 홈으로 하면 된다.
```
You can undo this by running `conda init --reverse $SHELL`? [yes|no]
[no] >>> no
```
설치가 완료되면 init을 묻는데 이는 다른 module로 관리할 것이므로 no를 누르자.

위의 environment modules에서 module의 위치가 `/usr/share/modules/modulefiles`에 있다는 것을 확인하였다.

여기에 `sudo vi /usr/share/modules/modulefiles/conda`를 통해 conda의 환경변수를 설정하고, 실행하여보자.

```
#%Module1.0

conflict conda

set     name                     anaconda3
set     version                  anaconda3
set     conda_home               /usr/local/$name
set     prefix                   $conda_home

if {![file exists $prefix]} {
    puts stderr "\t[module-info name] Load Error: $prefix does not exist"
    break
    exit 1
}

append-path     PATH                 $conda_home/bin
setenv          CONDA_HOME           $prefix

if { [ module-info mode load ] } {
    puts stdout "source $prefix/etc/profile.d/conda.sh"
}
```

이후 `module avail`을 실행하면 `conda`가 추가된 것을 확인할 수 있다.

`conda env list`를 실행하여 성공하면 완료된다.

## CUDA

인공지능 연구실이니 GPU를 당연히 활용한다. 
보통은(99%...) NVIDIA의 CUDA 라이브러리를 활용하게 된다.

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
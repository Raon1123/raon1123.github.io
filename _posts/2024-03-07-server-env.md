---
title: 연구실 서버 Environment Modules 작업
tags: [Lab, Server] 
---

# 들어가며

공식문서: [Environment Modules Docs](https://modules.readthedocs.io/en/latest/)

## Environment Modules 란?

> The Modules package is a tool that simplifies shell initialization and lets users easily modify their environment during a session using modulefiles.
> Source: [Environment modules docs](https://modules.readthedocs.io/en/latest/)

Environment modules (`modules`) 는 쉘의 초기화나, 환경변수를 바꾸기 편하게 만들어주는 패키지이다.
우리는 여러 실험을 돌리다보면 각각이 필요로 하는 환경변수가 다르다는 것을 확인할 수 있다.
예를 들어, CUDA의 경우 버전을 맞추는 것이 실험의 재현에 있어서 중요한 포인트가 될 수 있다. 또한 이에 의존하는 패키지가 특정 버전에만 맞는 경우가 존재한다.
그렇지만 CUDA 버전을 실험때마다 설치하고 지우는 것은 번거롭다. 우리는 여러 버전을 설치하고 필요 때 마다 버전을 쉽게 바꾸는 패키지가 있으면 편할 것이다. 그것이 바로 `modules`의 역할이다.

# 설치

설치는 Ubuntu를 기준으로 `apt`를 통해 설치할 수 있다.
설치의 경우 [Installing on Unix](https://modules.readthedocs.io/en/latest/INSTALL.html)를 참고하면 최신 내용을 얻을 수 있다.

Environment modules를 위한 패키지인 `tcl`도 함께 설치해주자.
```bash
sudo apt install environment-modules tcl
```

패키지를 설치하였다고 해서 자동으로 실행되지는 않는다. 
실행 스크립트를 실행시켜야 사용할 수 있다. `module avail`을 처음에 치면 not found가 뜨는게 이 이유이다.
```bash
. /usr/share/modules/init/sh
```

매 번 이러한 스크립트를 실행시키는 것은 번거로울 것이다. Shell에 접속때마다 자동으로 실행되게 하기 위해서는 홈 디렉토리 아래의 `.bashrc` 혹은 `.zshrc` 에 해당 내용을 추가하면 알 수 있다. (자신의 shell이 무엇인지 모르겠다면 `echo $SHELL`을 통해 알 수 있다.)
예를 들어 아래 스크립트를 실행하면 내 계정에서 자동으로 위 스크립트가 실행될 수 있다.
```bash
echo ". /usr/share/modules/init/sh" >> ~/.bashrc
```
위의 명령어는 `echo`를 통해 이전의 스크립트를 출력(stdout)하고, 이를 `~/.bashrc` 파일의 마지막에 추가하라는 명령어이다. `echo` 뒤 따옴표 사이를 입맛에 맞게 바꾸면 바뀐 내용이 추가될 것이다.
그와는 별도로 root 권한이 있는 사람이 서버의 모든 user에게 적용시키고 싶다면 `/etc/bash.bashrc`에 추가하면 될 것이다.

# 활용

## 가능한 module 확인

가능한 `module`의 확인은 `module avail`을 통해 할 수 있다.
```bash
module avail
----- /usr/share/modules/modulefiles -----
dot  module-git  module-info  modules  null  use.own
```
여기서는 `/usr/share/modules/modulefiles` 위치에 모듈이 저장되어 있다는 것을 확인할 수 있고, 여기에 아래와 같은 모듈을 사용할 수 있는 것을 확인하였다.

## 모듈의 로드

가능한 모듈이 있다면 이를 로드하는 방법은 `module load`를 통해 할 수 있다.
```bash
module load module-info
+++ global vars +++
...
```
위의 명령을 통해 `module-info` 라는 모듈을 불러왔고, 그 출력 결과물을 통해 잘 로드 되었음을 확인할 수 있다.

또한 `module avail`을 다시 치면, loaded된 것은 색깔이 다르게 나오는 것을 확인할 수 있다.

## 모듈 로드의 취소

모듈 로드를 취소하는 방법은 `module unload`를 통해 할 수 있다.
```bash
module unload module-info
+++ global vars +++
...
```

때때로 모든 모듈을 취소하고 싶다면, `module purge`를 통해 한꺼번에 취소할 수 있다.
```bash
module purge
```

# 스크립트의 작성

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
---
title: 연구실 세팅 작업
tags: [Lab] 
---

마지막 수정일자: 2024. 4. 2.

인공지능을 활용, 연구를 하면서 빼놓을 수 없는 것이 CUDA® 입니다.
그렇다면 CUDA는 무엇이고 이를 어떻게 활용할 수 있을까요?

# CUDA란 무엇인가?

CUDA는 NVIDIA GPU를 통한 개발을 도와주는 라이브러리 입니다.
대다수의 인공지능의 계산은 부동소숫점에 병렬로 연산하는 것이 효과적이고 이를 GPU를 통해 동작시키는 것이 효과적이라는 것이 알려졌습니다.
그렇기 위해서는 GPU를 잘 동작시키고 최적화하는 작업이 필요합니다. 그렇지만 우리는 이러한 내용을 자세히 들여다 보고 직접 최적화 하기는 어렵지요. 그래서 등장한 것이 CUDA 라이브러리입니다. 
CUDA는 NVIDIA GPU에 맞추어 제공되는 라이브러리입니다. 다시 말해, NVIDIA GPU가 아니면 CUDA를 사용할 수 없습니다. 대다수의 공개된 인공지능 라이브러리는 CUDA에 의존적이니... NVIDIA GPU를 통해 대다수의 연구와 개발이 이루어지는 듯 합니다. 

보다 자세한 내용에 관심이 있으시다면 아래 영상을 추천합니다.

NVIDIA에서 공개한 CPU와 GPU를 비교하는 영상입니다.
<iframe width="560" height="315" src="https://www.youtube.com/embed/-P28LKWTzrI?si=E9UOvsQAH7RFuX_b" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

하드웨어 레벨로 들어가서 보다 상세하게 GPU의 동작 과정을 설명하는 영상입니다.
[Youtube Link](https://youtu.be/ZdITviTD3VM?si=pj98yU9wsU4ViVoH)

# CUDA의 설치

만약 Anaconda 환경 아래의 PyTorch에서 CUDA를 설치한다면, 별도로 아래 과정을 거치실 필요는 없습니다. (Nvidia Driver는 필요할 수 있음.) CUDA와 관련된 내용을 이미 함께 다운로드 했기 때문입니다. [PyTorch Install](https://pytorch.org/get-started/locally/)에서 `Compute Platform`에 필요한 CUDA 버전을 선택하여 설치하시면 됩니다. 이 경우 conda 가상환경과 연동되어서 버전을 관리할 수 있고, 발생될 수 있는 충돌을 pytorch에서 포함하여 컴파일했기에 방지할 수 있습니다.
{:.info}

CUDA의 설치는 생각 외로 간단합니다.
아래 페이지에서 OS, Architecture, Distribution을 택하면 끝입니다.
[CUDA Toolkit Downlaods](https://developer.nvidia.com/cuda-downloads)

보통 제가 활용되는 서버는 Linux, x86_64, Ubuntu이니 이를 택하면 됩니다.
이후 OS의 버전을 선택하시고 installer type을 선택 (저는 `runfile`이 간단하여 선호합니다.) 이후 실행하시면 됩니다. (저는 Ubuntu 20.04)
아마도 처음 설치하신다면 운영체제와 NVIDIA GPU 하드웨어 사이의 연결을 하는 하드웨어 드라이버(NVIDIA Driver)도 설치하셔야 합니다. 드라이버의 경우 CUDA 별로 요구되는 버전이 다르니 이 점에 유의해 주세요.

![cuda_install](/assets/images/240329_cudainstall.png)

여기에서 `$` 표시 이후의 내용을 각각 명령 창에 실행시키면 됩니다.
사진의 버전에서는 아래를 실행하면 되네요.
```bash
wget https://developer.download.nvidia.com/compute/cuda/12.4.0/local_installers/cuda_12.4.0_550.54.14_linux.run
sudo sh cuda_12.4.0_550.54.14_linux.run
```
각 행의 의미는 `wget`을 통해 해당 주소에서 `cuda_12.4.0_550.54.14_linux.run`을 받고, 다음 행에서 이를 superuser 권한으로 실행하고 있습니다. 
라이센스에 동의하고 `accept` 설치하시면 됩니다.
이후 `nvcc --version` 과 `nvidia-smi`로 정상적으로 설치되었는지 확인이 가능합니다. 만약 nvcc가 없다고 뜬다면, CUDA의 위치가 정의되지 않았기 때문입니다. 이는 아래 "CUDA의 관리"에서 참고해주세요.

```
$ nvcc --version
nvcc: NVIDIA (R) Cuda compiler driver
Copyright (c) 2005-2021 NVIDIA Corporation
...
Build cuda_11.3.r11.3/compiler.29920130_0
```
이렇게 뜬다면 마지막 줄의 `cuda_11.3`을 통해 `11.3`이 설치되었다는 것을 확인할 수 있습니다.

최신것이 가장 좋지 않을까 생각이 들지만 꼭 그렇지는 않습니다.
앞의 CUDA에 대해 설명을 하였을 때, 다른 라이브러리가 CUDA에 의존적이라고 말하였는데요. 다르게 생각하면 우리가 활용되는 라이브러리가 CUDA에 맞기 위해서는 바로 나오는 것 보다는 중간에 개발하면서 필요한 시간이 있을 것입니다. 그래서 보통은 최신의 것 보다는 안정된 옛날 버전을 활용합니다. 
이는 하단의 `Resources` > `Archive of Previous CUDA Releases` 에서 설치하시면 됩니다. [Link](https://developer.nvidia.com/cuda-toolkit-archive)
저는 개인적으로 작성 시점 기준으로 `12.2`, `11.8`, `11.2`, `10.2` 를 주로 활용합니다. 앞서 말한 드라이버도 같이 설치할 수 있는데, 저의 경우 안정적인 여러 버전 중에서 가장 높은 것으로 드라이버를 함께 설치하고, 이후 버전은 드라이버가 없이 설치합니다. 예를 들면 아래와 같습니다.

```bash
sudo sh ./cuda_10.2.89_440.33.01_linux.run --silent --toolkit --override --librarypath=/usr/local/cuda-10.2
```
`runfile` 의 다운로드는 이전과 동일하게 `wget`으로 실행합니다. 그 디렉토리에서 다운받은 runfile의 이름을 통해 실행을 시키는데 뒤의 `--` 는 실행 시 옵션을 의미합니다. 
`--silent`는 출력이 없이 실행하고, `--toolkit`은 CUDA tookit만을 설치를, `--override`는 이미 CUDA를 설치하였으나 다른 버전도 설치를 의미합니다.
마지막 `--librarypath`는 설치될 위치인데, 개인적으로는 `/usr/local/cuda-<version>`으로 관리하고 있습니다. `<version>`은 각 버전 명으로 상황에 맞게 바꾸시면 됩니다.

## cudnn의 설치

cuDNN (NVIDIA CUDA® Deep Neural Network library) 는 CUDA에 더해서, deep neural network에 최적화된 기능을 제공하는 라이브러리 입니다. 이 또한 딥러닝 학습의 가속을 위해서 필요한 라이브러리입니다.
CUDA와 동일한 방식으로 다운로드를 받을 수 있습니다. 설치의 경우 아래에서 상세히 다루겠습니다.

[cuDNN Downloads](https://developer.nvidia.com/cudnn-downloads)

![cuda_install](/assets/images/240329_cudnninstall.png)

저는 이전과 달리 `Distribution`에서 `Tarball`을 선택하였습니다. 이렇게 할 경우, 여러 CUDA 버전에 맞추어서 각각에 설치할 수 있는 이점이 있습니다.

아래의 `wget ~~` 내용을 따라 다운로드 받으시면 됩니다. 
이후 `tar cvf`를 통해 tarball을 풀으시면 됩니다. (Note. Tarball은 여러 파일을 하나로 일렬로 모아놓은 파일입니다.)

저는 아래 스크립트를 따로 작성해서 다운로드 받아 활용하고 있습니다. `#` 뒤의 내용이 각 줄에 대한 주석으로 설명입니다.
```bash
ver=${1} # 설치할 버전
echo ${ver} # 설치할 버전의 출력
# 아래 내용은 필요한 라이브러리 내용을 해당 디렉토리로 복사합니다. sudo 권한이 필요합니다.
sudo cp ./include/cudnn*.h /usr/local/cuda-${ver}/include
sudo cp -P ./lib/libcudnn* /usr/local/cuda-${ver}/lib64
sudo chmod a+r /usr/local/cuda-${ver}/include/cudnn*.h /usr/local/cuda-${ver}/lib64/libcudnn*
```
이를 예를 들어 `./cudnn.sh`라 하였고 이를 tarball에 풀어진 디렉토리에 넣었습니다. 이를 CUDA11.8 버전에 설치하고 싶다면. (앞선 방법으로 `/usr/local/cuda-11.8` 에 설치되어있다면) 아래 과정을 통해 전체적으로 설치할 수 있습니다.
```
tar cvf ./cudnn-linux-x86_64-8.5.0.96_cuda11-archive.tar.xz
cd ./cudnn-linux-x86_64-8.5.0.96_cuda11-archive
vi cudnn.sh # 여기서 위의 스크립트를 붙여넣어주세요.
./cudnn.sh 11.8 # 11.8이 ${1} 의 내용입니다.
```

# CUDA의 관리

생각보다는 여러 프로젝트에서 각기 다른 버전의 CUDA가 필요한 경우가 있습니다.
저는 이를 `environment-modules`로 관리합니다. [연구실 서버 Environment Modules 작업]({% post_url 2024-03-07-server-env %})
스크립트는 아래와 같습니다.
```
#%Module1.0

proc ModulesHelp { } {
    puts stderr "\tUse example:"
    puts stderr "\t        \$ module load [module-info name]"
}

conflict cuda

set     version                  <version>
set     cuda_home                /usr/local
set     prefix                   $cuda_home/cuda-$version

if {![file exists $prefix]} {
    puts stderr "\t[module-info name] Load Error: $prefix does not exist"
    break
    exit 1
}

prepend-path    PATH                 $prefix/bin
prepend-path    LD_LIBRARY_PATH      $prefix/lib64

catch {set cur_manpath $env(MANPATH)}
if {![info exists cur_manpath]} { setenv MANPATH /usr/share/man }

prepend-path    MANPATH              $prefix/doc/man
```
이를 modulefile의 위치에 잘 넣은 이후, load하면 `nvcc --version`을 통해 cuda 버전이 바뀌는 것을 확인할 수 있습니다.
저는 개인적으로 다른 서버와 비슷하게 `/usr/share/modules/modulefiles/cuda` 디렉토리를 생성하고 `/usr/share/modules/modulefiles/cuda/<version>`으로 파일을 생성하여 버전을 관리합니다. 

# 관련 페이지

- [CUDA Doc](https://docs.nvidia.com/cuda/cuda-installation-guide-microsoft-windows/)
- [cuDNN Doc](https://docs.nvidia.com/deeplearning/cudnn/install-guide/index.html)
- [CUDA and cuDNN inside a Conda env](https://jrkwon.com/2022/11/22/cuda-and-cudnn-inside-a-conda-env/)
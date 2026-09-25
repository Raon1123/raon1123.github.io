
# Docker의 설치

Docker를 서버에서 설치하기 위해서는 Docker Engine이 필요하다. 
기본적인 Ubuntu를 설치해도 존재하지만, 이것을 지우고 최신 버전을 설치하고자 한다. 아래 페이지를 보고 따라해보자.

[Docker Engine Install](https://docs.docker.com/engine/install/ubuntu)

`OS requirements`를 통해 지금 설치하고자 하는 버전이 호환되는 OS인지 확인하도록 하자. 이후 바로 아래 `Uninstall old versions`를 실행하기로 한다.
이는 `docker`와 관련된 이미 설치된 패키지를 삭제하는 작업이다. 다시 최신 버전으로 설치할 예정이니 그대로 실행하면 된다.
`$`로 시작되는 무언가가 실행 시키는 스크립트이다. 오른쪽 끝에 마우스를 가져가면 복사할 수 있는 버튼이 생긴다. 이를 통해 복사하고 터미널을 눌러 우클릭으로 붙여넣어 실행하자.
삭제에 동의 하는지 여러 번 묻는데 이 경우 모두 `Y`를 누르면 된다.

설치 방법도 간단하다.
1. Set up Docker's `apt` repository: 최신 버전의 docker가 있는 레포를 apt에 등록한다. 이를 통해 우리는 `apt`로 docker를 설치하고 관리할 수 있다. 이전과 동일하게 스크립트 우측 상단 버튼을 통해 복사 붙여넣기.
2. Install the Docker packages: `apt`로 최신 버전의 docker가 있는 주소를 등록했다면 `apt`로 설치하는 작업이다. 마찬가지로 복사-붙여넣기
3. Verify that the Docker Engine installation is successful by running `hello-world` image.: 정상적으로 설치 되었는지 `hello-world`라는 기본적인 도커를 통해 확인하는 작업이다.

## 오류가 생겼다면

만약 아래와 같은 `Is the docker demon running?` 이라는 에러가 나왔으면, 
```
sudo docker run hello-world
docker: Cannot connect to the Docker daemon at unix:///var/run/docker.sock. Is the docker daemon running?.
See 'docker run --help'.
```
Docker가 설치되었지만 실행이 되지 않은 것이다. 아래 명령을 통해 실행시키자.
```
sudo systemctl start docker
```

## 설치 이후의 작업

[Docker Engine post-installation](https://docs.docker.com/engine/install/linux-postinstall/)
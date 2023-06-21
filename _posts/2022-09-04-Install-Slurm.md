---
title: Slurm 설치 방법
tags: [Server] 
---

마지막 업데이트: 2023. 6. 21.

# Slurm 이란 무엇인가?

Slrum은 여러 연산 서버가 돌아가는 환경에서 이를 조율하는 조율자의 역할을 한다.
비유를 하자면, 현악 합주에서 각 연주자가 연산 서버 노드가 될 것이고, 이를 조율하는 지휘자가 slurm 서버가 될 것이다.
Slurm을 설치하기로 결심한 이유는, 연구실 서버의 사양이 각기 다르고, 각자 다른 환경에서 실험을 진행하고 있다.
이러한 상황에서 한 서버에서 다른 서버로 넘어가면 환경설정을 다시 해야하고, 서버 수가 많아지면서 각각의 관리가 어렵게 되었다.
다른 이유로는, 하나의 실험 job이 끝나면 다음 실험으로 넘어가는 것이 이상적이다.
즉 서버가 노는 (idle) 상황이 없어야 하는데, 다음 실험을 실행하기 위해서는 또 출근해야 하고, 어느정도 자원이 소모되는지도 관찰하여야 한다.
이러한 이유로 연구실에 slurm 서버를 두기로 결심하게 되었다.

# Slurm 설치 가이드

[공식 문서](https://slurm.schedmd.com/quickstart_admin.html)

공식 문서를 보면 Quick start라고 주장하지만 이대로 실행하기에는 여러 어려움이 있다.
가장 단순한 방법으로는 `apt-get slurm-wlm slurm-wlm-doc`을 통하여 apt에 모든 것을 맡길 수 있지만, 이 경우 최신 버전을 받을 수 없는 문제가 있었다.
이것이 문제가 되는 이유는, 각기 다른 slurm 버전의 경우 slurm 서버와 연산 노드간의 통신 프로토콜이 맞지 않아 며칠간 애를 먹었다.
그래서 모든 서버에 모두 동일한 버전의 slurm을 설치하는 것이 좋겠다.

Slurm 설치에 앞서 많~은 준비사항이 있는데 step-by-step으로 따라해보자.
나의 경우 직접 컴파일하고 설치하는 과정을 반복하여 최신 버전으로 설치하였다.
("apt를 써서 편하게 하자...")

## Munge

Munge는 서버 사이에서 인증을 하는 프로토콜이다.
Slurm에서는 각 연산 서버간의 통신인증을 위해 munge를 활용하고 있으므로 이를 사전에 설치하여야 한다.

우선 munge를 실행할 user를 아래와 같이 생성하자.
```
export MUNGEUSER=991
sudo groupadd -g $MUNGEUSER munge
sudo useradd  -m -c "MUNGE Uid 'N' Gid Emporium" -d /var/lib/munge -u $MUNGEUSER -g munge  -s /sbin/nologin munge
```
각 연산 노드별로 동일한 uid, gid를 가져야 한다. 모든 서버에서 동일하게 세팅한다.

ubuntu와 같은 경우 아래와 같은 명령어로 설치할 수 있다.
```
apt-get install munge libmunge-dev
```

혹은 직접 파일을 다운받아 컴파일을 할 수도 있다. (근데 에러가 자주 나서 권하지 않는다.)
```
sudo apt install bzip2 zlib1g pkgconf
wget https://github.com/dun/munge/releases/download/munge-0.5.15/munge-0.5.15.tar.xz --no-check-certificate
tar xJf munge-0.5.15.tar.xz
cd munge-0.5.15/
./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--localstatedir=/var \
	--runstatedir=/run
make -j32
sudo make install
```

설치가 완료 되었다면, 인증할 key를 가져오자. 
인증할 `munge.key`는 모든 서버가 공유하여야 한다.
이의 생성은 서버에서 
```
dd if=/dev/urandom of=/etc/munge/munge.key bs=1c count=4M
```
로 생성할 수 있다.

생성이 완료되었다면 `/etc/munge/munge.key`에 생성이 되었을 것이다. 
key 파일을 모든 서버에 동일하게 복사한 이후,
key 파일의 권한을 수정하자.
```
sudo ls -al /etc/munge/munge.key
sudo chown munge:munge /etc/munge/munge.key
sudo chmod 400 /etc/munge/munge.key
```

이제 munge 데몬을 실행시키자.
```
sudo systemctl enable munge
sudo systemctl start munge
```

munge가 성공적으로 설치 되었는지 아래와 같은 명령을 차례로 실행시켜 확인해 보자.
`munge -n`을 실행하면 key파일이 나오고 `munge -n | unmunge`를 하면 "STATUS: Success (0)"를 통해 성공함을 확인할 수 있다.
```
munge -n
munge -n | unmunge
munge -n | ssh <node> unmunge
```

### 참고자료

- [Munge install guide](https://github.com/dun/munge/wiki/Installation-Guide)


# Slurm의 설치

먼저 slurm을 실행할 user를 생성하자.
```
export SLURMUSER=990
sudo groupadd -g $SLURMUSER slurm
sudo useradd -m -c "SLURM Uid 'N' Gid Emporium" -d /var/lib/slurm -u $SLURMUSER -g slurm -s /sbin/nologin slurm
```

그리고 다운을 받아 설치하자.
```
wget https://download.schedmd.com/slurm/slurm-22.05.3.tar.bz2 --no-check-certificate
tar xvf slurm-22.05.3.tar.bz2
cd slurm-22.05.3
./configure --prefix=/usr/local --sysconfdir=/etc/slurm-llnl
make -j32
sudo make install
```
끝... 이 아니다. slurm에서는 필요한 파일과 디렉토리를 자동으로 생성하지 않기에 직접 생성해 주어야 한다.
Spool을 생성하고
```
mkdir /var/spool/slurmd
chown slurm: /var/spool/slurmd
chmod 755 /var/spool/slurmd
```
Log 파일도 생성하자.
```
touch /var/log/slurmd.log
chown slurm: /var/log/slurmd.log
```
configuration file의 경우 모든 서버 노드가 공유하여야 한다. 
이를 생성하였으면 설정된 configuration path에 저장하자. 
위의 설치에서 `sysconfdir` 옵션의 위치가 이에 해당한다. (예, `/etc/slurm-llnl`)

관리 서버에서는 `slurmctld` 데몬을 실행하고, 연산 서버에서는 `slurmd`를 실행하자.

이의 확인이 되었음은
```
scontrol show nodes
sinfo -a
```
로 가능하다.

## Common error
resolve DNS에 실패하는 경우는 1) slurm.conf 파일의 위치가 잘못 되었거나. (apt-get으로 설치하게 되면 다른 위치에 존재한다. `systemctl status slurmd`를 통해 위치를 확인할 수 있다.) 2) 혹은 hostname을 찾지 못하는 경우이다.
```
slurmd: error: resolve_ctls_from_dns_srv: res_nsearch error: Unknown host
slurmd: error: fetch_config: DNS SRV lookup failed
slurmd: error: _establish_configuration: failed to load configs
slurmd: error: slurmd initialization failed
```
1)의 경우 심볼릭 링크를 통해 맞는 configuration파일을 연결해주자.
```
sudo ln -s /etc/slurm-llnl/slurm.conf /usr/local/etc/slurm.conf
```
2)의 경우 `/etc/hosts`에서 해당 hostname을 추가하자.

만약 에러가 난다면 디버깅 모드로 `slurmd -Dcvvv`를 통해 로그를 뱉게 하여보자.

## 연산노드의 추가

### 연산 노드 사양의 확인

Slurm을 설정할려면 각 연산 노드의 사양을 기입하여야 하는데, slurm이 연산노드에 설치된 상태로
```
compute0 $ slurmd -C
NodeName=compute0 <detail spec of server>
```
를 통해 바로 확인할 수 있다. 

GPU 서버의 경우 GPU 연산 자원을 configuration file 위치의 `gres.conf`를 통해 추가해줘야 한다. `nvidia-smi` 등으로 설치된 GPU의 사양을 확인하고 아래와 같은 예시로 추가하자.
```
# /etc/slurm-llnl/gres.conf at Compute Node (compute0)
Nodename=compute0 Name=gpu Type=rtx3090 File=/dev/nvidia0
Nodename=compute0 Name=gpu Type=rtx3090 File=/dev/nvidia1
```
File의 경우 리눅스에서는 `/dev` 아래에 서버에 설치된 장비를 관리할 수 있다. NVIDIA GPU의 경우 `nvidia0` 부터 끝 부분 숫자가 추가되는 형식으로 그래픽카드가 설치되어 있다. 

### 관리 노드에서 연산 노드의 추가

관리 노드의 설정 파일 `slurm.conf` (이전 configuration file `/etc/slurm-llnl/slurm.conf`) 의 끝을 보면, Compute Nodes를 적는 란이 있다. 여기에 우리의 연산 노드를 추가해줘야 한다.
여기에 들어갈 정보는 앞서 연산 노드에서 `slurmd -C` 를 참고하여 작성할 수 있다.
또한 연산 노드를 묶어 파티션을 만들 수 있는데 이러한 파티션도 같이 설정하도록 하자.
```
# /etc/slurm-llnl/slurm.conf at Control Node (control)
~~~ SKIP ~~~
# Compute Node
GresTypes=gpu
NodeName=compute0 <spec> Gres=gpu:rtx3090:2 State=UNKNOWN
~~~ SKIP ~~~

PartitonName=comppart Nodes=compute[0-3] Default=YES MaxTime=INFINITE State=UP
```


## 참고 사이트

- [따라하며 하는 slurm 세팅 및 설명](https://ai4nlp.tistory.com/25)
- [Centos7에서 slurm 설치](https://wonwooddo.tistory.com/35)
- [Ubuntu 20.04에 slurm 스케쥴러 설치하기](http://luxnox.iptime.org/blog/ubuntu-20-4-%EC%97%90-slurm-%EC%8A%A4%EC%BC%80%EC%A4%84%EB%9F%AC-%EC%84%A4%EC%B9%98%ED%95%98%EA%B8%B0/)
- [KISTI 매뉴얼 (2014년)](https://repository.kisti.re.kr/bitstream/10580/6542/1/2014-147%20Slurm%20%EA%B4%80%EB%A6%AC%EC%9E%90%20%EC%9D%B4%EC%9A%A9%EC%9E%90%20%EA%B0%80%EC%9D%B4%EB%93%9C.pdf)

[Configless slurm](https://slurm.schedmd.com/configless_slurm.html)

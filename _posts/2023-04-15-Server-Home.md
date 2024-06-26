---
title: 서버관리자를 위한 안내서
tags: [Server]
---

동아리와 연구실, 서로 다른 목적을 가진 서버를 관리하고 운영해보면서 처음 들은 생각은 막막함이였다. 서버는 저기에 있고, 서버에 문제가 터지면 해결은 해야 하는데, 받을때마다 상황이 급박하게 되어 ID/PW 이상의 인수인계는 잘 받지는 못하였다. 다행히도, 나는 받고 나서 이것 저것 여쭈어보며 배울 기회는 있었지만 항상 이런 일이 있을거 같지는 않는다. 인터넷을 찾아보는 사람들을 위해, 또 나를 위해 최대한 서버를 관리하면서 생기는 일과 해결하는 방법을 정리해 남겨보고자 한다. 

# The Missing Semester of Your CS Education

- [Official MIT Course](https://missing.csail.mit.edu/)
- [한국어 번역](https://missing-semester-kr.github.io/)

위의 강의내용은 서버를 다루는 방법에 대해 논하고 있지는 않지만, 서버를 활용함에 있어 기본적인 도구들에 대한 설명을 하고 있는 강의이다.
우리가 서버를 다루면서 많이 사용하게 될 "shell"부터 시작하여서 git 그리고 다양한 다른 주제들을 다루고 있다.
그렇지만 이를 컴퓨터공학과 수업에서 학기를 쓰면서 다루기에는 참 애매하고, 그렇다고 바로 서버 환경에 들어가면 무엇부터 해야할지 왜 로그인 창에 입력이 안들어가는지부터 당황스럽다. (이는 정상이다. 보안상의 이유로 입력이 보이지 않는다.)
이 차이를 매워주는 수업이 MIT Missing Semester이다. UNIST에서는 A Build CS Skills (ABC Winter School) 이라는 프로그램으로 전공에 진입하기 전 겨울방학때 학부생 위주로 진행이 되게 된다.
만약, 서버를 관리하기에 앞서, 서버를 어떻게 잘 다루면 좋을지 고민한다면 저 글을 읽어보는게 도움이 많이 될 것이다.

# 관련 블로그 글

- [Slurm 사용법]({% post_url 2022-09-04-Intro-Slurm %})
- [서버관리 관련 용어]({% post_url 2023-08-01-Server-terms %})
- [Environment Modules]({% post_url 2024-03-07-server-env %})
- [CUDA의 설치]({% post_url 2024-03-07-server-cuda %})

# 관련 링크

- [Linux NFS 구성](https://onecoin-life.com/87)
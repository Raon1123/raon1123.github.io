---
title: 전산학 공부자료
tags: [CompSci, CSE, Study]
---

마지막 업데이트 2024. 4. 28.

# 들어가며

컴퓨터공학이나 컴퓨터과학에 관한 관심이 높아지면서, 이를 어떻게 공부하면 좋을지에 대한 질문을 많이 받고는 합니다. 
인터넷에는 이와 관련된 수 많은 자료가 올라와 있습니다. 또한 이러한 자료 중에서 어떠한 자료가 나에게 맞는가? 어떠한 자료를 먼저 보는 것이 좋을까? 에 대한 고민도 함께 하게 됩니다.
이 글에서는 컴퓨터공학과 컴퓨터과학에 관한 전반적인 내용을 훑어보고, 어떻게 공부하면 좋을지, 어떠한 내용을 필수적으로 공부하면 좋을지에 대해 알아보고자 합니다.

컴퓨터와 관련된 역사는 다른 학문에 비해 상대적으로 짧습니다. 튜링머신으로 알려진 계산 가능한 모델이 만들어진 것은 1930년대, 이러한 일반적인 컴퓨터가 만들어 진 것은 1940년대의 일입니다. 거의 100년도 안된 일입니다. 문제를 해결한다는 측면에서 컴퓨터는 그 역할을 잘 수행했고, 이제는 인간의 지능을 넘보고 있습니다. 
옛날에도 새로 생긴 학문인 Computing을 어떻게 가르칠지에 대한 고민이 있어왔습니다. Denning report라 불리우는 레포트의 경우 이러한 과거의 고민을 엿볼 수 있습니다. "컴퓨터과학은 과학일까요?", "컴퓨터과학을 가르칠때는 공학 처럼 가르쳐야 할까요?" "컴퓨터과학이나 공학을 가르칠 때 프로그래밍이 전부일까요?" 등등 다양한 질문이 있어왔습니다. 이를 해결하기 위해 테스크포스를 만들어 하나의 가이드라인을 만들었습니다. 이 글을 중심으로 전산학을 어떻게 공부하면 좋을지에 대해 알아보고자 합니다.

Denning report에서 흥미로웠던 부분은 전산학이 가지는 특성은 수학, 과학, 공학을 모두 아울러야 한다는 부분이였습니다. 글에서는 세 가지 패러다임을 통해 전산학을 가르쳐야 한다고 주장합니다. 이론은 (theory) 수리과학에 그 기초를, 추상화는 (abstraction) 자연과학에 그 기초를, 디자인은 (design) 공학에 그 기초를 두고 있습니다.

| 패러다임 | 목표 |
| --- | --- |
| 이론 (theory) | 1) 배우고자 하는 대상을 정의하고, 2) 이들 사이의 가능한 관계를 가정하여, 3) 이러한 관계가 참인지를 증명함으로써, 4) 이러한 결과를 해석한다. |
| 추상화 (abstraction) | 1) 가설을 세우고 2) 모델을 구성하고 이에 대한 예측을 하여, 3) 실험을 설계하고 데이터를 모아 4) 이러한 결과를 분석한다. |
| 디자인 (design) | 1) 요구사항을 명시하고 2) 요구되는 사양을 명시하고 3) 시스템을 디자인, 구현 하여 4) 이러한 시스템을 테스트한다. |

전산학에서는 이러한 세 패러다임에 기초하고 있고, 이들은 서로 상호작용을 하면서 전산학에 영향을 주고 있습니다. 전반적인 전산학 커리큘럼이나 공부를 수행할 때 이러한 부분에 유념하면서 공부를 한다면 보다 튼튼한 기초를 얻을 수 있습니다.

전산학, 컴퓨터과학 (Computer Science), 컴퓨터공학 (Computer Engineering) 등 다양한 이름으로 우리의 분야는 불리우고 있습니다. 보통은 CSE, Computer Science and Engineering가 컴퓨터공학과로 불리우게 되더라고요. 어떤 학교는 CS를 강조하기 위해 컴퓨터학과나 컴퓨터과학과로 불리우기도 하며, 어떤 대학에서는 전자과에도 이러한 부분이 붙은 흔적이 있습니다. (MIT EECS or 서울대 ECE) 이 글에서는 Computing을 공부하는 것에 대해 논하고자 하며, 전산학이라고 지칭하겠습니다. (솔직히 컴퓨터과학과 컴퓨터공학을 구분할 자신은 없습니다.)

## 관련 자료

KAIST 강지훈 교수님의 전산학부 소개영상에서 전산학에 대한 소개를 알아볼 수 있습니다.

<iframe width="560" height="315" src="https://www.youtube.com/embed/x4B0CCrdVoU?si=aV6a4ulqCRyKJ2oH" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

# 알고리듬과 데이터 구조

### CMU: Great Ideas in TCS

- [강의 홈페이지](https://www.anilada.com/courses/15251f19/www/index.html)
- [유튜브 재생목록](https://youtube.com/playlist?list=PLm3J0oaFux3aafQm568blS9blxtA_EWQv)

CMU에서 컴퓨터공학 이론을 다루기에 앞서 수학적 배경지식에 대해 설명을 하는 교과목입니다.
보통의 대학에서는 이산수학이라는 교과목하고 상당부분 겹치지만, 계산가능성, 튜링머신 등 계산이론의 기초적인 부분도 함께 다루고 있습니다.
이에 더 나아가서 More Great Ideas in TCS라는 교과목도 CMU에 개설이 되어 있다.

### CMU: CS Theory Toolkit

- [유튜브 재생목록](https://youtube.com/playlist?list=PLm3J0oaFux3ZYpFLwwrlv_EHH9wtH6pnX)


CS Theory Toolkit 교과목은 Great Ideas in TCS와 달리 대학원 학생을 대상으로 하는 강의입니다.
제목처럼 이론 분야에서 사용되는 다양한 정리와 툴들을 설명하는 교과목이다.

### MIT: Introduction to Algorithms

- [강의 사이트](https://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-006-introduction-to-algorithms-fall-2011/)
- [유튜브 재생목록](https://youtube.com/playlist?list=PLUl4u3cNGP61Oq3tWYp6V_F-5jb5L2iHb)

알고리즘을 공부하기위한 대학 교재로 자주 사용이 되는 책은 [CLRS](https://ko.wikipedia.org/wiki/Introduction_to_Algorithms)이라 불리우는 책이다.
한 권의 책 안에 알고리즘에 대한 전반적인 내용이 담겨져 있는 책으로 곁에 두고 읽기 좋은 책이다.
단점은, 전반적인 내용의 범위가 학부 수준부터 대학원 수준까지 다양하게 활요이 되는 터라 초심자는 어느정도 챕터를 생략하는 것이 좋다.
특이하게 MIT에서는 데이터구조 교과목이 별도로 개설이 되지 않고 바로 Intro to Algorithm으로 진입을 한다.

### CMU: Complexity Theory

- [학부 유튜브 재생목록](https://youtube.com/playlist?list=PLm3J0oaFux3YL5vLXpzOyJiLtqLp6dCW2)
- [대학원 유튜브 재생목록](https://youtube.com/playlist?list=PLm3J0oaFux3b8Gg1DdaJOzYNsaXYLAOKH)

# 프로그래밍 언어

[Why Study Programming Languages?](https://www.andrew.cmu.edu/course/15-312/phil.html)

### 서울대학교: 프로그래밍 언어

- [강의 사이트](http://ropas.snu.ac.kr/~kwang/4190.310/24/)

# 컴퓨터 하드웨어 및 구조

### CMU: Introduction to Computer Systems

- [강의 사이트](https://www.andrew.cmu.edu/course/15-312/phil.html)
- [교재: Computer Systems: A Programmer's Perspective](https://csapp.cs.cmu.edu/)

컴퓨터공학의 시스템 분야에서 기초가 되는 수업입니다. 아마도 한국에서는 "시스템프로그래밍" 이라는 교과목 등으로 개설이 되고 있습니다. 

### 컴퓨터구조

- [Computer Organization and Design](https://www.elsevier.com/books-and-journals/book-companion/9780128201091)
- [Computer Architecture, Sixth Edition: A Quantitative Approach](https://dl.acm.org/doi/book/10.5555/3207796)

### 컴퓨터 네트워크

전자과에도 동일한 명칭의 교과목이 열리지만, 순서가 반대라고 생각하시면 됩니다. 컴퓨터공학과는 사람이 사용하는 응용계층부터, 전자과는 물리계층부터 시작합니다. Top-down이냐 bottom-up이나 차이긴 합니다.

- [Computer Networking: A Top-Down Approach](https://gaia.cs.umass.edu/kurose_ross/online_lectures.htm)

# 운영체제

- [Operating System Concepts](https://os-book.com): a.k.a. 공룡책 보통은 이 책을 본다.
- [Operating Systems: Three Easy Pieces](https://pages.cs.wisc.edu/~remzi/OSTEP/): OSTEP으로 불리우며, 무료로 공개되어 있다.
- [PintOS](https://web.stanford.edu/class/cs140/projects/pintos/pintos.html): 운영체제 만들기, 컴퓨터공학과에서 절망을 선사하는 과제

# 소프트웨어 방법론과 공학

### 컴파일러

- [Dragon Book](https://suif.stanford.edu/dragonbook/)

# 데이터베이스와 정보 검색 시스템

### CMU: Database

- [유튜브 재생목록](https://youtube.com/playlist?list=PLSE8ODhjZXjbohkNBWQs_otTrBTrjyohi)
- [강의 사이트](https://15445.courses.cs.cmu.edu/fall2019/)

# 인공지능과 로봇

(별도로 글을 작성할 계획입니다.)

# 인간과 컴퓨터

### 컴퓨터 그래픽스

- [유튜브 재생목록](https://www.youtube.com/playlist?list=PL9_jI1bdZmz2emSh0UQ5iOdT2xRHFHL7E)
- [강의 사이트](http://15462.courses.cs.cmu.edu/spring2024/)

### 인간-컴퓨터 상호작용


# 그 외

### Awesome

[Awesome](https://github.com/prakhar1989/awesome-courses#cs-theory)
Awesome이라는 태그를 달고 있는 시리즈 중에서 컴퓨터공학 수업을 모아둔 Github 레파지토리이다. 
일반적으로 awesome 태그가 있으면 그와 관련된 주제 중에서 여러 사람들이 좋다고 생각하는 경우 올라오게 된다.

### MIT: Missing Semester

[유튜브 재생목록](https://youtube.com/playlist?list=PLyzOVJj3bHQuloKGG59rS43e29ro7I57J)

[강의 사이트](https://missing.csail.mit.edu/)

제목만 보면 "누락된 학기"라는 의미로 무엇을 배우는건가 싶다.
이는 컵퓨터공학과 수업에서는 다루지 않지만, 컴퓨터공학을 전공한다면 알아야 하는 내용에 대해 다룬다.
실제로 Git 사용법, Vim 사용법과 같은 각종 툴의 사용법부터 컴퓨터 보안에 대한 개략적인 소개까지 수업에서는 다루기 힘들지만, 알아두면 크게 도움이 되는 내용을 모아두고 있다.
실재로 UNIST 컴퓨터공학과 에서는 ABC Winter School이라는 이름으로 이 내용을 알려주는 튜터링이 개설되어 있다.

### Stanford: Practical Unix

[강의 사이트](https://practicalunix.org/)

Unix 시스템에 대해서는 익숙하지 않은 사람이 대부분이다. 위의 Missing Semester와 마찬가지로, 이를 현명하게 다루기 위해 알아야 할 지식들을 모은 수업이다.

# 참고문헌

본 블로그 글은 아래 글을 참고하여 작성되었습니다.

1. P. J. Denning et al. "*[Computing as a Discipline](https://ieeexplore.ieee.org/document/19833/)*", Computer, Volume 22. Issue 2, 1989.
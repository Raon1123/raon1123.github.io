---
title: 전산학과 그 공부자료
tags: [CompSci, CSE, Study]
---

마지막 업데이트 2024. 6. 9.

# 들어가며

전산학(Computing)에 관한 전반적인 내용을 그 분야의 질문을 통해 훑어보고, 어떻게 공부하면 좋을지, 어떠한 내용을 필수적으로 공부하면 좋을지에 대해 알아보고자 합니다.
전산학(컴퓨터공학과 컴퓨터과학)에 관한 관심이 높아지면서, 이를 어떻게 공부하면 좋을지에 대한 질문을 많이 받고는 합니다.
인터넷에는 이와 관련된 많은 자료가 올라와 있습니다. 이러한 자료 중에서 어떠한 자료가 나에게 맞는가? 어떠한 자료를 먼저 보는 것이 좋을까? 에 대한 고민도 함께 하게 됩니다.
이러한 질문에 하나의 문장으로 된 명쾌한 답을 내리기는 어려울 듯 합니다. 빠르게 발전되는 학문이다보니, 유행하는 주제와 방법론이 빠르게 바뀌고 있습니다. 예를 들어, 생성 모델의 경우 생성하는 방법이 VAE(Variational AutoEncoder), GAN(Generative Adversarial Network)를 거쳐 현재는 diffusion model에 이르기까지 이러한 변화는 10년안에 변화하였습니다. 그렇지만 이러한 방법론이 근본적으로 해결하고자 하는 질문은 거의 비슷하게 흘러가고 있습니다. 그래서 각 분야를 질문을 통해 훑어보고, 이러한 질문에 작성되는 시점에서 참고할 수 있는 문헌이나 공개된 강의를 통해 알아보고자 합니다.

옛날에도 새로 생긴 학문인 Computing을 어떻게 가르칠지에 대한 고민이 있어왔습니다. Denning report라 불리우는 레포트(참고문헌 1)의 경우 이러한 과거의 고민을 엿볼 수 있습니다. "전산학 분야는 과학일까요 공학일까요?" "전산학 가르칠 때 프로그래밍이 전부일까요?" 등등 다양한 질문이 있어왔습니다. 이를 해결하기 위해 테스크포스를 만들어 하나의 가이드라인을 만들었습니다. 이 글을 중심으로 전산학을 어떻게 공부하면 좋을지에 대해 알아보고자 합니다.

# 전산학이란?

전산학이란 무엇일까요? 전반적인 분야를 훑어보기 전에 어떠한 분야를 다루는 학문인지를 살펴보면 좋겠습니다. 

![Edsger W. Dijkstra](/assets/images/240502_Dijkstra_CS.jpg)
[사진 출처: ACM](https://x.com/TheOfficialACM/status/1656571115383160835)

전산학을 공부하다보면 많이 마주하게될 선생님이 Dijkstra 선생님입니다. 이 분이 말씀하시기를 "컴퓨터과학은 '천문학에서 망원경에 대한 학문'인 만큼 컴퓨터에 관한 학문이 아니다."입니다. 천문학은 우주에 있는 천체에 관한 학문이지, 그것을 바라보는 망원경에 대한 학문은 아닙니다. 이와 마찬가지로 컴퓨터과학은 컴퓨터에 대한 학문은 아니라는 것이지요. 그렇다면 컴퓨터를 포함한 전산학은 어떠한 내용을 담고 있을까요?

> 전산학 분야는 정보, 이론, 분석, 설계, 효율성, 구현 및 응용을 연구하고 변환하는 알고리듬 프로세스에 대한 체계적인 연구이다. 모든 전산학에 있어서 가장 기본이 되는 물음은 "어떻게 (효과적으로) 자동화 할 수 있는가?" 이다.
>> The discipline of computing is the systematic study of algorithmic processes that describe and transform information, their theory, analysis, design, efficiency, implementation, and application. The fundamental question underlying all of computing is "What can be (efficiently) automated?" - Denning report

짧게 이야기를 하면 전산학의 분야에 대한 기본적인 물음은 "효과적인 자동화"입니다. 컴퓨터를 언제 사용하는지에 대해 생각을 해본다면, *현실에 어떠한 문제*가 있고, 이러한 *문제를 보다 편하게 해결*하기 위해 컴퓨터를 활용하고 있습니다. 여기서 컴퓨터는 문제를 해결하는 다양한 수단 중 하나입니다. 이러한 방법을 사람이 -시간과 비용이 많이 들긴 하지만- 직접 수행할 수 있습니다. 또한, 똑같은 문제를 해결하더라도 보다 효과적으로 일을 하는 방법도 생각해 볼 수 있을 겁니다. 이렇듯, 전산학은 컴퓨터 그 자체가 아닌 문제를 해결하는 방식으로써 바라보고자 합니다.

<!--- CS and CE --->
전산학, 컴퓨터과학 (Computer Science), 컴퓨터공학 (Computer Engineering) 등 다양한 이름으로 우리의 분야는 불리우고 있습니다. 보통은 CSE, Computer Science and Engineering가 컴퓨터공학과로 불리우게 되더라고요. 어떤 학교는 CS를 강조하기 위해 컴퓨터학과나 컴퓨터과학과로 불리우기도 하며 (연세대 컴퓨터과학과, 고려대 컴퓨터학과), 어떤 대학에서는 전자과에도 이러한 부분이 붙은 흔적이 있습니다. (MIT EECS or 서울대 ECE) 이 글에서는 Computing을 공부하는 것에 대해 논하고자 하며, 전산학이라고 지칭하겠습니다. 

## 전산학은 어떤 학문 분야인가?

<!---
Denning report에서 흥미로웠던 부분은 전산학이 가지는 특성은 수학, 과학, 공학을 모두 아울러야 한다는 부분이였습니다. 전산학이 생기기 이전에는 수학, 과학, 공학 각자의 영역에서의 교육 및 연구 방법론이 발달하였습니다. 그렇지만 새로이 등장한 전산학은 어떻까요? 수학, 과학, 공학 각 분야와 동일하게 가르치면 될까요? 글에서는 세 가지 패러다임을 통해 전산학을 가르쳐야 한다고 주장합니다. 이론은 (theory) 수리과학에 그 기초를, 추상화는 (abstraction) 자연과학에 그 기초를, 설계는 (design) 공학에 그 기초를 두고 있습니다.
--->

앞서 전산학이 가지는 목표는 문제를 효과적으로 해결하는 분야임을 알았습니다. 그렇다면 이러한 전산학이라는 학문을 기존의 수학, 자연과학, 공학 등의 카테고리로 분류할 수 있을까요? 현재 국내외의 많은 대학에서는 편의상 공과대학에 소속되어 있으나, 간혹 정보대학 등으로 분리된 경우도 있습니다. 이러한 부분을 넘어서 전산학을 가르치기 위해서는 어떠한 방법이 필요할까요? 기존의 다른 공학분야처럼 가르치면 되는 것일까요? Denning report로 돌아가보면, 작성된 시점에 전산학에 대한 관심이 커지면서 학과가 생겨나고, 이에 대한 학생들의 관심도 커져갔던 시점으로 파악됩니다. 이러면서 전산학에 대해 어떻게 가르치면 좋을지, 기존의 학문 분야에 비교하여서 커리큘럼을 구성하고자 하였습니다. 여기서는 비슷한 분야인 수학, 자연과학, 공학의 카테고리를 우선 각자의 교육 목표를 정의하고, 전산학에서는 이러한 세 분야가 모두 필요하다고 주장하고 있습니다.

| 패러다임 | 목표 |
| --- | --- |
| 이론 (theory) | 1) 배우고자 하는 대상을 정의하고, 2) 이들 사이의 가능한 관계를 가정하여, 3) 이러한 관계가 참인지를 증명함으로써, 4) 이러한 결과를 해석한다. |
| 추상화 (abstraction) | 1) 가설을 세우고 2) 모델을 구성하고 이에 대한 예측을 하여, 3) 실험을 설계하고 데이터를 모아 4) 이러한 결과를 분석한다. |
| 설계 (design) | 1) 요구사항을 (requirements) 명시하고 2) 요구되는 사양을 (specification) 명시하고 3) 시스템을 디자인, 구현 하여 4) 이러한 시스템을 테스트한다. |

각 패러다임의 경우 이론은 수학분야에, 추상화는 자연과학 분야에, 설계는 공학에서 문제를 해결하는 방법으로 분석하고 있습니다. 전산학의 경우 "문제를 효과적으로 해결"하기 위하여 세 패러다임이 교차하는 지점에 위치하고 있습니다. 때로는 수학의 엄밀한 이론을, 문제를 해결하기 위하여 자연과학의 추상화를, 실제 문제를 제한된 사양 내에서 해결하기 위한 공학적 설계 패러다임을 요구할 수 있습니다. Denning report의 경우 이러한 세 패러다임 모두를 고려하면서 커리큘럼을 설계하고, 학습을 수행하는 것이 적절하다고 주장하고 있습니다.
<!--- 전반적인 전산학 커리큘럼이나 공부를 수행할 때 이러한 부분에 유념하면서 공부를 한다면 보다 튼튼한 기초를 얻을 수 있습니다. --->

## 프로그래밍?

프로그래밍은 전산학 세부분야를 공부, 적용하는데 중요한 부분으로, 최소한의 역량을 달성하여야 합니다. 그렇지만, 프로그래밍이 전산학의 전부는 아닙니다. 예를 들어, 컴퓨터 시스템 구조의 디자인, 운영체제의 디자인 그리고 모델의 증명의 경우 직접적으로 프로그래밍은 아닙니다.
앞서 논의한 세 패러다임 중에서 과학과 공학의 경우를 생각해보겠습니다. 이들 전공에서는 보통 "실험 교과목"이 필수로 들어가 있습니다. 예를 들어, 일반화학실험의 경우 화학과에서 수행되는 실험을 직접 간단히 진행해보게 됩니다. 이를 통해 일반화학에서 배운 내용을 직접 실험을 통해 증명을 해보고, 그 과정에 필요한 실험 기구의 사용 및 실험 방법론을 습득하게 될 것입니다.
프로그래밍의 경우 이러한 실습에 대응된다고 할 수 있습니다. 기초적인 지식을 다양한 경로를 통해 알더라도, 이를 직접 실행에 옮겨보는 것이 보다 도움이 될 것입니다. 
흔히 말하는 "과제를 통해 배운다.", "코드를 복사 붙여넣기 하기 보다는 따라 써보는게 도움이 될 것이다." 라는게 이러한 맥락에서 나온 것일겁니다.
Denning report의 경우 필수 교과목의 경우 이러한 기본적인 프로그래밍 도구를 가르치는 것을 권고하고 있습니다.
이러한 이유로, 기초적인 과정을 습득하는데 있어서 이와 관련된 내용을 직접 실행해보기 위한 프로그래밍 지식이 필요합니다.

## 전산학의 세부 분야 - Denning report

Denning report의 경우 전산학의 세부 분야를 아래 9가지로 나누고 있습니다.

1. 알고리듬과 데이터 구조
2. 프로그래밍 언어
3. 컴퓨터 구조
4. 수치 및 기호 계산
5. 운영체제
6. 소프트웨어 방법론과 그 공학
7. 데이터 베이스와 데이터 검색 시스템
8. 인공지능과 로봇학
9. 인간-컴퓨터 상호작용

이러한 분야 전반을 둘러보기 위해서 필수적인 개념은 아래와 같이 구성할 수 있습니다.

- 기초 알고리듬 개념
- 컴퓨터 구조 (폰 노이만 구조)
- 수학 프로그래밍
- 데이터 구조와 추상화
- 계산의 한계
- 운영 체제와 그 보안
- 분산 컴퓨팅과 네트워크
- 인공지능 모델
- 파일과 데이터베이스 시스템
- 병렬 컴퓨팅
- 인터페이스

## 기타 관련 자료

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

# 컴퓨터 시스템

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

# 기타 등등

Q. 

# 참고문헌

본 블로그 글은 아래 글을 참고하여 작성되었습니다.

1. P. J. Denning et al. "*[Computing as a Discipline](https://ieeexplore.ieee.org/document/19833/)*", Computer, Volume 22. Issue 2, 1989.
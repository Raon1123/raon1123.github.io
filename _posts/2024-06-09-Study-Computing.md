---
title: 전산학 공부자료
tags: [CompSci, CSE, Study]
---

마지막 업데이트 2024. 6. 9.

# 들어가며

[이전 글]({% post_url 2024-06-09-What-Computing %})을 통해서 전산학에 대한 전반적인 문제를 알아보았습니다. 이번 글에서는 각 세부분야별 해결하고자 하는 물음을 알아보고, 이와 관련된 자료를 모아보고자 합니다. 

아마도 전산학을 전공한다는 가정 아래에서 가장 필요한 것을 나열해 본다면 1) 알고리즘과 데이터구조 2) 컴퓨터 구조 3) 운영체제 이 셋을 가장 먼저 꼽을 것이고 나머지 각 분야를 둘러보겠습니다.

아마도 긁어모은 것이다보니, 과한 책들이 많습니다. 핵심이 되는 교재나 자료의 경우 **핵심** 표시를 해두었습니다.

# 컴퓨터공학 이론

## 교재

#### 알고리즘

- **핵심** Cormen, T.H., Leiserson, C.D., Rivest, R.L. & Stein, C. (2009). _Introduction to Algorithms_. MIT Press (3rd ed.). ISBN 978-0-262-53305-8  - CLRS로 알려진 책으로 학부 초창기 부터 대학원까지 거의 대부분의 과정이 담겨져 있습니다. 필요한 부분을 골라서 읽는 것을 강하게 권합니다. 
- Sedgewick, R., Wayne, K. (2011). _Algorithms_. Addison-Wesley. ISBN 978-0-321-57351-3. - Princeton에서 사용되는 교재로, 유튜브나 저자의 사이트에서 볼 수 있습니다. 또한 강의도 올라와 있습니다.
- Kleinberg, J. & Tardos, É. (2006). _Algorithm design_. Addison-Wesley. ISBN 978-0-321-29535-4.  
- S. Dasgupta, C. Papadimitriou, and U. Vazirani. _Algorithms_. McGraw-Hill Higher Education. 2006
- Knuth, D.A. (2011). _The Art of Computer Programming_. Addison-Wesley. ISBN 978-0-321-75104-1. - 고전(?)이라고 불릴만한 책입니다 TAOCP라고 불리우는 책으로 크누스 교수님께서 집필하고 있는 시리즈입니다.


<details>

<summary> Approximation and randomized algorithms </summary>

- Vijay V. Vazirani. Approximation Algorithms, Springer, Second edition, 2003.
- _Michael Mitzenmacher and Eli Upfal. Probability and Computing: Randomized Algorithms and Probabilistic Analysis., Cambridge University Press, 2nd edition._
- _David P. Williamson and David B. Shmoys. The Design of Approximation Algorithms, Cambridge University Press, 2011_
- [Randomized Algorithms](http://books.google.com/books/about/Randomized_Algorithms.html?id=QKVY4mDivBEC) by Motwani and Raghavan,
- [The Probabilistic Method](http://books.google.com/books/about/The_Probabilistic_Method.html?id=q3lUjheWiMoC) by Alon and Spencer.

</details>


<details>

  <summary> Computational geometry </summary>

  - Mark Berg, Otfried Cheong, Marc Kreveld, and Mark Overmars. "Computational Geometry: Algorithms and Applications", Springer 2008. [Link](https://link.springer.com/book/10.1007/978-3-540-77974-2)
  -  J. Matousek, [_Lectures on Discrete Geometry_](https://link.springer.com/book/10.1007/978-1-4613-0039-7), Springer, 2002
  -   F. P. Preparata and M. I. Shamos, _[Computational Geometry: An Introduction](https://link.springer.com/book/10.1007/978-1-4612-1098-6)_, Springer, 1985
  -  J. Goodman, J. O'Rourke, and C. D. Toth (eds.), [_Handbook of Discrete and Computational Geometry_](http://www.csun.edu/~ctoth/Handbook/HDCG3.html) (3rd ed.), CRC Press, 2017
  
</details>


#### 계산이론

- **핵심** Michael Sipser, "[_Introduction to the Theory of Computation_](https://math.mit.edu/~sipser/book.html)" 
- Moore, Cristopher, and Stephan Mertens. _The Nature of Computation_. Oxford University Press, 2011. ISBN: 9780199233212. - 꽤 두꺼운 책입니다만, 천천히 읽어볼만한 책이라고 생각합니다.
- Arora, Sanjeev, and Boaz Barak. _Computational Complexity: A Modern Approach_. Cambridge University Press, 2009.
- Christos H. Papadimitriou: Computational Complexity. Addison Wesley 1994.
- Oded Goldreich. Computational Complexity, Cambridge University press.
  
- Robert I. Soare: Recursively Enumerable Sets and Degrees. Springer-Verlag, 1987.
- Uwe Schoening: Gems of Theoretical Computer Science.
- M R Garey and D S Johnson. Computers and Intractability: A Guide to the Theory of NP-Completeness, Freeman, 1979.



#### 형식언어와 오토마타이론

- Linz, An Introduction to Formal Languages and Automata. 
- Hopcroft, Motwani and Ullman, Introduction to Automata Theory, Languages, and Computation, 3rd ed. 
- Lewis and Papadimitriou, Elements of the Theory of Computation, 2nd ed. 
- Du and Ko, Problem Solving in Automata, Languages, and Complexity.

계산 가능성 이론에 관심이 있다면, [Recursion theory text, alternative to Soare](https://math.stackexchange.com/questions/29418/recursion-theory-text-alternative-to-soare)을 참고해도 좋겠습니다.

## 관련 강의

#### CMU: Great Ideas in TCS

- [강의 홈페이지](https://www.anilada.com/courses/15251f19/www/index.html)
- [유튜브 재생목록](https://youtube.com/playlist?list=PLm3J0oaFux3aafQm568blS9blxtA_EWQv)

CMU에서 컴퓨터공학 이론을 입문하는 입장에서 서술된 교과목입니다.
보통의 대학에서는 이산수학이라는 교과목하고 상당부분 겹치지만, 계산가능성, 튜링머신 등 계산이론의 기초적인 부분도 함께 다루고 있습니다.
이에 더 나아가서 More Great Ideas in TCS라는 교과목도 CMU에 개설이 되어 있습니다.

#### MIT: Introduction to Algorithms

- [강의 사이트](https://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-006-introduction-to-algorithms-fall-2011/)
- [유튜브 재생목록](https://youtube.com/playlist?list=PLUl4u3cNGP61Oq3tWYp6V_F-5jb5L2iHb)

알고리즘을 공부하기위한 대학 교재로 자주 사용이 되는 책은 [CLRS](https://ko.wikipedia.org/wiki/Introduction_to_Algorithms)이라 불리우는 책이다.
한 권의 책 안에 알고리즘에 대한 전반적인 내용이 담겨져 있는 책으로 곁에 두고 읽기 좋은 책이다.
단점은, 전반적인 내용의 범위가 학부 수준부터 대학원 수준까지 다양하게 활요이 되는 터라 초심자는 어느정도 챕터를 생략하는 것이 좋다.
특이하게 MIT에서는 데이터구조 교과목이 별도로 개설이 되지 않고 바로 Intro to Algorithm으로 진입을 한다.

#### CMU: Complexity Theory

- [학부 유튜브 재생목록](https://youtube.com/playlist?list=PLm3J0oaFux3YL5vLXpzOyJiLtqLp6dCW2)
- [대학원 유튜브 재생목록](https://youtube.com/playlist?list=PLm3J0oaFux3b8Gg1DdaJOzYNsaXYLAOKH)

계산 이론의 경우 대한민국에서는 전공하시는 교수님이 드문 편이십니다.

#### CMU: CS Theory Toolkit

- [유튜브 재생목록](https://youtube.com/playlist?list=PLm3J0oaFux3ZYpFLwwrlv_EHH9wtH6pnX)

CS Theory Toolkit 교과목은 Great Ideas in TCS와 달리 컴퓨터공학과 대학원 학생을 대상으로 하는 강의입니다. 기존에 알고 있었던 내용에 더불어서 어떻게 컴퓨터공학 이론을 연구하고 읽을지에 대해 배우는 교과목입니다. 대학원 교과목이다 보니, 좀 더 들어가고 싶으신 분이 아니시라면 반드시 공부할 필요는 없겠습니다.

# 프로그래밍 언어

[Why Study Programming Languages?](https://www.andrew.cmu.edu/course/15-312/phil.html)

## 교재

## 관련 강의

### 서울대학교: 프로그래밍 언어

- [강의 사이트](http://ropas.snu.ac.kr/~kwang/4190.310/24/)

# 컴퓨터 구조

## 교재

- [Computer Organization and Design](https://www.elsevier.com/books-and-journals/book-companion/9780128201091)
- [Computer Architecture, Sixth Edition: A Quantitative Approach](https://dl.acm.org/doi/book/10.5555/3207796)
- 

## 관련 강의

### CMU: Introduction to Computer Systems

- [강의 사이트](https://www.andrew.cmu.edu/course/15-312/phil.html)
- [교재: Computer Systems: A Programmer's Perspective](https://csapp.cs.cmu.edu/)

컴퓨터공학의 시스템 분야에서 기초가 되는 수업입니다. 아마도 한국에서는 "시스템프로그래밍" 이라는 교과목 등으로 개설이 되고 있습니다. 

# 운영체제

## 교재

- [Operating System Concepts](https://os-book.com): a.k.a. 공룡책으로 운영체제 하면 가장 먼저 떠오르는 책입니다.
- [Operating Systems: Three Easy Pieces](https://pages.cs.wisc.edu/~remzi/OSTEP/): OSTEP으로 불리우며, 무료로 공개되어 있습니다. (티셔츠와 같은 굿즈도 팝니다...)
- [PintOS](https://web.stanford.edu/class/cs140/projects/pintos/pintos.html): 운영체제를 직접 만들어 보는 과제 입니다. 개인적으로 이 과제를 운영체제 공부 측면을 넘어서서, 프로젝트를 수행하는 방법을 배울 수 있었습니다. 예를 들자면, 제가 코드를 처음부터 끝까지 짜는 경우는 없습니다. 기존의 라이브러리 등을 활용하는데, 한정된 자원과 라이브러리 속에서 어떻게 효과적인 코드를 짜면 좋을지에 대해 알아볼 수 있는 기회였습니다.

## 관련 강의

# 소프트웨어 방법론과 그 공학

## 교재

## 관련 강의

# 데이터 베이스

## 교재

- Ramakrishan and Gehrke. Database Management Systems, McGraw-Hill, 2002 (3rd ed).
- Garcia-Molina, Ullman, Widom. Database Systems: The Complete Book. Prentice Hall, 2002 (or 2008, 2nd ed).

## 관련 강의

### CMU: Database

- [유튜브 재생목록](https://youtube.com/playlist?list=PLSE8ODhjZXjbohkNBWQs_otTrBTrjyohi)
- [강의 사이트](https://15445.courses.cs.cmu.edu/fall2019/)

# 인공지능과 로봇학

## 교재

## 관련 강의

# 인간-컴퓨터 상호작용

이 부분은 제가 직접 수업을 듣거나, 공부를 하지는 않아 서술하기 어렵습니다...
얼핏 들은 이야기를 보면, 직접적으로 책을 보면서 공부하기 보다는 과제나 프로젝트를 통해 어떠한 문제가 있고 직접 해결하는 과정을 통해 얻는 지식이 더 많아보이는 분야였습니다.

# 기타

아마도 위의 분류에 딱 맞는 것이 없어서 고민한 분야들입니다.

## 컴퓨터 그래픽스

- [유튜브 재생목록](https://www.youtube.com/playlist?list=PL9_jI1bdZmz2emSh0UQ5iOdT2xRHFHL7E)
- [강의 사이트](http://15462.courses.cs.cmu.edu/spring2024/)

## 컴퓨터 네트워크

전자과에도 동일한 명칭의 교과목이 열리지만, 순서가 반대라고 생각하시면 됩니다. 컴퓨터공학과는 사람이 사용하는 응용계층부터, 전자과는 물리계층부터 시작합니다. Top-down이냐 bottom-up이나 차이긴 합니다.

- [Computer Networking: A Top-Down Approach](https://gaia.cs.umass.edu/kurose_ross/online_lectures.htm)
- Richard Stevens, TCP/IP Illustrated, Volume 1: The Protocols, Addison-Wesley, ISBN: 0-201-63346-9, 1994.  
- Douglas E. Comer, Computer Networks and Internets, Prentice Hall, ISBN 0-13-599010-6, 1997.  
- D. Comer, Internetworking with TCP/IP, Vol I: Principles, Protocols, and Architecture, Second edition, Prentice-Hall, Englewood Cliffs, NJ, ISBN 0-13-468505-9 1991.  
- D. Comer and D. Stevens, Internetworking with TCP/IP, Vol II: Design, Implementation, and Internals,Prentice-Hall, Englewood Cliffs, NJ, ISBN 0-13-472242-6 1991.  
- William Stallings, Data and Computer Communications, Fifth Edition, Prentice Hall, ISBN 0-02-415425-3, 1997.  
- William Stallings, SNMP, SNMPv2, SNMPv3 and RMON 1 and 2, Third Edition, Addison-Wesley, 1999.

## 잡다한 내용들

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

# 맺으며

---
title: 전산학 공부자료
tags: [CompSci, CSE, Study]
---

마지막 업데이트 2024. 6. 10.

현재 계속 내용을 추가하는 중입니다.
{:.warning}

# 들어가며

[이전 글]({% post_url 2024-06-09-What-Computing %})을 통해서 전산학에 대한 전반적인 문제를 알아보았습니다. 이번 글에서는 각 세부분야별 해결하고자 하는 물음을 알아보고, 이와 관련된 자료를 모아보고자 합니다. 저는 컴퓨터공학을 전공하였지만, 세부 전공으로는 인공지능 특히 기계학습 분야를 전공하고 있습니다. 그렇다보니 다른 분야의 경우 서술의 한계점이 있을 수 있으니 너른 양해와, 부족한 부분이 있다면 메일이나 하단의 issue에 올려주시면 반영하도록 하겠습니다. 자료의 경우 평소에 관심을 두었던 책이나, 추천받은 책, 공개된 강의 계획서 등을 참고하여 작성되었습니다. 많은 자료가 나열되어 있지만 *모든 자료를 다 읽으실 필요는 없습니다* 핵심이 되는 교재나 자료의 경우 **핵심** 표시를 해두었습니다. 또한, 보다 살펴보고 싶으신 분들을 위하여 아코디언 ▶을 누르시면 보다 상세한 내용이 있으니 읽으실 때 참고 부탁드립니다.

# 알고리듬과 데이터구조

이론 컴퓨터 과학(TCS, Theoretical Computer Science)는 추상적인 객체를 다루고 있으며, 계산에 대한 수학적인 기반을 제공합니다. 엄밀한 기반을 제공하는 것에 그 목적을 두고 있어, 전산학과 수학이 만나는 지점에 있습니다. 이 꼭지에서는 아래 아코디언에서 나열된 모든 것이 아닌 **알고리듬과 데이터 구조**를 중심으로 살펴보도록 하겠습니다.

<details markdown="1">
<summary>TCS 분야에 대한 소개</summary>

> 이론 컴퓨터과학은 다음과 같은 다양한 주제를 다루고 있습니다: 알고리듬, 데이터구조, 계산 복잡도, 병렬과 분산 계산, 확률적 계산, 양자 계산, 오토마타 이론, 정보이론, 암호학, 프로그램 의미론과 증명, 기계 학습, 계산 생물학, 계산 경제학, 계산 기하학 그리고 계산 정수론과 대수. 이 분야의 작업은 때로는 수학적인 기술과 엄밀함을 강조하는 것으로 구별되곤 합니다.
>> TCS covers a wide variety of topics including algorithms, data structures, computational complexity, parallel and distributed computation, probabilistic computation, quantum computation, automata theory, information theory, cryptography, program semantics and verification, machine learning, computational biology, computational economics, computational geometry, and computational number theory and algebra. Work in this field is often distinguished by its emphasis on mathematical technique and rigor.
>> - From SIGACT, ACM Special Interest Group on Algorithms and Computation Theory [Source](https://www.sigact.org/)

</details>

## 주요 질문

주요 질문은 거의 Denning report에서 가져왔습니다.

- 주어진 문제에 대해서 가장 최선의 알고리듬(해결방법)은 무엇인가?
- 주어진 알고리듬에 대해서 자원(저장 공간 및 실행 시간)이 소모되는가?
- 저장 공간과 실행 시간 사이의 trade-off가 있는가?
- 어떠한 방법으로 데이터를 저장하고 접근하는 것이 가장 효과적인가?
- 최악의 경우에 대해서의 최선의 알고리듬은 무엇인가?
- 일반인 상황에서 알고리즘은 어떻게 동작하는가? (평균적으로 어느정도 시간이 소요되는가?)

## 교재

#### 알고리즘

- **핵심** Cormen, T.H., Leiserson, C.D., Rivest, R.L. & Stein, C. (2009). "Introduction to Algorithms". MIT Press (3rd ed.). - CLRS로 알려진 책으로 학부 초창기 부터 대학원까지 거의 대부분의 과정이 담겨져 있습니다. 필요한 부분을 골라서 읽는 것을 강하게 권합니다. 
- Sedgewick, R., Wayne, K. (2011). _Algorithms_. Addison-Wesley. ISBN 978-0-321-57351-3. - Princeton에서 사용되는 교재로, 유튜브나 저자의 사이트에서 볼 수 있습니다. 또한 강의도 올라와 있습니다. [Page](https://algs4.cs.princeton.edu/home/)
- Kleinberg, J. and Tardos, É. "Algorithm design". Addison-Wesley. ISBN 978-0-321-29535-4.  
- S. Dasgupta, C. Papadimitriou, and U. Vazirani. _Algorithms_. McGraw-Hill Higher Education. 2006
- Knuth, D.A. (2011). _The Art of Computer Programming_. Addison-Wesley. ISBN 978-0-321-75104-1. - 고전(?)이라고 불릴만한 책입니다 TAOCP라고 불리우는 책으로 크누스 교수님께서 집필하고 있는 시리즈입니다.


<details markdown="1">
<summary> Approximation and randomized algorithms </summary>

- Vijay V. Vazirani. Approximation Algorithms, Springer, Second edition, 2003.
- _Michael Mitzenmacher and Eli Upfal. Probability and Computing: Randomized Algorithms and Probabilistic Analysis., Cambridge University Press, 2nd edition._
- _David P. Williamson and David B. Shmoys. The Design of Approximation Algorithms, Cambridge University Press, 2011_
- [Randomized Algorithms](http://books.google.com/books/about/Randomized_Algorithms.html?id=QKVY4mDivBEC) by Motwani and Raghavan,
- [The Probabilistic Method](http://books.google.com/books/about/The_Probabilistic_Method.html?id=q3lUjheWiMoC) by Alon and Spencer.

</details>

<details markdown="1">
<summary> Computational geometry </summary>

  - Mark Berg, Otfried Cheong, Marc Kreveld, and Mark Overmars. "Computational Geometry: Algorithms and Applications", Springer 2008. [Link](https://link.springer.com/book/10.1007/978-3-540-77974-2)
  -  J. Matousek, [_Lectures on Discrete Geometry_](https://link.springer.com/book/10.1007/978-1-4613-0039-7), Springer, 2002
  -   F. P. Preparata and M. I. Shamos, _[Computational Geometry: An Introduction](https://link.springer.com/book/10.1007/978-1-4612-1098-6)_, Springer, 1985
  -  J. Goodman, J. O'Rourke, and C. D. Toth (eds.), [_Handbook of Discrete and Computational Geometry_](http://www.csun.edu/~ctoth/Handbook/HDCG3.html) (3rd ed.), CRC Press, 2017
  
</details>


#### 계산이론

- **핵심** Michael Sipser, "[_Introduction to the Theory of Computation_](https://math.mit.edu/~sipser/book.html)" 
- Moore, Cristopher, and Stephan Mertens. _The Nature of Computation_. Oxford University Press, 2011. ISBN: 9780199233212. - 꽤 두꺼운 책입니다만, 천천히 읽어볼만한 책이라고 생각합니다.
- Avi Wigderson, "Mathematics and Computation", Princeton University Press. - 아벨상, 튜링상 수상자이신 Avi 교수님이 계산 이론 분야에 대한 입문 서적입니다.
- Arora, Sanjeev, and Boaz Barak. _Computational Complexity: A Modern Approach_. Cambridge University Press, 2009.
- Christos H. Papadimitriou: Computational Complexity. Addison Wesley 1994.
- Oded Goldreich. Computational Complexity, Cambridge University press.
  
<!---
- Robert I. Soare: Recursively Enumerable Sets and Degrees. Springer-Verlag, 1987.
- Uwe Schoening: Gems of Theoretical Computer Science.
- M R Garey and D S Johnson. Computers and Intractability: A Guide to the Theory of NP-Completeness, Freeman, 1979.
--->

<details markdown="1">
<summary>계산 가능성 이론</summary>

컴퓨터의 이론적 기반에 대한 가장 첫 물음은 "무엇이 계산하는 것인가?" 라는 질문일 것입니다. 우리가 알고 있는 튜링 머신이 그러한 계산기(컴퓨터)이기는 합니다. 처치-튜링 논제(Church-Turing thesis)를 통해서 우리는 튜링머신을 통해 효과적으로 자연수 문제를 연산할 수 있다고 정의하였습니다. 그렇지만 딱히 *효과적으로*를 엄밀하게 들어갈 방법은 없으니 이게 참이라고 받아들여집니다. 혹은 이와 **동치**인 다른 방법론을 통해 들여다볼 수 있습니다.

- Nigel Cutland, "Computability: An Introduction to Recursive Function Theory" : 저는 이 책으로 공부했는데, Turing machine에서 시작하는 것이 아닌 다른 방법을 통해 계산을 정의합니다. 솔직히 Turing machine과 테이프로 시작하면 현대 컴퓨터의 동작 방식과의 약간의 괴리가 있어... Unlimited Register Machine과 기본적인 연산을 통해 정의하는 것이 저에게는 자연스러웠습니다. 물론 이는 Turing machine과 동치임을 Ch3.에서 보입니다.

계산 가능성 이론에 관심이 있다면, [Recursion theory text, alternative to Soare](https://math.stackexchange.com/questions/29418/recursion-theory-text-alternative-to-soare)을 참고해도 좋겠습니다.

</details>

## 관련 강의

#### CMU: Great Ideas in TCS

- [강의 홈페이지](https://www.anilada.com/courses/15251f19/www/index.html)
- [유튜브 재생목록](https://youtube.com/playlist?list=PLm3J0oaFux3aafQm568blS9blxtA_EWQv)

CMU의 경우 전산학이 단과대학으로 구성될 수 있을 만큼 규모가 크고, 다양한 전공이 있는 대학입니다. 이 Great Ideas in TCS의 경우 막 전공에 들어온 2학년을 대상으로 이론 컴퓨터과학을 입문하는 교과목입니다. 우리나라에서는 이렇게 구성된 교과목이 별로 없는 것으로 파악되고 있습니다만, 이산구조, 이산수학과 같은 교과목과 어느정도 겹치는 부분이 있습니다. 이론 컴퓨터과학에서 필요한 핵심적인 수학적 증명 방법과 도구들을 배우는 교과목입니다. 그렇지만 한 걸음 더 나아가 계산가능성, 튜링머신 등 계산이론의 기초적인 부분도 함께 다루고 있습니다. 이에 더 나아가서 More Great Ideas in TCS라는 교과목도 CMU에 개설이 되어 있습니다.

#### MIT: Introduction to Algorithms

- [강의 사이트](https://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-006-introduction-to-algorithms-fall-2011/)
- [유튜브 재생목록](https://youtube.com/playlist?list=PLUl4u3cNGP61Oq3tWYp6V_F-5jb5L2iHb)

알고리즘을 전공한다고 하면 보통은 [CLRS](https://ko.wikipedia.org/wiki/Introduction_to_Algorithms)를 가장 먼저 꼽게 됩니다. 알고리즘에 대한 많은 주제를 다루고 있으며, 이 중 일부를 수업에 활용을 하게 됩니다.
MIT에서는 [MIT OCW](https://ocw.mit.edu)에서 관련된 강의 자료 및 영상을 제공하고 있습니다. 아마도 간판(?)쯤 되는 교과목이 이 Introduction to Algorithm입니다. 보통의 대학에서는 데이터구조를 듣고 알고리듬을 듣는 형식이지만, MIT의 경우에는 데이터구조와 합쳐서 알고리듬 수업에서 가르치고 있습니다. 부담없이 처음 들으시는 분이더라도 따라 듣기 좋은 형태입니다.

알고리듬 수업에서는 다음과 같은 물음을 중심으로 공부를 하시면 보다 수월하게 공부를 하실 수 있으실 것입니다. "*주어진 문제에 대해서 가장 최선의 알고리듬(해결방법)은 무엇인가?*", "*어떠한 방법으로 데이터를 저장하고 접근하는 것이 가장 효과적인가?*", "*일반인 상황에서 알고리즘은 어떻게 동작하는가? (평균적으로 어느정도 시간이 소요되는가?)*". 더 나아가 남은 질문인 복잡도에 대해서도 어느정도 생각을 하면서 공부를 하시면 활용에 더 좋은 경험을 하실 수 있으실 것입니다.

<details markdown="1">
<summary> MIT Algorithm Series </summary>

MIT에서는 다양한 알고리듬 강의가 열리는데 아래와 같은 순서로 수강을 권유하고 있습니다.

1. 6.006 Introduction to Algorithms [2020](https://ocw.mit.edu/courses/6-006-introduction-to-algorithms-spring-2020/)
2. 6.046J Design and Analysis of Algorithms [2015](https://ocw.mit.edu/courses/6-046j-design-and-analysis-of-algorithms-spring-2015/)
3. 6.854J Advanced Algorithms [2008](https://ocw.mit.edu/courses/6-854j-advanced-algorithms-fall-2008/)

</details>

#### CMU: Complexity Theory

- [학부 유튜브 재생목록](https://youtube.com/playlist?list=PLm3J0oaFux3YL5vLXpzOyJiLtqLp6dCW2)
- [대학원 유튜브 재생목록](https://youtube.com/playlist?list=PLm3J0oaFux3b8Gg1DdaJOzYNsaXYLAOKH)


#### CMU: CS Theory Toolkit

- [유튜브 재생목록](https://youtube.com/playlist?list=PLm3J0oaFux3ZYpFLwwrlv_EHH9wtH6pnX)

CS Theory Toolkit 교과목은 Great Ideas in TCS와 달리 컴퓨터공학과 대학원 학생을 대상으로 하는 강의입니다. 기존에 알고 있었던 내용에 더불어서 어떻게 컴퓨터공학 이론을 연구하고 읽을지에 대해 배우는 교과목입니다. 대학원 교과목이다 보니, 좀 더 들어가고 싶으신 분이 아니시라면 반드시 공부할 필요는 없겠습니다.

## 문제 해결 전략

취업 등에 관심을 가지고 있거나, 정보올림피아드 등을 통해 Problem Solving에 관심을 가지는 경우가 있습니다. Problem solving은 주어진 문제를 주어진 제약조건 (시간, 메모리 등) 아래에서 해결하는 코드를 제출하는 방식으로 이루어 집니다. 한정된 시간 내에 이를 겨루는 대회 ([ACM-ICPC](https://icpckorea.org/), [SCPC](https://research.samsung.com/scpc), [UCPC](https://ucpc.me/)) 대학에서 열리곤 합니다. 간혹은 일부 대학에서 `문제해결전략` 이라는 교과목 등으로도 개설이 되고 있습니다. 이러한 문제를 해결하는 사이트로는 국내에서는 [BOJ: 백준 온라인 저지](https://www.acmicpc.net/)가 대표적이며 해외에서는 [leetcode](https://leetcode.com/)가 있습니다. 대회로는 [Codeforce](https://codeforces.com/)에서도 온라인으로 참가가 가능합니다.

알고리듬 공부를 포함하고 있지만 약간 다른 부분이 있다면, 알고리듬을 실제 구현하는 것 까지 완성을 하여야 합니다. 이렇게 완성된 코드가 올바르게 문제를 해결하고 주어진 제약조건을 만족하는 것 또한 필요합니다. 위의 알고리듬을 책으로 공부하면서 어떻게 적용할지에 대해 망설인다면 이 부분을 연습해보는게 좋겠습니다.

아마도 이 분야에 관심을 가지고 있으시다면 아래와 같은 사이트 및 책을 참고하시면 좋겠습니다.

1. [Solved.ac](https://solved.ac/): 문제해결전략에 입문을 하시게 된다면, 가장 먼저 이 사이트를 추천해드리고자 합니다. 다양한 문제 카테고리 별로 연습을 하는 이정표가 되어주며, 랭킹 시스템을 통해 다른 사람과 경쟁을 할 수도 있습니다. UNIST 내 동아리인 Almight에서 소개글을 읽어보시면 도움이 됩니다. [solved.ac 소개](https://almight.notion.site/Almight-Home-Korean-e5bdb0661be64a038260298f26613eaf?p=c4e17b82607f4aa682b83c0e03cf2823&pm=c)
2. 안티 라크소넨, [알고리즘 트레이닝 : 프로그래밍 대회 입문 가이드](https://ebook.insightbook.co.kr/book/85)
3. 와타노베 유타카, [프로그래밍 대회 공략을 위한 알고리즘과 자료 구조 입문](https://ebook.insightbook.co.kr/book/106)
4. 구종만, [프로그래밍 대회에서 배우는 알고리즘 문제해결전략](https://book.algospot.com/): 종만북이라 불리우는 책입니다.

# 프로그래밍 언어

[Why Study Programming Languages?](https://www.andrew.cmu.edu/course/15-312/phil.html)

한국어로는 허기홍 교수님의 [PL Wiki](https://github.com/prosyslab/pl-wiki)에 관련된 개념들이 잘 정리되어 있습니다.

## 주요 질문

- 프로그래밍 언어를 통해 표현되는 가상 머신의 (virtual machine) 가능한 구조는 무엇인가? 예를 들어, 데이터의 타입, 연산, 제어 구조, 새로운 타입과 연산이 제안되는 방식은 무엇일까?
- 이러한 추상적인 내용을 컴퓨터에서 어떻게 구현할 것인가?
- 어떠한 표기법(통사론, syntax)이 컴퓨터가 실제로 동작하는데 효과적이고 효율적으로 사용될 수 있는가?

## 교재

- Bruce A. Tate, "Seven Languages in Seven Weeks: A Pragmatic Guide to Learning Programming Languages", Pragmatic Bookshelf (2010). - 국문 번역으로는 [브루스 테이트의 세븐 랭귀지: 프로그래머라면 알아야 할 미래를 품은 7가지 언어](https://www.hanbit.co.kr/store/books/look.php?p_code=B4078611297)가 있습니다. 

#### 형식언어와 오토마타이론

- Linz, An Introduction to Formal Languages and Automata. 
- Hopcroft, Motwani and Ullman, Introduction to Automata Theory, Languages, and Computation, 3rd ed. 
- Lewis and Papadimitriou, Elements of the Theory of Computation, 2nd ed. 
- Du and Ko, Problem Solving in Automata, Languages, and Complexity.

## 관련 강의

#### 서울대학교: 프로그래밍 언어

- [강의 사이트](http://ropas.snu.ac.kr/~kwang/4190.310/24/)

# 컴퓨터 구조

## 주요 질문

- 컴퓨터의 구성 요소인 프로세서, 메모리, 통신을 어떻게 효과적으로 구현할 것인가?
- 거대한 계산 시스템과 어떻게 설계하고 제어할 것인가? 그리고 이러한 시스템이 오류와 실패에도 불구하고 의도한데로 잘 동작한다는 것을 입증할 것인가?
- 어떠한 형태의 구조가 효과적으로 동시에 많은 프로세싱 요소를 포함하여 동시에 연산할 수 있을까?
- 어떻게 성능을 측정할 것인가?

## 교재

- [Computer Organization and Design](https://www.elsevier.com/books-and-journals/book-companion/9780128201091)
- [Computer Architecture, Sixth Edition: A Quantitative Approach](https://dl.acm.org/doi/book/10.5555/3207796)
- 

## 관련 강의

#### CMU: Introduction to Computer Systems

- [강의 사이트](https://www.andrew.cmu.edu/course/15-312/phil.html)
- [교재: Computer Systems: A Programmer's Perspective](https://csapp.cs.cmu.edu/)

컴퓨터공학의 시스템 분야에서 기초가 되는 수업입니다. 아마도 한국에서는 "시스템프로그래밍" 이라는 교과목 등으로 개설이 되고 있습니다. 

## 컴퓨터 네트워크

전자과에도 동일한 명칭의 교과목이 열리지만, 순서가 반대라고 생각하시면 됩니다. 컴퓨터공학과는 사람이 사용하는 응용계층부터, 전자과는 물리계층부터 시작합니다. Top-down이냐 bottom-up이나 차이긴 합니다.

- [Computer Networking: A Top-Down Approach](https://gaia.cs.umass.edu/kurose_ross/online_lectures.htm)
- Richard Stevens, TCP/IP Illustrated, Volume 1: The Protocols, Addison-Wesley, ISBN: 0-201-63346-9, 1994.  
- Douglas E. Comer, Computer Networks and Internets, Prentice Hall, ISBN 0-13-599010-6, 1997.  
- D. Comer, Internetworking with TCP/IP, Vol I: Principles, Protocols, and Architecture, Second edition, Prentice-Hall, Englewood Cliffs, NJ, ISBN 0-13-468505-9 1991.  
- D. Comer and D. Stevens, Internetworking with TCP/IP, Vol II: Design, Implementation, and Internals,Prentice-Hall, Englewood Cliffs, NJ, ISBN 0-13-472242-6 1991.  
- William Stallings, Data and Computer Communications, Fifth Edition, Prentice Hall, ISBN 0-02-415425-3, 1997.  
- William Stallings, SNMP, SNMPv2, SNMPv3 and RMON 1 and 2, Third Edition, Addison-Wesley, 1999.

# 운영체제

운영체제란 무엇일까요? 보통은 Windows, MacOS, Android와 같은 운영체제는 들어 보셨을 것입니다. 그렇다면 이것은 무엇을 하고 있는 것일까요?
운영체제의 역할은 컴퓨터 하드웨어와 그것을 활용하는 프로그램 사이의 운영을 조율합니다. 
몇 가지 예시를 통해 이해를 시도해보겠습니다. 먼저, 여러 프로그램이 동시에 돌아갈 때, 이에 대한 자원은 어떻게 할당하는 것이 좋을까요? 일단은 단순히 컴퓨터는 하나의 프로그램(프로세스)만을 돌릴 수 있다고 생각한다면 어떠한 문제가 발생될까요? 자원(메모리 등)을 공유해야 하는 상황이라면 어떠한 문제가 있을까요? 아마도 이 분야를 공부하게 된다면 여러 물음을 마주하게 될 것이고, 이러한 물음에 대한 여러 해결책들을 발견할 수 있을 것입니다. 구체적으로 어떠한 문제 상황에서 어떻게 해결할지를 염두에 두고 공부를 한다면 보다 효율적으로 공부할 수 있겠습니다.

중요한 교과목을 꼽으라고 한다면, 운영체제를 꼽겠습니다. 컴퓨터가 실제적으로 어떻게 동작하는지 전반적인 흐름을 살펴볼 수 있습니다. 또한, 운영체제에서 마주하는 문제는 다른 일반적인 문제에서도 적용할 수 있으며, 다시말해 일반적인 개발에서도 활용이 될 가능성이 높기 때문입니다.

## 주요 질문

- 컴퓨터 시스템의 각 레벨의 동작 중에서 볼 수 있는 객체 (visible object) 와 허용되는 동작 (permit operation)은 무엇입니까? 또 효과적인 자원의 사용을 위해 허용되는 최소한의 동작은 무엇이 있습니까?
- 하드웨어의 물리적 세부 사항이 아니라 추상적인 버전의 자원만 다루도록 인터페이스를 어떻게 구성할 수 있을까요? *주: 단순한 상황으로 물리적 메모리의 크기가 달라지면, 우리가 동작하는 프로그램도 달라져야 할까요? 가상 메모리 주소는 어떻게 물리적 메모리에 대응되고 보다 많은 주소를 가질 수 있을까요?*
- 작업 스케쥴링, 메모리 관리, 통신, 소프트웨어 자원에 대한 접근, 동시에 수행되는 작업 사이의 통신, 신뢰성 및 보안을 위한 효과적인 제어 방법은 무엇일까요?
- 소수의 구성 규칙을 반복적으로 적용하여 시스템의 기능을 확장할 수 있는 원리는 무엇일까요?
- 네트워크 프로토콜, 호스트의 위치, 대역폭 및 자원 이름의 세부 사항이 보이지 않는 상태에서 통신 네트워크에 의해 연결된 많은 기기들이 어떻게 큰 연산에 참여할 수 있도록 분산시킬 수 있을까요?

## 교재

- [Operating System Concepts](https://os-book.com): a.k.a. 공룡책으로 운영체제 하면 가장 먼저 떠오르는 책입니다.
- [Operating Systems: Three Easy Pieces](https://pages.cs.wisc.edu/~remzi/OSTEP/): OSTEP으로 불리우며, 무료로 공개되어 있습니다. (티셔츠와 같은 굿즈도 팝니다...)
- [PintOS](https://web.stanford.edu/class/cs140/projects/pintos/pintos.html): 운영체제를 직접 만들어 보는 과제 입니다. 개인적으로 이 과제를 운영체제 공부 측면을 넘어서서, 프로젝트를 수행하는 방법을 배울 수 있었습니다. 예를 들자면, 제가 코드를 처음부터 끝까지 짜는 경우는 없습니다. 기존의 라이브러리 등을 활용하는데, 한정된 자원과 라이브러리 속에서 어떻게 효과적인 코드를 짜면 좋을지에 대해 알아볼 수 있는 기회였습니다.

## 관련 강의

# 소프트웨어 방법론과 그 공학

## 주요 질문

## 교재

## 관련 강의

# 데이터 베이스

## 주요 질문

## 교재

- Ramakrishan and Gehrke. Database Management Systems, McGraw-Hill, 2002 (3rd ed).
- Garcia-Molina, Ullman, Widom. Database Systems: The Complete Book. Prentice Hall, 2002 (or 2008, 2nd ed).

## 관련 강의

#### CMU: Database

- [유튜브 재생목록](https://youtube.com/playlist?list=PLSE8ODhjZXjbohkNBWQs_otTrBTrjyohi)
- [강의 사이트](https://15445.courses.cs.cmu.edu/fall2019/)

# 인공지능과 로봇학

## 주요 질문

## 교재

## 관련 강의

# 인간-컴퓨터 상호작용

이 부분은 제가 직접 수업을 듣거나, 공부를 하지는 않아 서술하기 어렵습니다...
얼핏 들은 이야기를 보면, 직접적으로 책을 보면서 공부하기 보다는 과제나 프로젝트를 통해 어떠한 문제가 있고 직접 해결하는 과정을 통해 얻는 지식이 더 많아보이는 분야였습니다.

## 주요 질문

- 어떻게 효과적으로 현실의 객체를 표현하고, 우리가 바라보는 것을 생성할 수 있을까?
- 어떻게 효과적으로 인간으로부터 입력을 받고 결과물을 나타낼 것인가?
- 어떻게 잘못 인지하는 경우와 사람의 실수에 대한 리스크를 최소화 할 수 있는가?
- 어떻게 그래픽스 및 다른 도구가 데이터셋에 있는 정보로 표현된 물리적 현상에 대한 이해를 도울 것인가?

## 교재

## 관련 교과목

#### CMU: Computer Graphics

- [유튜브 재생목록](https://www.youtube.com/playlist?list=PL9_jI1bdZmz2emSh0UQ5iOdT2xRHFHL7E)
- [강의 사이트](http://15462.courses.cs.cmu.edu/spring2024/)

# 잡다한 내용들

위의 분류에는 맞아 떨어지지는 않는 마이너한 tip의 모음입니다.

#### Awesome

[Awesome](https://github.com/prakhar1989/awesome-courses#cs-theory)
Awesome이라는 태그를 달고 있는 시리즈 중에서 컴퓨터공학 수업을 모아둔 Github 레파지토리이다. 
일반적으로 awesome 태그가 있으면 그와 관련된 주제 중에서 여러 사람들이 좋다고 생각하는 경우 올라오게 된다.

#### MIT: Missing Semester

[유튜브 재생목록](https://youtube.com/playlist?list=PLyzOVJj3bHQuloKGG59rS43e29ro7I57J)

[강의 사이트](https://missing.csail.mit.edu/)

제목만 보면 "누락된 학기"라는 의미로 무엇을 배우는건가 싶다.
이는 컵퓨터공학과 수업에서는 다루지 않지만, 컴퓨터공학을 전공한다면 알아야 하는 내용에 대해 다룬다.
실제로 Git 사용법, Vim 사용법과 같은 각종 툴의 사용법부터 컴퓨터 보안에 대한 개략적인 소개까지 수업에서는 다루기 힘들지만, 알아두면 크게 도움이 되는 내용을 모아두고 있다.
실재로 UNIST 컴퓨터공학과 에서는 ABC Winter School이라는 이름으로 이 내용을 알려주는 튜터링이 개설되어 있다.

#### Stanford: Practical Unix

[강의 사이트](https://practicalunix.org/)

Unix 시스템에 대해서는 익숙하지 않은 사람이 대부분이다. 위의 Missing Semester와 마찬가지로, 이를 현명하게 다루기 위해 알아야 할 지식들을 모은 수업이다.

# 맺으며

만약 궁금한 사항이나, 잘못된 부분이 있다면 편히 이메일이나 [Github Issue](https://github.com/Raon1123/raon1123.github.io/issues)에 올려주세요. (`New issue` 버튼 > Title과 description 작성)시간이 나면 답을 시도해 보겠습니다.

# 참고문헌

본 블로그 글은 아래 글 혹은 웹페이지를 참고하여 작성되었습니다.

1. P. J. Denning et al. "*[Computing as a Discipline](https://ieeexplore.ieee.org/document/19833/)*", Computer, Volume 22. Issue 2, 1989.
2. [MIT OCW](https://ocw.mit.edu)
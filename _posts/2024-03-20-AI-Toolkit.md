---
title: 인공지능에 필요한 배경지식 모음
tags: [AI, Machine Learning, Study]
---

마지막 수정일: 2024. 5. 6.

---

수정 내용

- 24.05.06. : Twitter의 제이미님(`@theeluwin`) 조언을 얻어 해당 부분을 삽입하였습니다. 확률 및 통계의 중요성과 필요한 내용으로 약간의 정리를 더했습니다. [Source](https://x.com/theeluwin/status/1787151118403031114)
  
---

# 들어가며

인공지능 및 기계 학습을 공부하고자 책을 펼쳐보면, 어디서 부터 시작해야 할지 막막한 경우가 많습니다. 혹은 이미 수업 등을 통해 배운 내용이지만 시간이 흘러 까먹은 경우도 있을 것입니다.
인공지능은 빠르게 변화하고 발전하고 있습니다. 이러한 과정 속에서 앞으로 어떠한 모델이 등장하고, 이에 필요한 내용을 미리 예측하는 것은 상당히 어려운 일입니다. 그러기에 핵심이 되는-지금나온 모델의 공통된-내용을 터득한다면 새로운 내용을 배울때 보다 빠르게 흡수 할 수 있으리라 기대합니다.
이 글은 기계 학습을 포함한 인공지능을 공부하고, 활용하는데 필요한 도구들을 정리하고자 합니다. 이러한 정리된 도구를 통해 공부와 활용의 출발지점으로 삼고자 합니다.

제가 재학 중인 UNIST의 경우는 "AI Toolkit"(인공지능 대학원) 혹은 "인공지능을 위한 기초수학" (산업공학, 전기전자공학, 컴퓨터공학 전공) 등으로 이러한 내용을 수업하고 있습니다. 다른 대학도 비슷하겠지만 한 학기만에 모든 내용을 심도있게 다루기는 어렵고, 전반적인 흐름에서 부족한 부분을 스스로 매꿔야 하기에 이러한 부분에서 이 글이 도움이 되기를 바랍니다.

## 수학적 배경 지식의 필요성

인공지능을 공부하는데 있어서 "수학"이 많이 강조되고는 합니다. 그렇다면 수학이 왜 필요한 것일까요? 그리고 어떠한 수학적 내용이 보다 우리에게 적합할까요? 짧게 생각을 적어보겠습니다.

보통의 기계 학습(인공지능도 비슷합니다만)을 통해 해결하고자 하는 문제를 생각해봅시다. 적절한 데이터 신호(signal)이 있고, 우리는 이를 통해 특정한 문제를 해결하고 싶습니다. 그 문제를 해결하는 것은 *모델*이라 부르는 것일겁니다. 다르게 낮은 단계에서 생각하면 적절한 신호로 부터 우리가 원하는 특징(feature)을 뽑는게 *모델*의 목적입니다. 우리는 이러한 해결 방식을 우리가 직접 처음부터 끝까지 설계하는 것이 아닌 적절한 데이터로부터 우리가 생각한 모델이 *학습*을 하는 것이 목적입니다. 
잘 동작하는 *모델*을 만들기 위해서는 합리적인 *가설*을 세우고, 이러한 *가설*을 바탕으로 적절히 *모델*을 잘 동작하도록 최적화 하는 과정이 필요할 것입니다. 이러한 *가설*이 있음으로써 우리는 *모델*을 우리의 상황에 맞으면서 단순하게 만들고 *학습*할 수 있을 것입니다. 이러한 전반적인 과정을 이해하기 위하여 우리는 **선형 대수학**, **다변수 미적분학**을 통해 *모델*을 생각하고 분석하는 도구를 배우게 될 것입니다. 또한 적절한 *가설*을 성립하기 위하여 **확률 및 통계학**을 통해 우리의 *가설*이 맞는지 혹은, 적절한 *모델*이 이루어 지는지를 확인할 수 있을 것입니다. 이러한 모델이 *학습*하기 위하여 **최적화 이론**을 공부하게 됩니다. 설명의 편의를 위해 나누었지만, 실제로는 각 분야가 별개로 이루어 진 것은 아닙니다. 그렇지만 이러한 도구들을 안다면, 전반적인 기계 학습의 이해에 도움이 됩니다. 그러므로, 기계 학습을 잘 공부하고 활용하기 위하여 1) **선형 대수학** 2) **다변수 미적분학** 3) **확률 및 통계학** 4) **최적화 이론** 에 대해 알아보아야 합니다.

# 필요한 수학 모음

전반적으로는 아래 "*Mathematics for Machine Learning*"을 추천드립니다. 흔히 MML 책이라고 불리우는 책으로써, 기계 학습을 공부하는데 필요한 수학적 지식 전반을 다루고 있는 책입니다.
- Marc Peter Deisenroth, A. Aldo Faisal, and Cheng Soon Ong."*[Mathematics for Machine Learning](https://mml-book.github.io/)*". Cambridge University Press. 2020.

## 글 모음의 범위

인공지능을 위한 기초수학의 범위는 간단한 기초적인 내용을 이미 알고 있는 상태에서 그 다음으로 넘어가기 위한 디딤돌이 되고자 합니다. 기초적인 내용도 다루면 좋겠지만, 이러면 글 모음이 너무 늘어질거 같다는 생각이 들었습니다. 여기서 말하는 기초적인 내용은 대학교 1학년 기초필수 교과목에 해당되는 내용입니다. 예를 들어, 다변수 미적분학, 선형대수학 (추상적인 내용이 아닌)을 이미 알고 있다고 가정을 하고 나가고자 합니다. 이러한 내용을 공부한 경험이 없으시다면, 아래 관련 도서에서 **기초** 라고 쓰여진 책을 먼저 읽어보시는 것이 도움이 됩니다. *상급*의 경우 기초적인 내용은 아니지만 이후에 참고하기 좋은 서적입니다.

시간이 허락하는데로 최대한 각 분야의 내용을 매꾸어 나가고자 합니다.

---

여기서부터는 각 분야별로, 기초적인 내용을 다 알고 있을 때, 한 걸음 더 나아갈 때 참고하기 좋은 책들입니다. 이 책을 모두 읽는 것을 권하는게 아니라. 필요할 때 참고할 수 있기를 바랍니다.

## 선형 대수학

### 포스팅

1. 왜 선형모델인가?
2. 선형 대수학의 추상적 개념들 - 체(field), 벡터공간 (vector space), 기저 (basis), 선형 변환 (linear transformation)
3. 내적 공간 (inner product space) - 거리 (distance), 노름 (norm), 
4. 고유값과 고유벡터 - 고유값과 고유벡터 (eigenvalue and eigenvector), 고유값 분해 (eigenvalue decomposition)
5. 특이값 분해 (Singular Value Decomposition) 와 그 활용 - Principal Component Analysis and Least Square Problem
6. 쌍대 공간 (dual space)

### 관련도서

1. **기초** Gilbert Strang, "Introduction to Linear Algebra" - 만약 선형 대수학에 대한 내용이 처음이시거나, 완전히 까먹으셨다면 추천드립니다. 선형대수학의 기본을 다질 수 있으며, MIT OCW를 통해 Youtube에 저자분의 강의가 올라와 있습니다.
2. Stephen Boyd and Lieven Vandenberghe, "[*Introduction to Applied Linear Algebra*](https://web.stanford.edu/~boyd/vmls/)", CUP - Convex Optimization으로 유명한 Boyd 교수님의 교재입니다. 최신적인 내용과 함께 응용적인 측면에서 잘 다루고 있는 책입니다.
3. Sheldon Axler, "[Linear Algebra Done Right](https://linear.axler.net/index.html)" - Hoffman & Kunze나 Friedberg와 같은 수학적 엄밀함을 추구하는 선형대수학 고전이 있지만, 최근 들어서는 Axler의 done right 책이 그 자리를 대신하는 듯 하다. 이전의 활용 측면이 아닌 추상적으로 들어가기에는 이 책을 권합니다.
4. Lloyd N. Trefethen and David Bau, III, "Numerical Linear Algebra" - 선형대수에 대한 개념을 알았다면 이에 대한 계산을 어떻게 효과적으로 하는지에 대한 강의록입니다. 부담없이 읽기 편함
5. Peter D. Lax, "Linear Algebra: and its Applications", Wiley 2007.
6. *상급* Roger A. Horn and Charles R. Johnson, "Matrix Analysis", CUP 2012.
7. Kaare B. Petersen and Michael S. Pedersen, "[The Matrix Cookbook](https://www.math.uwaterloo.ca/~hwolkowi/matrixcookbook.pdf)" - 공부하는 책이라기 보다는 옆에 두고 참고하기 좋은 내용인 듯 합니다.
8. Zico Kotler "[Linear Algebra Review and Reference](https://www.cs.cmu.edu/afs/cs/academic/class/15859n-s20/RelatedWork/Kolter-AlebraReview.pdf)" - 이 글도 위와 같이 옆에 두기에 좋습니다.
9. David P. Woodruff "[Sketching as a Tool for Numerical Linear Algebra](https://arxiv.org/abs/1411.4357)" - 수치선형대수와 관련된 내용을 정리한 글입니다.

## 다변수 미적분학

이공계에서 가장 먼저 다루게 되는 수학이 미적분학이 아닐까 싶습니다. 관련 지식이 없다면, 미적분학을 공부하는 경험은 여러모로 도움이 될 듯합니다. 미적분학 내용의 경우, 기존의 미적분학 책을 복습하시는 것을 강하게 추천드립니다. Thomas' Calulus나 Stewart 같은 책들이 잘 구비가 되어 있어서... 참고하면서 연습문제를 풀어보시면 쉽게 늘어날 것입니다.

### 포스팅

1. 미분과 다변수, 행렬로의 확장 - gradient, 편미분
2. 연쇄 법칙 (Chain rule)
3. 자동 미분 (auto differentiation)

### 관련도서


아래 내용은 기초적인 내용보다는 좀 더 들어갈 때 도움이 되겠습니다. 

1. **기초** James Stewart et al. "Calculus (or Early Transcendentals)", Cengage. (판은 무관) - 미적분학의 경우 Thomas Calculus도 있습니다만, 공학적인 이해에는 이 책이 도움이 되었습니다. Early Transcendentals의 경우는 초월함수가 먼저 나오느냐, 챕터의 순서 차이입니다. edition은 무관하게 잡히는 데로 공부하면 됩니다.
2. Marsden, Jerrold "Vector Calculus", W. H. Freeman : 만약 미적분학을 이미 수강하셨는데 다변수 부분만 보고 싶다면 이 책이 좋을 듯 합니다. 절판이 되었나... 구하기 쉽지는 않더라고요
3. John Hubbard et al. "Vector Calculus, Linear Algebra, and Differential Forms: A Unified Approach".
4. Michael Spivak "Calculus" - 위의 책과 비슷하게 미적분학과 추상적인 부분의 간극을 매울 수 있는 좋은 책입니다. 이 친구는 1학년을 대상으로 쓰여진 듯 하고 위의 책(Hubbard)은 이미 어느정도 알고 있으면서, 최신의 응용 내용을 담고 있습니다.

<details markdown="1">
<summary>좀 더 나아간 책</summary>

해석학에 가까운 내용은 (*상급*) 직접 필요성이 느껴지실 때-논문을 주의 깊게 읽다가 발견 했을 때-공부하러 돌아와도 늦지는 않을 듯 합니다. 가성비가 떨어진다는 표현이 가장 적절할 듯 합니다. [Source](https://x.com/theeluwin/status/1787151118403031114)

1. *상급* Michael Spivak "Calculus on Manifold" - 다변수로 넘어가기 위한 책이긴 합니다만, 책이 너무 얇아서... 단독으로 읽기에는 어려울 수 있습니다.
2. *상급* Tom Apostol. "Calculus Vol 1 and 2", - 공업수학에 대한 모든 것을 다 때려박은 책입니다. 1학년을 위한 책이라고는 하는데... 있을건 다 있긴 하나 좀 진도가 빠른 감이 있어 약간은 추천하지 않습니다. 국내 어떤 대학에서는 이것을 쓴다고는 들었습니다.
3. *상급* Tom Apostol. "Mathematical Analysis", 해석학을 공부할때 Rudin을 많이 쓰긴 하는데 그 책은 너무 얇고, 내용이 압축되어 있는 느낌이라 혼자 공부하기 어려웠습니다. 그래서 저는 이 책으로 했는데, 상대적으로 이해는 할 수 있게 잘 풀이되어 있습니다.
4. *상급* James Munkres. "Analysis on Manifolds", Topology로 유명한 Munkres 교수님 책입니다. Spivak Manifold가 어려워서... 약간 설명이 많은 이 책이 도움 되었습니다.
5.  *상급* Tong Zhang, "[Mathematical Analysis of Machine Learning Algorithms](https://tongzhang-ml.org/lt-book.html)", CUP, 2023.
6.  *상급* Thomas Hillen, "[*Elements of Applied Functional Analysis*](https://era.library.ualberta.ca/items/b5368495-8f45-4c63-b895-25a423bc66fa)".

</details>

## 확률, 통계학, 정보이론

다른 분의 조언에 따르면, 아마도 확률 및 통계가 우선순위가 높아질 듯 합니다. [Source](https://x.com/theeluwin/status/1787151118403031114)
이 부분을 공부할 때 유념하면 좋을 부분은... 1) 모델이 아닌 그 모델을 검증하고 평가하는 방법에 대해 생각해보자. (가설 검증 등) 2) **직접 수식을 풀어 써보자** 저가 개인적으로 어려웠던게, 이쪽 부분은 수식을 적고 서술하는 경우가 많은데, 고개만 끄덕이면 당연해 보이지만 손에 익지는 못합니다. 직접 연습문제 등을 풀어보는게 더 도움이 될 듯 합니다. 

### 포스팅

1. 확률의 정의 - Axiom of Probability, Probability space, measure
2. 통계 - 통계란 무엇인가? 통계분포들 (정규 분포 등.)
3. 정보이론 - 엔트로피, 의사결정나무(Decision Tree)
4. 확률에서의 부등식 - Markov, Chebyshev, Hoeffding Inequality
5. Markov process
6. Gaussian process

### 관련도서

1. **기초** Sheldon Ross, "*A First Course in Probability*", Pearson 2019.
2. Mor Harchol-Balter, "[Introduction to Probability for Computing](https://www.cs.cmu.edu/~harchol/Probability/book.html)", Cambridge University Press, 2024.
3. Chris Piech, "*[Probability for Computer Scientists](https://chrispiech.github.io/probabilityForComputerScientists/en/)*"
4. Dimitri P. Bertsekas and John N. Tsitsiklis, "[*Introduction to Probability*](http://www.athenasc.com/probbook.html)", Athena Scientific, 2008. 
5. David MacKay, "Information Theory, Inference, and Learning Algorithms", CUP 2003.
6. **기초** Robert V. Hogg et al., "Probability and Statistical Inference", Pearson.
7.  Robert V. Hogg et al., "Introduction to Mathematical Statistics", Pearson. - 얼핏 듣기로는 5번 책을 읽고 6번을 읽는다고 하는데, 저는 6번으로 바로 넘어왔습니다. 8판으로 넘어오면서 R을 통한 실습도 추가되어서 응용적으로도 활용 가능성이 높은 책입니다. 다만 7판 국제판의 경우 일부 내용이 누락되어 있으니 주의바랍니다.

#### 좀 더 나아간 책 

1. Geoffrey R. Grimmett and David R. Stirzaker, "Probability and Random Processes", OUP.
2. E. T. Jaynes "Probability Theory: The Logic of Science", CUP.
3. George Casella and Roger L. Berger "Statistical Inference", Duxbury. - 이 책은 인공지능 대학원에서도 통계 추론 교과목 등에서도 잘 활용되는 책입니다.

## 최적화 이론

### 포스팅

1. 볼록하다? 볼록한 공간에서의 최적화 문제
2. 경사 하강법, 확률적 경사 하강법
3. 볼록 문제의 해석적 해결법
4. 볼록 문제의 쌍대적 해결법

### 관련도서

다변수 미적분학을 어느정도 공부하시면 최적화에 대한 내용 (Newton method 등) 의 기초를 알 수 있습니다.

1. Stephen P. Boyd and Lieven Vandenberghe, "[*Convex Optimization*](https://web.stanford.edu/~boyd/cvxbook/)", CUP 2004. - 볼록 최적화 하면 이 책을 정독하는게... 좋습니다.
2. David G. Luenberger, "[*Optimization by Vector Space Methods*](https://www.wiley.com/en-us/Optimization+by+Vector+Space+Methods-p-9780471181170)", Wiley, 1997.
3. Jonathan Borwein and Adrian Lewis, "[*Convex Analysis and Nonlinear Optimization*](https://link.springer.com/book/10.1007/978-0-387-31256-9)", 

# 코딩

각 라이브러리 별로 필요한 내용을 습득할 수 있는 튜토리얼 문서가 잘 구성되어 있습니다.

- [Numpy Quickstart](https://numpy.org/doc/stable/user/quickstart.html)
- [PyTorch Quickstart](https://pytorch.org/tutorials/beginner/basics/quickstart_tutorial.html)
- Aston Zhang et al. "[*Dive into Deep Learning*](https://d2l.ai/)", preprint.

# 관련된 수업 모음

- CMU F18: [Mathematical and Computational Foundations for Machine Learning](https://www.cs.cmu.edu/~mgormley/courses/606-607-f18/index.html)
- Stanford: [Convex Optimization 1](https://web.stanford.edu/class/ee364a/) [Convex Optimization 2](https://web.stanford.edu/class/ee364b/)
- TTIC: [Mathematical Toolkit](https://home.ttic.edu/~madhurt/courses/toolkit2021/index.html)
- Princeton COS 302 / SML 305: [Mathematics for Numerical Computing and Machine Learning](https://www.cs.princeton.edu/courses/archive/spring20/cos302/)


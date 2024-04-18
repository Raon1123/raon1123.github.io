---
title: 인공지능에 필요한 배경지식 모음
tags: [AI, Machine Learning, Study]
---

인공지능 및 기계 학습을 공부하고자 책을 펼쳐보면, 어디서 부터 시작해야 할지 막막한 경우가 많습니다. 혹은 이미 수업 등을 통해 배운 내용이지만 시간이 흘러 까먹은 경우도 있을 것입니다.
이 글은 기계 학습을 포함한 인공지능을 공부하고, 활용하는데 필요한 도구들을 정리하고자 합니다. 이러한 정리된 도구를 통해 공부와 활용의 출발지점으로 삼고자 합니다.

제가 재학 중인 UNIST의 경우는 "AI Toolkit"(인공지능 대학원) 혹은 "인공지능을 위한 기초수학" (산업공학, 전기전자공학, 컴퓨터공학 전공) 등으로 이러한 내용을 수업하고 있습니다. 다른 대학도 비슷하겠지만 한 학기만에 모든 내용을 심도있게 다루기는 어렵고, 전반적인 흐름에서 부족한 부분을 스스로 매꿔야 하기에 이러한 부분에서 이 글이 도움이 되기를 바랍니다.

# 수학적 배경 지식

인공지능을 공부하는데 있어서 "수학"이 많이 강조되고는 합니다. 그렇다면 수학이 왜 필요한 것일까요? 그리고 어떠한 수학적 내용이 보다 우리에게 적합할까요? 짧게 생각을 적어보겠습니다.

보통의 기계 학습(인공지능도 비슷합니다만)을 통해 해결하고자 하는 문제를 생각해봅시다. 적절한 데이터 신호(signal)이 있고, 우리는 이를 통해 특정한 문제를 해결하고 싶습니다. 그 문제를 해결하는 것은 *모델*이라 부르는 것일겁니다. 다르게 낮은 단계에서 생각하면 적절한 신호로 부터 우리가 원하는 특징(feature)을 뽑는게 *모델*의 목적입니다. 우리는 이러한 해결 방식을 우리가 직접 처음부터 끝까지 설계하는 것이 아닌 적절한 데이터로부터 우리가 생각한 모델이 *학습*을 하는 것이 목적입니다. 
잘 동작하는 *모델*을 만들기 위해서는 합리적인 *가설*을 세우고, 이러한 *가설*을 바탕으로 적절히 *모델*을 잘 동작하도록 최적화 하는 과정이 필요할 것입니다. 이러한 *가설*이 있음으로써 우리는 *모델*을 우리의 상황에 맞으면서 단순하게 만들고 *학습*할 수 있을 것입니다. 이러한 전반적인 과정을 이해하기 위하여 우리는 **선형 대수학**, **다변수 미적분학**을 통해 *모델*을 생각하고 분석하는 도구를 배우게 될 것입니다. 또한 적절한 *가설*을 성립하기 위하여 **확률 및 통계학**을 통해 우리의 *가설*이 맞는지 혹은, 적절한 *모델*이 이루어 지는지를 확인할 수 있을 것입니다. 이러한 모델이 *학습*하기 위하여 **최적화 이론**을 공부하게 됩니다. 설명의 편의를 위해 나누었지만, 실제로는 각 분야가 별개로 이루어 진 것은 아닙니다. 그렇지만 이러한 도구들을 안다면, 전반적인 기계 학습의 이해에 도움이 됩니다. 그러므로, 기계 학습을 잘 공부하고 활용하기 위하여 1) **선형 대수학** 2) **다변수 미적분학** 3) **확률 및 통계학** 4) **최적화 이론** 에 대해 알아보아야 합니다.

전반적으로는 아래 "*Mathematics for Machine Learning*"을 추천드립니다. 흔히 MML 책이라고 불리우는 책으로써, 기계 학습을 공부하는데 필요한 수학적 지식 전반을 다루고 있는 책입니다.
- Marc Peter Deisenroth, A. Aldo Faisal, and Cheng Soon Ong."*[Mathematics for Machine Learning](https://mml-book.github.io/)*". Cambridge University Press. 2020.

---

여기서부터는 각 분야별로, 기초적인 내용을 다 알고 있을 때, 한 걸음 더 나아갈 때 참고하기 좋은 책들입니다. 이 책을 모두 읽는 것을 권하는게 아니라. 필요할 때 참고할 수 있기를 바랍니다.

## 선형 대수학

1. Gilbert Strang, "Introduction to Linear Algebra" - 만약 선형 대수학에 대한 내용이 처음이시거나, 완전히 까먹으셨다면 추천드립니다. 선형대수학의 기본을 다질 수 있으며, MIT OCW를 통해 Youtube에 저자분의 강의가 올라와 있습니다.
2. Sheldon Axler, "[Linear Algebra Done Right](https://linear.axler.net/index.html)" - Hoffman & Kunze나 Friedberg와 같은 수학적 엄밀함을 추구하는 선형대수학 고전이 있지만, 최근 들어서는 Axler의 done right 책이 그 자리를 대신하는 듯 하다. 이전의 활용 측면이 아닌 추상적으로 들어가기에는 이 책을 권합니다.
3. Lloyd N. Trefethen and David Bau, III, "Numerical Linear Algebra" - 선형대수에 대한 개념을 알았다면 이에 대한 계산을 어떻게 효과적으로 하는지에 대한 강의록입니다. 부담없이 읽기 편함
4. Peter D. Lax, "Linear Algebra: and its Applications", Wiley 2007.
5. Roger A. Horn and Charles R. Johnson, "Matrix Analysis", CUP 2012.
6. Kaare B. Petersen and Michael S. Pedersen, "[The Matrix Cookbook](https://www.math.uwaterloo.ca/~hwolkowi/matrixcookbook.pdf)" - 공부하는 책이라기 보다는 옆에 두고 참고하기 좋은 내용인 듯 합니다.
7. Zico Kotler "[Linear Algebra Review and Reference](https://www.cs.cmu.edu/afs/cs/academic/class/15859n-s20/RelatedWork/Kolter-AlebraReview.pdf)" - 이 글도 위와 같이 옆에 두기에 좋습니다.
8. David P. Woodruff "[Sketching as a Tool for Numerical Linear Algebra](https://arxiv.org/abs/1411.4357)" - 수치선형대수와 관련된 내용을 정리한 글입니다.


## 다변수 미적분학

미적분학 내용의 경우, 기존의 미적분학 책을 복습하시는 것을 강하게 추천드립니다. Thomas' Calulus나 Stewart 같은 책들이 잘 구비가 되어 있어서...
아래 내용은 기초적인 내용보다는 좀 더 들어갈 때 도움이 되겠습니다. 

1. Tong Zhang, "[Mathematical Analysis of Machine Learning Algorithms](https://tongzhang-ml.org/lt-book.html)", CUP, 2023.
2. Thomas Hillen, "[*Elements of Applied Functional Analysis*](https://era.library.ualberta.ca/items/b5368495-8f45-4c63-b895-25a423bc66fa)".

## 확률, 통계학, 정보이론

1. Sheldon Ross, "*A First Course in Probability*", Pearson 2019.
2. Mor Harchol-Balter, "[Introduction to Probability for Computing](https://www.cs.cmu.edu/~harchol/Probability/book.html)", Cambridge University Press, 2024.
3. Chris Piech, "*[Probability for Computer Scientists](https://chrispiech.github.io/probabilityForComputerScientists/en/)*"
4. David MacKay, "Information Theory, Inference, and Learning Algorithms", CUP 2003.

## 최적화 이론

1. Stephen P. Boyd and Lieven Vandenberghe, "[*Convex Optimization*](https://web.stanford.edu/~boyd/cvxbook/)", CUP 2004.

# 코딩

각 라이브러리 별로 필요한 내용을 습득할 수 있는 튜토리얼 문서가 잘 구성되어 있습니다.

- [Numpy Quickstart](https://numpy.org/doc/stable/user/quickstart.html)
- [PyTorch Quickstart](https://pytorch.org/tutorials/beginner/basics/quickstart_tutorial.html)

- Aston Zhang et al. "[*Dive into Deep Learning*](https://d2l.ai/)", preprint.

# 관련된 수업 모음

- CMU F18: [Mathematical and Computational Foundations for Machine Learning](https://www.cs.cmu.edu/~mgormley/courses/606-607-f18/index.html)
- Stanford: [Convex Optimization 1](https://web.stanford.edu/class/ee364a/) [Convex Optimization 2](https://web.stanford.edu/class/ee364b/)
- TTIC: [Mathematical Toolkit](https://home.ttic.edu/~madhurt/courses/toolkit2021/index.html)

# 참고문헌

마지막 수정일: 2024. 4. 18.
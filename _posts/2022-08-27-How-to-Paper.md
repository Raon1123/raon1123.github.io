---
title: 어떻게 인공지능 논문을 읽을 것인가?
tags: [Lab] 
---

어느 연구실이든 연구실에 들어가게 되면 먼저 하게 되는 일은 논문을 읽는 일입니다.
논문을 읽는 여러 이유가 있겠지만, 연구를 하기 위해서는 이전에는 어떠한 연구를 했는가를 알아보기 위함입니다.
이전에는 이러저러한 시도가 있었고, 문제점은 무엇이였고, 우리는 여기서 어떻게 발전할지에 대해 알아보게 되지요.
그렇다면 논문을 어떻게 읽어야 할까요? 논문을 읽을때 필요한 능력은 무엇일까요?

우리는 논문을 짧은 시간 안에 필요한 정보만을 빠르게 뽑아서 소화시키는 능력이 필요하게 됩니다. 
인공지능 분야는 매우 급속도로 연구가 진행이 되는 터라, 가장 좋은 성능을 보인 모델(SOTA, state-of-the-art)의 논문을 다 읽고 씹고 뜯고 맛보고 즐기다 보면 또 다른 논문이 나오게 됩니다.
인공지능 분야는 보통의 학술 분야와는 달리 학술지(journal)보다는 학회(conference) 중심으로 연구가 진행됩니다.
1년에 한 학회가 한 번 열리게 되는데, CVPR과 같은 경우만 하더라도 발표되는 논문의 수의 단위가 4자리를 넘어갑니다. 
이러한 최우수 학회가 컴퓨터비전 분야는 2개, 머신러닝 분야는 3개는 되는데... 다 못읽습니다 솔직히. 흔히 이야기하는 최우수가 아니라 그 밑의 학회를 더한다면 더 많아지겠지요.
컴퓨터 비전이 아니라 저의 연구 분야로만 한정 지어도 한 학회에 적어도 수십편은 나오고... 연구 동향도 빠르게 바뀌고 있습니다.
구체적인 예시를 들면, 2020년 말 ~ 2021년 까지만 하더라도 비전분야는 Transformers이라는 자연어에서 활용되는 모델을 비전 분야에 접목을 시켜서 발전을 하였습니다.
그렇지만, "*어 데이터가 너무 많이 필요하네... 현실적으로 어려울거 같아요...*", "*제 로컬에서는 못돌아갈거 같아요, 모델이 너무 커요 ㅠㅠ*" 등등 여러 어려움이 있어 지금은 그때만큼은 인기를 누리지 못하고 있습니다.
이러한 이유로 우리는 빠르게 현재 진행되는 연구를 쫓을 필요성이 있습니다.
그래서 논문을 효과적으로 읽는 방법에 대해 생각해보게 됩니다.

# 어떤 논문을 읽어야 하나요?

효과적으로 읽기에 앞서 무엇을 읽을지에 대해 생각해 봅시다.
본인이 희망하는 분야이든, 아니면 다른 사람에 의해 지정된 분야이든, 해당 분야의 논문을 찾는 것이 우선입니다.
인공지능 분야를 연구하신다면, 앞으로 `arXiv`(아카이브)라는 사이트를 많이 들어 보시게 될 것입니다.
아카이브는 말 그대로 문서를 저장하는 공간입니다. 
글이 정식으로 동료평가(peer review)를 거치지 않고 초고(draft)라 하더라도 올릴 수 있습니다. 
또 올려진 문서는 누구나 볼 수 있고요. 정말 최근의 연구는 발표가 되기 이전에 아카이브에 올라오는 경우가 있습니다. 
동료 평가를 거치지 않았기 때문에 글의 주장에 오류가 있을 수 있고, 심지어 허무맹랑한 글도 올릴 수는 있습니다.
그래서 처음읽는 입장에서는 아카이브에서 찾는 것은 권하지 않습니다.
나중에는 이쪽도 들여다 봐야할 일이 있지만, 아카이브에서 찾는 것이 아닌, 찾은 논문을 읽기 위해 들어가는 곳이라고 생각합시다.

## 어디서 찾나요?

그렇다면 어디서 찾느냐? 앞서 이야기 했듯이 학회 중심으로 연구가 진행됩니다. 
일단 저의 머신러닝과 컴퓨터 비전 분야의 최우수 학회는 아래와 같습니다.

- 인공지능: **AAAI** (AAAI Conference on Artificial Intelligence), **AISTATS** (International Conference on Artificial Intelligence and Statistics)
- 컴퓨터 비전: **CVPR** (IEEE Conference on Computer Vision and Pattern Recognition) **ICCV** (IEEE International Conference on Computer Vision) **ECCV (European Conference on Computer Vision)**
- 기계학습: **ICML** (Conference on Neural Information Processing Systems) **KDD** (ACM SIGKDD Conference on Knowledge Discovery and Data Mining) **NeurIPS** (Conference on Neural Information Processing Systems) **ICLR** (International Conference on Learning Representations) **COLT** (Conference on Learning Theory)
- 자연어 처리: **ACL** (Annual Meeting of the Association for Computational Linguistics) **EMNLP** (Conference on Empirical Methods in Natural Language Processing) **NAACL** (North American Chapter of the Association for Computational Linguistics)

본인 주제에 맞는 최우수 학회에서 나온 본인의 연구 주제와 맞는 논문을 우선 선별하면 됩니다. (일단은 논문 읽는 법을 학습한다고 생각한다면요.)
주의할 사항은, 동료 평가가 이루어 졌다고 하더라도, 그 논문을 읽고 이해하는 것은 우리입니다.
**최우수 학회의 논문이라 하더라도 절대적으로 좋은 논문은 아닙니다. 우리는 그 논문을 이해했다면 논문의 주장을 비판하고 문제점을 찾아야 합니다. 주장이 절대적 참이 아닐 수도 있습니다. 실험 결과 이외에는 비판적으로 바라보아야 합니다.**  

이러한 본인 주제를 포함하는 학회를 찾았다면 [Google Scholar](https://scholar.google.com/)를 통해 검색을 해서 추리는 작업이 요구됩니다.
검색에서 팁을 드리자면 특정 학회를 지정한다면 우측 햄버거 모양 메뉴에 들어가서 "다음 매체에 발표된 문서 검색"을 통해 검색을 하시면 됩니다.
우리는 약어를 활용하지만 보통은 위에 약칭이 아닌 전체 명칭으로 해야 검색이 되는 경우도 있으니 주의해 주세요.

## 무엇을 선택하나요?

1. 논문 제목을 통하여 필요한 논문을 1-200편 추리기
2. 논문 초록(abstract)를 통하여 필요한 논문을 3-40편으로 추리기
3. skimming을 통하여 논문 전체를 훑어보고 1-20편으로 추리기

논문 초록의 경우 논문에서 진행된 내용을 한 문단으로 정리한 내용입니다. 여기서 주목하여야 할 부분은 “저자는 어떠한 문제를 해결 할 것인가?”, “저자는 어떻게 이 문제를 해결하고자 시도하였는가?”, “연구의 결과는 어떠한가?” 입니다. 이 3가지 핵심을 찾고 우선적으로 필요한 논문을 찾아 읽어봅니다.

skimming의 경우 논문을 주의깊게 읽지 않고 훑어 보는 방식입니다. 논문의 문장 하나 하나를 읽는 대신, 그림이나 수식을 먼저 보고 어떠한 문제를 어떻게 해결 했는지, 각 그래프 및 그림은 어떠한 의미를 담고 있는지 생각해 봅니다. 또한 맨 앞의 introduction과 마지막의 conclusion을 훑는 것을 통해 전체 논문의 전망을 바라 볼 수 있습니다. 이 과정을 통해 최종적으로 주의 깊게 읽을 논문을 정합니다. 자세한 skimming 방법은 어떻게 읽을까요에서 다루겠습니다.

# 어떻게 읽을까요?

## 논문의 구조

1. Introduction: 논문을 시작하는 단계입니다. 논문에서 해결하고자 하는 문제를 정의하게 됩니다. 그리고 이 문제가 충분히 어려운 문제인지(challenge), 중요한 문제인지(important)를 다루게 됩니다. 
2. Current Method: 이 논문 이전에는 문제를 어떻게 해결하였을까요? 어떠한 한계(limitation)이 존재하고, 저자는 어떠한 motivation을 통하여 논문의 모델을 제안하게 되었을까요? 
3. Propose Method: 본격적으로 저자가 새로 제안한 모델에 대해 설명하는 부분입니다. 다만, 이 부분에 치우치기 보다는, 앞의 motivation과 뒤의 critique를 해야합니다.
4. Experiment Results: 저자가 제안한 방식이 정말 좋은 방식일까요? 기존 방식의 한계점을 뛰어넘었을까요? 저자가 자신의 모델이 좋음을 실험을 통해 증명하는 부분입니다. 이 부분을 주의 깊게 살펴 보아서 저자의 주장이 과연 타당한지, 실험 세팅이나 결과가 정말 좋음을 밝히고 있는지를 살펴 보아야 합니다.
5. Conclusion: 논문을 마무리 지으면서 앞의 내용을 정리하고, 남은 한계점을 다루게 됩니다.

## 어떻게 요약하면 좋을까요?

저는 보통 아래와 같은 구조로 논문을 요약하여 정리합니다. 아래 질문에 답을 한다고 생각하고 정리하면 좋습니다.
Notion이나 Google docs와 같은 곳에 논문을 읽고 저의 생각을 모아두고는 합니다.

1. Motivation: 그래서 이 논문을 왜 쓰게 되었는가? 이전에는 어떠한 연구가 있었고, 어떠한 문제점이 있었을까?
1.1. Problem definition: 이 논문이 해결하고자 하는 문제는 무엇일까? 이 논문에서 증명에 사용한 가정은 무엇일까? 이러한 가정과 세팅이 현실적인가?
2. Main contribution: 이 논문이 그래서 "왜" 논문이 되었을까? 그냥 문제를 해결하고 새로운 것만 가지고는 논문이 될 수는 없었을텐데, 어떻게 학계(community)에 기여를 하고 있을까?
3. Method: 문제를 어떻게 해결하고 있을까?
4. Experiment result: 그래서 이 해결 방법론이 좋은 이유는 무엇일까? 이를 실험을 통해 증명을 하고 있겠지? 실험 세팅은 타당할까? 특히 표, 그림에서 주장하고자 하는 바를 문장으로 풀어써보면 어떻게 될까?
5. Discussion: 이 논문의 강점(strength)과 단점(weakness)는 무엇일까? 우리는 여기서 무엇을 더 발전 시킬 수 있을까?

## 이론 관련 논문 Tip

1. 이 논문이 해결하고자 하는 문제가 중요한 문제인가?
2. 논문의 증명을 위하여 어떠한 가정(assumption)을 쓸 것인가? 
3. 가정이 얼마나 현실적인가? 너무 좁은 가정의 경우 일반적인 상황(neural network)등에 적용이 불가능한 경우도 있다.
4. 가정을 기반으로 bounding을 증명한다. (big-o or big-omega notation, but big-theta is better!) 또한 해당 bounding이 충분히 가까움을 보여야 한다. 예를 들어, 등호조건이 만족시키는 경우가 있음을 보이면 좋다.
5. 증명 연습. 연습문제를 많이 풀고 직접 해결해 보아야 한다. Real analysis 등을 공부하면 증명 기법을 배우기 쉽다.

# 참고문헌

1. [How to read paper?](http://ccr.sigcomm.org/online/files/p83-keshavA.pdf)
2. [How to do Research at the MIT AI Lab](https://dspace.mit.edu/bitstream/handle/1721.1/41487/AI_WP_316.pdf)

# Related sites

1. [Connected Papers](https://www.connectedpapers.com/)
2. [Elicit](https://elicit.org)
3. [Zotero](https://www.zotero.org/)
4. [Paper Digest](https://www.paper-digest.com/no_digest/not_open_access)
5. [Research Rabbit](https://researchrabbitapp.com)
6. [Litmap](https://www.litmaps.com/)
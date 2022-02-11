---
title: Introduction to Logic
tags: Logic Study
---

# 왜 논리학을 공부하는가?

논리학은 타당한 추론 방법을 배우는 학문이다.
그렇다면 타당한 추론이란 무엇일까?
우리는 생활 속이나 연구를 진행하면서 무언가를 주장을 한다. 
주장이 올바르다고 이야기 하기 위해 우리는 근거를 가져오게 된다.
여기서 주장이 올바르기 위해서는 두 가지 조건이 만족 되어야 한다.
1) 근거가 모두 참이여야 한다.
2) 근거가 모두 참이라면, 결론도 참이여야 한다.
여기서 두 번째 조건이 올바른 추론(타당한 추론)임을 살펴보는 학문이 논리학이다.

예시를 들어 설명해보자.

1. 모든 사람은 죽는다. (대전제)
2. 소크라테스는 사람이다. (소전제)
3. 따라서 소크라테스는 죽는다. (결론)

3번이 내가 주장하고자 하는 명제이며, 1번과 2번은 3번이 타당하다는 것을 보이기 위한 근거이다. 
위 예시는 삼단 논법의 예시로, 타당한 논증의 흔한 예시이며, 근거가 모두 참이라면 주장이 필연적으로 참이다.

이를 보다 일반화 해보자.

1. M은 P이다.
2. S는 M이다.
3. 따라서 S는 P이다.

우리는 이전의 예시에 소크라테스(S), 사람(M), 죽는다(P)가 아닌 다른 어떠한 내용이 들어가더라도 타당하다는 것을 알고 있다.
그렇다면 "타당하게 추론"하기 위해서는 어떠한 방법이 "타당"할까?
그것을 알기 위해 우리는 논리학을 공부한다.

## 왜 수리논리학을 공부하는가?

논리학에서 한 단계 더 들어가서 수학에서의 논리학, 수리논리학을 살펴보자.
수리논리학은 "수학"에서의 타당한 추론과정을 배운다.
수학에서의 타당한 추론은 무엇일까? 바로 "**증명**"이다.
우리가 어떤 수학 명제가 참이기를 밝히기 위해서는 증명 과정을 거친다.
또한 이전의 사례와 달리 결론은 필연적으로 참이여야만 한다.

과학 연구에서의 증명방법과 달리 수학 연구에서의 증명 방법은 공리로 부터 출발한다.
과학 연구의 경우 우리는 많은 관찰을 통해서 일반적인 명제를 얻는다.
수학 연구에서의 관찰은 공리이다.
공리나 일반적인 명제가 필요한 이유는, 앞서 이야기한 추론의 끝으로 올라가다 보면 **타당한 추론이 불가능한 명제**가 생기게 된다.
그렇지만 모두가 **타당하다고 믿는** 명제가 있게 되는데, 과학에서는 이는 많은 관찰을 통해 이론을 세우고, 수학은 공리라 불리게 된다.
이러한 공리로 부터 도출되는 여러 명제들을 우리는 정리라고 부르게 된다.

수리논리학은 이러한 공리와 그로 부터 도출되는 정리를 모은 axiom system을 공부하게 된다.

# 포스팅 목록

# 유용한 참고자료

## 사이트

[Teaching Yourself Logic](https://www.logicmatters.net/tyl/)

논리학의 경우 학부 교과목으로 제공이 되는 부분이 한계가 있고, 관련 전공자도 많지 않아서 혼자서 공부할 필요가 있다.
혼자서 공부하기 위하여 어떻게 공부를 하면 좋을지 설명을 하고 있는 사이트이다.
많은 논리학 관련 서적들에 대한 소개가 이루어져 있으며, Peter Smith 교수님의 평이 달려 있다.

[어떻게 집합론을 공부할 것인가](https://hanuljeon95.github.io/Set-theory-how-to-learn/)

## 강의

### KAIST 전산논리학 개론

[카이스트 강의 사이트](https://github.com/hongseok-yang/logic21)

[유튜브 재생목록](https://youtube.com/playlist?list=PLvV9DPeJV9xzhy0Ti3P4DrfmtfXfLalW6)

자세한 내용은 [CSE Study]({% post_url 2021-06-21-CSEStudy %})

## 책

- "기호논리학", 벤슨 메이츠; 김영정, 선우환 옮김 [교보문고](http://www.kyobobook.co.kr/product/detailViewKor.laf?ejkGb=KOR&mallGb=KOR&barcode=9788931002607&orderClick=&Kc=)
- "A Mathematical Introduction to Logic", Herbert B. Enderton [Amazon](https://www.amazon.com/Mathematical-Introduction-Logic-Herbert-Enderton/dp/0122384520)
- "Mathematical Logic", Stephen Cole Kleene [Amazon](https://www.amazon.com/Mathematical-Logic-Dover-Books-Mathematics/dp/0486425339)
- "Mathematical Logic", Heinz-Dieter Ebbinghaus, Jorg Flum, Wolfgang Thomas [Amazon](https://www.amazon.com/Mathematical-Logic-Graduate-Texts-Mathematics/dp/3030738388/)
- "Introduction to Mathemtaical Logic", Elliott Mendelson [Amazon](https://www.amazon.com/Introduction-Mathematical-Discrete-Mathematics-Applications/dp/1482237725)
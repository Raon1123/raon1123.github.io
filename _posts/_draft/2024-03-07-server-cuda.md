---
title: 연구실 세팅 작업
tags: [Lab] 
---

마지막 수정일자: 2024. 03. 29.

인공지능을 활용, 연구를 하면서 빼놓을 수 없는 것이 CUDA® 입니다.
그렇다면 CUDA는 무엇이고 이를 어떻게 활용할 수 있을까요?

# CUDA란 무엇인가?

CUDA는 NVIDIA GPU를 통한 개발을 도와주는 라이브러리 입니다.
대다수의 인공지능의 계산은 부동소숫점에 병렬로 연산하는 것이 효과적이고 이를 GPU를 통해 동작시키는 것이 효과적이라는 것이 알려졌습니다.
그렇기 위해서는 GPU를 잘 동작시키고 최적화하는 작업이 필요합니다. 그렇지만 우리는 이러한 내용을 자세히 들여다 보고 직접 최적화 하기는 어렵지요. 그래서 등장한 것이 CUDA 라이브러리입니다. 
CUDA는 NVIDIA GPU에 맞추어 제공되는 라이브러리입니다. 다시 말해, NVIDIA GPU가 아니면 CUDA를 사용할 수 없습니다. 대다수의 공개된 인공지능 라이브러리는 CUDA에 의존적이니... NVIDIA GPU를 통해 대다수의 연구와 개발이 이루어지는 듯 합니다. 

보다 자세한 내용에 관심이 있으시다면 아래 영상을 추천합니다.

NVIDIA에서 공개한 CPU와 GPU를 비교하는 영상입니다.
<iframe width="560" height="315" src="https://www.youtube.com/embed/-P28LKWTzrI?si=E9UOvsQAH7RFuX_b" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

하드웨어 레벨로 들어가서 보다 상세하게 GPU의 동작 과정을 설명하는 영상입니다.
https://youtu.be/ZdITviTD3VM?si=pj98yU9wsU4ViVoH

#
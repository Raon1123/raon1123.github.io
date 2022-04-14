---
title: Markdown entry_points() Type Error 관련 경험
tags: [Lab, Research]
---

# 문제상황

우리는 PyTorch등 다양한 머신러닝 모델에 로그를 남기고 결과를 확인하기 위하여 Tensorboard를 쓴다.
Tensorboard는 Markdown에 의존적인데, Tensorboard를 실행하려고 보니 Markdown에서 에러가 발생하였다.

```
INSTALLED_EXTENSIONS = metadata.entry_points(group='markdown.extensions')
TypeError: entry_points() got an unexpected keyword argument 'group'
```

entry_points를 호출할때 group argument가 없다는건데...

# 해결방법

해결법은 단순하였다. 
conda 환경에서의 markdown을 다시 설치하였다.

```
conda install -c anaconda markdown
```

구글링을 통한 여러 참고자료를 살펴본 결과 "version이 업데이트 되면서 바뀐 부분" 때문에 에러가 발생하였던 것이다.
Tensorboard만 설치하면 markdown도 설치는 되지만, 최신 버전으로 설치가 되지 않아 에러가 발생했던 것이다.

# Reference

## 문제 상황 및 해결법

[Markdown Issue](https://github.com/mkdocs/mkdocs/issues/2469)
[Apache Airflow Issue](https://github.com/apache/airflow/issues/19804)
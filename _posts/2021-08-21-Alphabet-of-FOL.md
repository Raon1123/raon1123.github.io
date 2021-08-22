---
title: Alphabet of First Order Logic
tags: Logic Study
---

# 들어가며

우리가 새로운 언어를 배우게 된다면, 가장 먼저 배우는 것이 그 언어를 구성하는 기호의 (Symbol) 집합인 알파벳이다. (Alphabet)
그렇다면 1차 논리를 구성하는 알파벳은 무엇일까?

# Alphabet of FOL

1차 논리에서 활용이 되는 알파벳은 다음과 같다.

1. Variables ($v_0 , v_1, v_2, \cdots$)
2. Not, And, Or, If-then, If and Only If ($\neg , \wedge, \vee, \to, \leftrightarrow $)
3. For All, There Exists ($\forall , \exists$)
4. Equality Symbol ($\equiv$)
5. Parentheses ($(, )$)
6. Relation Symbol($P,Q,R$), Function Symbol($f, g, h$), Constants($c, c_0, c_1$) 

각각이 가지는 의미에 대해서는 구문을 다루는 포스팅에서 다룰 예정이지만, 어떠한 용도로 활용이 되는지 잠깐 짚고 넘어가자.
주의할 사항은 "Syntax에서는 의미가 부여되지 않은 문장일 뿐이다." 
의미는 구문을 다룰 때 의미를 부여하는 함수를 통하여 의미를 부여하게 된다.
1번은 변수로써, 여기에 참 또는 거짓 값을 부여하게 된다.
2번에 나오는 기호들은 논리적 관계연산자로써 하나 혹은 둘의 식이 결합하여 하나의 논리 결과를 내놓게 된다.
3번은 양화논리사로, 모든 $x$에 대하여~ ($\forall x$), 어떤 $x$에 대하여 ($\exists x$)와 같이 양을 논의한다.
4번은 둘의 관계가 동치임을 보이는 관계이다.
다만, 항상 존재하지는 않고, 때에 따라서 없을 수도 있다.
5번은 연산 순서를 명확히 하기 위한 괄호로써, 모호함이 없을 시에는 괄호를 생략하기도 한다.
6번은 변수들간의 관계 연산자 (예, $<$), 하나의 변수 값을 다른 변수값으로 보내는 함수 연산자 (예, $f(x)=x$), 그리고 상수이다.
1번에서 5번까지의 기호의 집합을 우리는 $\mathbb{A}$라 표현하기로 하고, 6번은 특별히 $S$로 표기한다.
그렇다면 우리가 관심을 가지는 1차 논리의 알파벳은 $\mathbb{A}_S = \mathbb{A} \cup S$이 된다.
예를 들어 $S = \left\{+, 0 \right\}$ 이라면, $\mathbb{A}_S = \left\{ v_0, v_1, \cdots, \neg, \wedge, \cdots, \equiv, (, ), +, 0 \right\}$이 된다.

이러한 알파벳들이 나열이 되어 있으면 이를 문자열(String)이라 한다. 
그리고 기호의 집합 $\mathbb{A}$로 부터 만들어진 문자열의 집합을 $\mathbb{A}^*$이라 한다.
그렇지만 모든 문자열이 1차 논리의 문장이 되는 것은 아니다.
특정한 규칙을 만족 시키는 문자열이 우리의 분석 대상이다.
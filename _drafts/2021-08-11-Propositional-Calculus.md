---
title: Propositional Calculus
tags: Logic Study
---

# Alphabet

우리가 새로운 언어를 배우면, 가장 먼저 배우는 것은 그 언어를 구성하는 기호(symbol)의 집합인 알파벳(alphabet)이다.
한글이라면, ㄱ, ㄴ, ㄷ을 배우고, 영어라면 A, B, C를 배우게 된다.

알파벳은 기호의 집합이다.
예를 들어, $\mathbb{A}_1 = \{ 0,1,2, \cdots, 9 \}$ 와 같이 표현이 될 수 있다.
이러한 알파벳을 나열한 것을 우리는 문자열(string)이라 한다.
알파벳 $\mathbb{A}$로 구성된 문자열을 $\mathbb{A}^*$이라 표현한다.
앞선 알파벳 $\mathbb{A}_1$로 구성된 문자열의 예시로는, $1, 11, 42, \cdots$ 가 있다.
문자열의 길이를 우리는 length라 한다.
앞선 예시에서, $1$의 길이는 1, $11$의 길이는 2라 할 수 있다.
문자열에는 알파벳이 아무것도 없는 경우도 만들 수 있다.
다른 말로, 문자열의 길이가 0인 경우도 만들 수 있다.
이 경우 우리는 $\Box$ 로 표현한다.

다만, 알파벳으로 만들어진 문자열이 모호하게 해석이 되어서는 안된다.
예를 들어, $\mathbb{A}_{NO} = \{ |, || \}$인 경우를 생각하고, $a_1 = |, a_2 = ||$이라 이야기하자.
이로 만든 문자열 $|||$을 생각한다면, 이것을 읽는 방법으로는 $a_1 a_1 a_1, a_1 a_2, a_2 a_1$ 이렇게 세 가지 방식이 있을 수 있다. 

# Propositional Calculus의 표기

Propositional Calculus의 알파벳에는 참과 거짓임을 나타내는 기호 true (T) 와 false (F), propositional variable (변수)를 나타내는 기호 $x_1, x_2, \cdots$와 하나 또는 둘의 관계를 나타내는 기호 $\neg, \wedge, \vee, (, )$가 있다.
이러한 알파벳으로 만들어진 모든 문자열이 우리의 관심사는 아니다.
예를 들어, "$)($"의 경우 우리가 생각하는 규칙과 다르고 의미를 부여할 수 없다.
그래서 특별히 우리가 관심을 가지는 문장을 만드는 규칙을 정하고자 한다.
아래 규칙을 만족하는 경우 우리는 *formula* 또는 *well-formed formula (wff)*라 한다.

1. true 또는 false는 *formula*이다.
2. 모든 propositional variable $x_1, x_2, \cdots$는 *formula*이다.
3. 만약 $F$가 *formula*이라면, $\neg F$도 *formula*이다.
4. 만약 $F$와 $G$가 *formula*이라면, $(F \wedge G), (F \vee G)$도 문장이다.

다만 괄호 표시의 경우 모호함이 없다면 생략하기도 한다.
그렇다면 Propositional Calculus의 올바른 표기방식을 알았다.
표기 방법만 가지고는 무엇을 하기가 어렵다.
그러므로 이 표기된 formula에 의미를 부여해보자.

# Propositional Calculus의 의미

Propositional Calculus에서 변수에 true 혹은 false의 값을 대입할 수 있다.
Propositional Variable의 집합 $X = \{x_1, x_2, \cdots \}$과 대입될 true와 false를 잇는 함수를 우리는 assignment라 한다.
함수 assignment $\mathcal{A}: X \to \{T, F\}$라 표현할 수 있다.

Propositional Calculus의 의미는 진리표를 통해 나타낼 수 있다.
진리표란, 각각의 변수가 가지는 모든 경우의 수를 나열하고 그 결과값을 보는 것이다.

## NOT (부정)

$\neg x_1$가 가지는 진리표는 아래와 같다.

$x_1$ | $\neg x_1$
:---: | :---:
T | F
F | T

## AND (그리고)

$x_1 \wedge x_2$가 가지는 진리표는 아래와 같다.

$x_1$ | $x_2$ | $x_1 \wedge x_2$
:---: | :---: | :---:
T | T | T
T | F | F
F | T | F
F | F | F

## OR (또는)

$x_1 \vee x_2$가 가지는 진리표는 아래와 같다.

$x_1$ | $x_2$ | $x_1 \vee x_2$
:---: | :---: | :---:
T | T | T
T | F | T
F | T | T
F | F | F

여기서 주의할 점은, 보통 둘 중 하나만 선택하는 경우도 있지만 여기에서는 적어도 하나가 참이면 참이라는 점이다.

## XOR

기본적인 연산 이외 자주 활용되는 연산에 대해서도 살펴보자.
$x_1 \oplus x_2$가 가지는 진리표는 아래와 같다.

$x_1$ | $x_2$ | $x_1 \oplus x_2$
:---: | :---: | :---:
T | T | F
T | F | T
F | T | T
F | F | F

둘 중 하나만 참인 경우 참임을 나타내고 싶으면 XOR 연산을 하면 된다.
XOR의 경우 다음과 같은 동치 관계를 가진다.
$$
x_1 \oplus x_2 \equiv (\neg x_1 \wedge x_2) \vee (x_1 \wedge \neg x_2)
$$

# 참고자료

1. [카이스트 전산논리개론 강의노트](https://github.com/hongseok-yang/logic21)
2. "Mathematical Logic", Heinz-Dieter Ebbinghaus, Jorg Flum, Wolfgang Thomas [Amazon](https://www.amazon.com/Mathematical-Logic-Graduate-Texts-Mathematics/dp/3030738388/)

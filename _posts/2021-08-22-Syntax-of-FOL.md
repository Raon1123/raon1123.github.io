---
title: Syntax of First Order Logic
tags: Logic Study
---

# 들어가며

이 글에서는 논리학에서 자주 사용되는 구조인 1차 논리의 (First Order Logic, a.k.a. FOL) 통사론에 (Syntax) 대해 알아보자.
1차 논리의 기호는 어떠한 것이 있고, 기호를 어떻게 결합하여 1차 논리 문장을 만들 수 있는지에 대해 알아보고자 한다.

# Terms of First Order Logic

규칙에 대해 가장 먼저 정의할 내용은, 기본적인 term이다.
*S-term*은 ${\mathbb{A}_S}^*$의 부분집합으로 아래 규칙을 만족한다.

1. 모든 variable은 *S-term*이다.
2. 모든 constant는 *S-term*이다.
3. 만약 문자열 $t_1, \cdots, t_n$ 이 모두 *S-term* 이고, $f$가 $n$개의 항을 가진 function symbol ($n$-ary function symbol)이라면, $ft_1 \cdots t_n$도 *S-term*이다.

이러한 규칙으로 만들어진 S-term의 집합을 우리는 $T^S$라 표현하자.

## Example of S-term

S-term의 예시를 살펴보자.

# Formulas of First Order Logic

다음으로 만들 것은 명제이다.
*S-formula*은 ${\mathbb{A}_S}^*$의 부분집합으로 아래 규칙을 만족한다.

1. 만약 $t_1$과 $t_2$가 S-term이라면, $t_1 \equiv t_2$ 는 *S-formula*이다.
2. 만약 $t_1, \cdots, t_n$가 모두 S-term이고, $R$이 n개의 항을 가진 relation symbol이라면 (n-ary relation symbol), $R t_1 \cdots t_n$은 *S-formula* 이다.
3. 만약 $\varphi$가 S-formula라면, $\neg\varphi$는 *S-formula*이다.
4. 만약 $\varphi$와 $\psi$가 S-formula라면, $(\varphi \wedge \psi), (\varphi \vee \psi), (\varphi \to \psi), (\varphi \leftrightarrow \psi)$는 *S-formula*이다.
5. 만약 $\varphi$가 S-formula이고, $x$가 변수라면, $\forall x \varphi$, $\exists x \varphi$도 *S-formula*이다.

이렇게 만들어진 S-formula의 집합을 우리는 $L^S$라 표현하자.
특별히 이러한 S-formula 중에서 1, 2를 통해 만들어진 S-formula는 S-formula로 부터 만들어 지지 않는다.
S-formula에서 가장 기본이 되는 formula로 이것을 특별히 atomic formula라 한다.
atomic formula의 경우, FOL에서 증명을 할 때, 귀납법을 활용하게 되는데 여기서 base case가 되게 된다.
3 - 4에서 만들어진 수식의 경우 각각을 부르는 명칭이 있다.

| S-formula | name |
| --- | :---: |
| $\neg\varphi$ | negation |
| $(\varphi \wedge \psi)$ | conjunction |
| $(\varphi \vee \psi)$ | disjunction |
| $(\varphi \to \psi)$ | implication |
| $(\varphi \leftrightarrow \psi)$ | bi-implication |

## Proof by Indyction on Terms or on Formulas

우리는 S-term이나 S-formula가 특별한 성질 $P$를 만족함을 보이고 싶다면, 귀납적으로 증명하여야 한다.
정의가 귀납적으로 되어 있어, 각각의 정의별로 성질 $P$를 만족시킨다면, S-term 또는 S-formula가 성질 $P$를 만족시킨다는 것을 보일 수 있다.

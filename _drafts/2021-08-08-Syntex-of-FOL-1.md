---
title: Syntex of First Order Logic 1
tags: Logic Study
---

NOTE: 지금은 정의만 간략히 적어두었습니다, 글을 다듬을 예정입니다.
부족한 글이지만, 지적할 부분이 있다면 메일로 알려주세요.

일상생활의 언어로는 논리적 구조를 분석하는데 한계가 있고, 모호함이 있다.
그래서 우리는 명제를 기호화 하여 표현하고, 기호화된 명제를 분석하고자 한다.

# Alphabet of First Order Logic

우리의 관심사인 First Order Logic (FOL) 의 알파벳을 알아보자.

1. Variables ($v_0 , v_1, v_2, \cdots$)
2. Not, And, Or, If-then, If and Only If ($\neg , \wedge, \vee, \to, \leftrightarrow $)
3. For All, There Exists ($\forall , \exists$)
4. Equality Symbol ($\equiv$)
5. Parentheses ($(, )$)
6. Relation Symbol($P,Q,R$), Function Symbol($f, g, h$), Constants($c, c_0, c_1$) 

기본적으로 1-5까지 기호의 집합이 FOL의 알파벳 집합이며, 앞으로 $\mathbb{A}$라 표현하기로 하자.
6의 경우 상황에 따라 달라질 수 있다. 
6의 집합을 $S$라 한다면, $\mathbb{A}_S = \mathbb{A} \cup S$가 우리가 관심 있는 FOL의 Symbol set이다.
이것들을 해석하는 방법에 대해서는 다음 포스팅 (Semantics of First Order Logic)에서 다룰 예정이다.

# Terms of First Order Logic

그렇다면 $\mathbb{A}_S$의 모든 문자열이 우리가 관심을 가지는 명제가 되는가?
그렇지 않다, 예를 들어 $)($의 경우 괄호가 올바르지 않게 표현이 되어 있어 잘못되었다.
우리가 관심을 가지는 명제를 정의하여 보자.

가장 먼저 정의할 내용은, 기본적인 term이다.
*S-term*은 $\mathbb{A}_S$의 부분집합으로 아래 규칙을 만족한다.

1. 모든 variable은 *S-term*이다.
2. 모든 constant는 *S-term*이다.
3. 만약 문자열 $t_1, \cdots, t_n$ 이 모두 *S-term* 이고, $f$가 $n$개의 항을 가진 function symbol ($n$-ary function symbol)이라면, $ft_1 \cdots t_n$도 *S-term*이다.

이러한 규칙으로 만들어진 S-term의 집합을 우리는 $T^S$라 표현하자.

# Formulas of First Order Logic

다음으로 만들 것은 명제이다.
*S-formula*은 $\mathbb{A}_S$의 부분집합으로 아래 규칙을 만족한다.

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

# Example of FOL

## Group Theory

수학에서 군(Group)의 정의는 집합 $G$와 연산 $\otimes^G$가 아래 조건을 만족해야 한다.

1. 연산 $\otimes$은 결합법칙이 성립한다.
2. 항등원이 존재한다.
3. 모든 원소에 대해 역원이 존재한다.

여기서 항등원을 $e^G$라 표현하자.
그러면 우리는 $G$를 표현하는 기호의 집합으로 보고 여기에 binary function symbol $\otimes^G$, 항등원 $e^G$가 모인 집합으로 FOL을 표현할 수 있다.
즉, $S_{gr} = (G, \otimes^G , e^G)$가 된다.
이러한 알파벳을 통하여 FOL로 표현하면 아래와 같다.

1. $\forall x \forall y \forall z (x \in G \wedge y \in G \wedge z \in G \wedge (x \otimes y) \otimes z = x \otimes (y \otimes z))$
2. $\forall x (x \in G \wedge x \otimes e = x)$
3. $\forall x \exists y (x \in G \wedge y \in G \wedge x \otimes y = e)$

# 참고문헌

1. "Mathematical Logic", Heinz-Dieter Ebbinghaus, Jorg Flum, Wolfgang Thomas, Springer, 2021, 3rd Edition
2. "A Mathematical Introduction to Logic", Herbert B. Enderton, Academic Press, 2nd Edition
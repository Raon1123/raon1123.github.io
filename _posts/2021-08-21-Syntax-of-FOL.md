---
title: Syntax of First Order Logic
tags: Logic Study
---

# 들어가며

이 글에서는 논리학에서 자주 사용되는 구조인 1차 논리의 (First Order Logic, a.k.a. FOL) 통사론에 (Syntax) 대해 알아보자.
1차 논리의 기호는 어떠한 것이 있고, 기호를 어떻게 결합하여 1차 논리 문장을 만들 수 있는지에 대해 알아보고자 한다.

# Alphabet of FOL

우리가 새로운 언어를 배우게 된다면, 가장 먼저 배우는 것이 그 언어를 구성하는 기호의 (Symbol) 집합인 알파벳이다. (Alphabet)
1차 논리에서 자주 활용이 되는 기호는 아래와 같다.

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

이러한 알파벳들이 나열이 되어 있으면 이를 문자열(String)이라 한다. 
그리고 기호의 집합 $\mathbb{A}$로 부터 만들어진 문자열의 집합을 $\mathbb{A}^*$이라 한다.
그렇지만 모든 문자열이 1차 논리의 문장이 되는 것은 아니다.
특정한 규칙을 만족 시키는 문자열이 우리의 분석 대상이다.

# Terms of First Order Logic

규칙에 대해 가장 먼저 정의할 내용은, 기본적인 term이다.
*S-term*은 ${\mathbb{A}_S}^*$의 부분집합으로 아래 규칙을 만족한다.

1. 모든 variable은 *S-term*이다.
2. 모든 constant는 *S-term*이다.
3. 만약 문자열 $t_1, \cdots, t_n$ 이 모두 *S-term* 이고, $f$가 $n$개의 항을 가진 function symbol ($n$-ary function symbol)이라면, $ft_1 \cdots t_n$도 *S-term*이다.

이러한 규칙으로 만들어진 S-term의 집합을 우리는 $T^S$라 표현하자.

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

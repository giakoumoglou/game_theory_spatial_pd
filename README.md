<p align="center">
  <img src=https://c.tenor.com/i4cgk6ejhBMAAAAC/chess.gif>
</p>


# Game Theory: Spatial Prisoner's Dilemna
This script is a simulation of Martin A Nowak and Robert M May paper about "Evolutionary Games and Spatial Chaos" 1992.  
It is created by N. Giakoumoglou, M. Demetriou and P. Manouselis for a presentation in Game Theory course in May 2020.

## Prisoner's Dilemna

The prisoner's dilemma is a standard example of a game analyzed in game theory that shows why two completely rational individuals might not cooperate, even if it appears that it is in their best interests to do so. It was originally framed by Merrill Flood and Melvin Dresher while working at RAND in 1950. Albert W. Tucker formalized the game with prison sentence rewards and named it "prisoner's dilemma", presenting it as follows:

Two members of a criminal organization are arrested and imprisoned. Each prisoner is in solitary confinement with no means of communicating with the other. The prosecutors lack sufficient evidence to convict the pair on the principal charge, but they have enough to convict both on a lesser charge. Simultaneously, the prosecutors offer each prisoner a bargain. Each prisoner is given the opportunity either to betray the other by testifying that the other committed the crime, or to cooperate with the other by remaining silent. The possible outcomes are:

* If A and B each betray the other, each of them serves two years in prison
* If A betrays B but B remains silent, A will be set free and B will serve three years in prison
* If A remains silent but B betrays A, A will serve three years in prison and B will be set free
* If A and B both remain silent, both of them will serve only one year in prison (on the lesser charge).
* It is implied that the prisoners will have no opportunity to reward or punish their partner other than the prison sentences they get and that their decision by itself will not affect their reputation in the future. As betraying a partner offers a greater reward than cooperating with them, all purely rational self-interested prisoners will betray the other, meaning the only possible outcome for two purely rational prisoners is for them to betray each other, even though mutual cooperation would yield greater reward.[2]

In this case, "to betray" is defined as a dominating strategy for both players. A dominating strategy is one player's best response to the other, and it is aligned with the Sure-thing Principle. The prisoner's dilemma also illustrates that the decisions made under collective rationality may not necessarily be the same as that made under individual rationality, and this conflict can also be witnessed in a situation called "Tragedy of the Commons". This case indicates the fact that public goods are always prone to over-use.

## Iterated Prisoner's Dilemna

An extended "iterated" version of the game also exists. In this version, the classic game is played repeatedly between the same prisoners, who continuously have the opportunity to penalize the other for previous decisions. If the number of times the game will be played is known to the players, then (by backward induction) two classically rational players will betray each other repeatedly, for the same reasons as the single-shot variant. In an infinite or unknown length game there is no fixed optimum strategy, and prisoner's dilemma tournaments have been held to compete and test algorithms for such cases.

The iterated version of prisoner's dilemma is of particular interest for researchers. Due to its iterative nature, previous researchers observed that the frequency for players to cooperate could change, based on the outcomes of each iteration. Specifically, players may be less willing to cooperate if his counterpart did not cooperate for many times, which renders disappointment. Conversely, as time goes by, cooperation could increase mainly attributable to the fact that a "tacit agreement" between players has been set up. Another interesting aspect concerning the iterated version of experiment, however, is that, this tacit agreement between players has always been established successfully even though the number of iterations is made public to both sides.

## The Spatial Prisoner's Dilemna

In spatial prisoner's dileman there are two players those who always cooperate, C, and those who always defect, D. We place those players on a two dimensional lattice (grid), each lattice site is occupied either by a C or a D. In each round of the game (each generation), the players play the PD game with nearest neighboring sites and with one's own site (thus we define these sites as a territory – a 3x3 grid). The score for each player is the sum of the payoffs in these encounters with neighbors. At the start of the next generation, each lattice-site is occupied by the player with the highest score among the previous owner and the immediate neighbors. Boundaries are fixed but we can also define the lattice as a torus. Conclusions we will deduct remain true if players interact only with the four orthogonal neighbors in square lattices or self-interactions are included.

## The Prisoner's Dilemna Game

|       | **C** | **D** |
|:-----:|:-----:|:-----:|
| **C** |  R=1  |  S=0  |
| **D** | T=b>1 |  P=0  |

for T > R > P ≥ S

## Chaos in the Spatial PD game

The dynamical behavior of the system depends on the parameter b.

* (b > 1.8) 2x2 or larger cluster of D will continue to grow at the corners.
* (b < 1.8) big D cluster will shrink
* 9b < 2) 2x2 or larger cluster of C will continue to grow
* 9b > 2) C clusters do not grow
* (2 > b > 1.) C clusters can grow in regions of D and vice versa

Chaos persists in shifting patterns C → D, D → C, D → D, C → C

## Some Examples

Color assignments:
C → C blue
D → D red
D → C yellow
C → D green

fc = frequency of cooperators
limT→inf fc = 12log2 – 8 = 0.318 can be proven
Although this approximation always works when we have 10% random D and 1.8<b<2 we don’t know why it does so!

### 10% D randomly at 99x99 lattice, T=200, b=1.6
![image](https://user-images.githubusercontent.com/57758089/155201708-03e20e50-56ea-4cf8-bc3a-bd4228dce3d4.png)
![image](https://user-images.githubusercontent.com/57758089/155201760-7302bf74-36b0-447f-b45e-4a94128c49a8.png)

<p align="center">
  <img src="https://user-images.githubusercontent.com/57758089/155201708-03e20e50-56ea-4cf8-bc3a-bd4228dce3d4.png">
</p>
<p align="center">
  <img src=![image](https://user-images.githubusercontent.com/57758089/155201760-7302bf74-36b0-447f-b45e-4a94128c49a8.png)>
</p>


### 10% D randomly at 99x99 lattice, T=200, b=1.9

### 10% D randomly at 99x99 lattice, T=200, b=2.5

### 1D at the center of the 99x99 lattice, T=2000, b=1.9

### 8 Neighbors (thus self interaction exluded)

* “Interesting Region" is 5/3>b>8/5 (here b=1.62 with 10% random D)
*  Similar symmetric patterns 
* fc → 0.299

### 5 Neighbors (including self)

* “Interesting Region” is 2>b>5/3 (here b=1.8 with 10% random D)
* Similar symmetric patterns 
* fc  → 0.374

### 4 Neighbors (thus self interaction exluded)

* “Interesting Region” is 3/2>b>4/3 (here b=1.4 with 10% random D)
* Similar symmetric patterns 
* fc → 0.374

### Conclusions and Applications

Although the details of the patterns depend on the value of b, a wide range of values leads to chaotic patterns whose nature is almost always independent of the initial proportions of C and D.
Such deterministically generated spatial structures may model and describe pre-biotic evolution of cooperation (among molecules, cells or organisms) as well as Turing models and 2-state Ising models.




<p align="center">
  <img src=https://c.tenor.com/i4cgk6ejhBMAAAAC/chess.gif>
</p>


# 1. Game Theory: Spatial Prisoner's Dilemna
This script is a simulation of Martin A. Nowak and Robert M. May paper about "Evolutionary Games and Spatial Chaos" 1992.  
It is created by N. Giakoumoglou, M. Demetriou and P. Manouselis for a presentation in Game Theory course in May 2020.

## 1.1 The Spatial Prisoner's Dilemna

In spatial prisoner's dileman there are two players those who always cooperate, C, and those who always defect, D. We place those players on a two dimensional lattice (grid), each lattice site is occupied either by a C or a D. In each round of the game (each generation), the players play the PD game with nearest neighboring sites and with one's own site (thus we define these sites as a territory – a 3x3 grid). The score for each player is the sum of the payoffs in these encounters with neighbors. At the start of the next generation, each lattice-site is occupied by the player with the highest score among the previous owner and the immediate neighbors. Boundaries are fixed but we can also define the lattice as a torus. Conclusions we will deduct remain true if players interact only with the four orthogonal neighbors in square lattices or self-interactions are included.

## 1.2 The Prisoner's Dilemna Game

The PD can be formulated in tabular form as follows, where T > R > P ≥ S

<div align="center">

|          |      C     |  D |
|----------|:-------------:|------:|
| C |  R=1 | S=0|
| D | T=b>1 |    P=0 |

</div>

## 1.3 Chaos in the Spatial PD game

The dynamical behavior of the system depends on the parameter b.

* (b > 1.8) 2x2 or larger cluster of D will continue to grow at the corners.
* (b < 1.8) big D cluster will shrink
* (b < 2) 2x2 or larger cluster of C will continue to grow
* (b > 2) C clusters do not grow
* (2 > b > 1.) C clusters can grow in regions of D and vice versa

Chaos persists in shifting patterns C → D, D → C, D → D, C → C

## 1.4 Some Examples

Color assignments:
* C → C blue
* D → D red
* D → C yellow
* C → D green
 
fc = frequency of cooperators  
limT→inf fc = 12log2 – 8 = 0.318 can be proven  
Although this approximation always works when we have 10% random D and 1.8<b<2 we don’t know why it does so!

### 1.4.1 10% D randomly at 99x99 lattice, T=200, b=1.6


<div align="center">
<p float="center">
  <img src="https://user-images.githubusercontent.com/57758089/155201708-03e20e50-56ea-4cf8-bc3a-bd4228dce3d4.png" width="500" height="400">
  <img src="https://user-images.githubusercontent.com/57758089/155201760-7302bf74-36b0-447f-b45e-4a94128c49a8.png" width="500" height="400">
</p>
</div>
</div>

### 1.4.2 10% D randomly at 99x99 lattice, T=200, b=1.9

<div align="center">
<p float="center">
  <img src="https://user-images.githubusercontent.com/57758089/155201826-1942f801-b7cf-4bbf-b09c-fe2a071c6908.png" width="500" height="400">
  <img src="https://user-images.githubusercontent.com/57758089/155201835-584f44c6-56d6-410b-b97a-eaebe52ae3fa.png" width="500" height="400">
</p>
</div>

### 1.4.3 10% D randomly at 99x99 lattice, T=200, b=2.5

<div align="center">
<p float="center">
  <img src="https://user-images.githubusercontent.com/57758089/155201846-90b35462-127c-4d08-a3c4-769ef73700dd.png" width="500" height="400">
  <img src="https://user-images.githubusercontent.com/57758089/155204559-de01b018-ea13-40b7-a0f7-5f2004abd880.png" width="500" height="400">
</p>
</div>

### 1.4.4 1 D at the center of the 99x99 lattice, T=2000, b=1.9

<div align="center">
<p float="center">
  <img src="https://user-images.githubusercontent.com/57758089/155201865-d4ee3265-b2e4-4c8f-a72b-da733f0a5bbf.png" width="500" height="400">
  <img src="https://user-images.githubusercontent.com/57758089/155201872-1c087247-8118-44e7-8206-6b7d7c7a3ee4.png" width="500" height="400">
</p>
</div>

### 1.4.5 8 Neighbors (thus self interaction exluded)

* “Interesting Region" is 5/3>b>8/5 (here b=1.62 with 10% random D)
*  Similar symmetric patterns 
* fc → 0.299

<div align="center">
<p float="center">
  <img src="https://user-images.githubusercontent.com/57758089/155201888-3c6b2419-b0ee-4a3e-847b-5d9bf70c92f8.png" width="500" height="400">
  <img src="https://user-images.githubusercontent.com/57758089/155201895-85bce395-2909-4144-b8be-8f1ea9a344f7.png" width="500" height="400">
</p>
</div>

### 1.4.6 5 Neighbors (including self)

* “Interesting Region” is 2>b>5/3 (here b=1.8 with 10% random D)
* Similar symmetric patterns 
* fc  → 0.374

<div align="center">
<p float="center">
  <img src="https://user-images.githubusercontent.com/57758089/155201919-91048e86-9421-402d-be25-c654174ef531.png" width="500" height="400">
  <img src="https://user-images.githubusercontent.com/57758089/155201925-c72df11d-5540-4349-90ad-7caf72dc5362.png" width="500" height="400">
</p>
</div>

### 1.4.7 4 Neighbors (thus self interaction exluded)

* “Interesting Region” is 3/2>b>4/3 (here b=1.4 with 10% random D)
* Similar symmetric patterns 
* fc → 0.374

<div align="center">
<p float="center">
  <img src="https://user-images.githubusercontent.com/57758089/155201940-ad524a6d-0977-4871-bcd1-4e486be19d7e.png" width="500" height="400">
  <img src="https://user-images.githubusercontent.com/57758089/155201946-5b227b02-938f-4826-9e59-0fd0ac904f95.png" width="500" height="400">
</p>
</div>

## 1.5 Conclusions and Applications

Although the details of the patterns depend on the value of b, a wide range of values leads to chaotic patterns whose nature is almost always independent of the initial proportions of C and D.
Such deterministically generated spatial structures may model and describe pre-biotic evolution of cooperation (among molecules, cells or organisms) as well as Turing models and 2-state Ising models.

## 2. Support
Reach out to me:
- [giakou4's email](mailto:ngiakoumoglou@hotmail.com "ngiakoumoglou@hotmail.com")

## 3. Citation
* Nowak, M., May, R. Evolutionary games and spatial chaos. Nature 359, 826–829 (1992). https://doi.org/10.1038/359826a0

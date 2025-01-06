# Rules of Advanced Risk
## Board
Each player has a "capital" that is their base, it provides all basic income and training and must be protected at all costs. If a player loses their capital, they are out of the game. <br>
The capitals are placed on the map such that they are as far from each other as possible.<br>
Squares are coloured to show different resources, grey for iron and brown for lumber.<br>
The coloured areas dictate the areas where players can place their starting troops.<br>
<img src="https://github.com/Nathan3-14/risk/blob/main/board.png">
## Definitions
Force - A group of one or more [troops](#troops), (can be represented by a token)<br>
Resources - (iron, lumber) - Used to ***build***, represented by relevant tokens<br>
Build - Spend ***resources*** and money to place a [building](#building) in and ***occupied*** area<br>
Occupied - An area is occupied if there is a [troop](#troops) or a force on it<br>
Move - Move a [troop](#troops) or force to an adjacent area<br>
Transfer - Move any number of [troops](#troops) from one force to another, or an adjacent space<br>
Train - Move all [troops](#troops) in **training** to **ready** and buy [troops](#troops) into **training** according to their [costs](#costs)<br>
## Setup
-- coming soon --
## Turn Order
1. Gain $5 + $2/factory
2. Per force on a resource, gain that resource
3. ***Train*** [troops](#troops)
4. ***Move*** and [Attack](#fighting)
5. [Build](#building)
6. ***Transfer*** from up to two forces
## Fighting
Only ***forces*** can attack. They can attack other ***forces***, [buildings](#building) and [troops](#troops).<br><br>
In order to attack, dice are rolled in accordance to the [atk values](#statistics) of the attacking troops.<br>
The dice can be grouped in order to try to beat the [def values](#statistics) of the defending [troops](#troops) or [buildings](#building).<br>
If there are any enemy forces remaining, they attack back with an additional 1D4/troop lost (max 3D4, 1D4 if force is entirely wiped out).<br>6
If no attacking troop are lost, the most powerful attacking troop is lost.
If there are defending units left, all units return to their original positions.
<br>
<a href="https://nathan3-14.github.io/risk/animation">An example of an attack</a> (all dice types represented by D6 for simplicity)
### Statistics
Troop | Atk Force | Def Force | Training Cost | Training Time
-|-|-|-|-
Undefended Troop | | 2 | | 
Infantry | D4 | 3 | $1/2 | 1 Turn
Cavalry | D4 + 1 | 5 | $4 | 2 Turns
Cannon | D4 (D6 + 1) | 3 | $7 | 3 Turns
Factory | D4 - 1 | 9 | | 
Capital | D6 + 3 | 15 | | 
Training Camp | D6 + 1 | 7 | | 
## Troops
Troops are individual units that can be part of forces.
Both Infantry and Cavalry attack in the same way. However, cannons can join an attack if they are adjacent to the defending force and not part of the attacking force, attacking with the force listed in the brackets. !! revise !! (adjacent to defending or attacking force) !!<br>
For costs and training times, see [statisitcs](#statistics)
## Building
Training Camp - Allows more troops to be trained - 2 iron, 4 lumber<br>
Factory - Produces passive income - 4 iron, 3 lumber


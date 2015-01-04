---
title: Game of Life
author: Tim Menzies
excerpt: What was true will ever more be
layout: default
---

_(Materials taken, with thanks, from [Stanford's cs221](http://stanford.edu/~cpiech/cs221/handouts/pythonTutorial.html) subject.


<em>Our "Game of Life" board will be an n-by-n grid of
square cells, each of which can be either "alive" or
"dead". A given cell's neighbors are those cells
directly above, below, left, or right of the cell,
plus with the cells diagonally adjacent to it (the
cells touching its diagonals).

Each cell changes
from one time step to the next according to the
following rules:

+ Any living cell with fewer than two living neighbors dies.
+ Any living cell with exactly two or exactly three living neighbors remains alive.
+ Any living cell with more than three living neighbors dies.
+ Any dead cell with exactly three living neighbors becomes alive.

![Life]({{site.url}}/img/Conways_game_of_life_breeder_animation.gif)

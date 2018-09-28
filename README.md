# Game-Of-Life

This project tries to recreate the game of life, where you have an area. in which live cells and dead cells are found and simple rules must be met:
If a living cell has less than 2 or more than 3 cells next to it, it dies
If a dead cell has exactly 3 cells next to it it revives

## Getting Started

It is a project for which you need to have ruby installed.

### Installing


You can download the project by clicking on clone or download

![](https://i.imgur.com/7qqh8Nz.png)


Placing yourself in the project folder once downloaded run the main.rb file


```
ruby main.rb
```

Which contains an example of how to play the game


``` javascript=
require './GameOfLife'
juego = GameOfLife.new(20, 15)
juego.play
```

The command is used to reference the main class of the project

```
require './GameOfLife'
```

The command is used to create a the size of the area and the number of generations that will be created with the dimensions that are desired

```
juego = GameOfLife.new(20, 15)
```
>The first parameter defines the size of the zone and the second defines the number of generations

The command starts the game

```
juego.play
```

## zone file

This file contains the class that creates and displays the zone

```
doZone
```

>Method that creates the zone with the required dimensions


```
signzone
```

>Method that paints the zone in the console

## neighbour file

This file contains the function that validates the number of neighbors in each cell, living or dead


```
manyNeighbour
```

>Method that compares position by position the number of neighbors and stores them in a matrix


## GameOfLife file

This file contains the function that controls that the game is carried out and the evolution of the generations


```
play
```

>Method that starts the game

```
validEvolution
```

>Method that controls whether the cell lives or dies in vase to the neighboring matrix

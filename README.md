# Ruby-Knight-Travails

Problem solving project from [TheOdinProject](https://www.theodinproject.com/paths/full-stack-ruby-on-rails/courses/ruby-programming/lessons/knights-travails), built on Ruby language.

My soluion program contains 3 search alogirthms: Breadth First Search, Dijkstra's algorithm and A* Search. I think BFS is enough for this problem but I want to try re-implement the 2 others, that I found when research about this program, too.

## Problem Description

The task is to create a #knight_travails method which received coordinates of the X square and Y square on the board, then showed the shortest path from X to Y as an array of coordinates of moves. The moves have to behave like knight move, that is move 2 in a coordinate and 1 in the other.

## Usage
Clone the repo and change the start square and end square in `main.rb` file, eg: `knight_moves([0, 0], [3, 3])`. Then run `ruby main.rb` in bash to find the closest path between them.

The default search method is astar_search. To change to the 2 others method, change `:astar_search` inside `knight_moves.rb` file into `:breadth_first_search` or `dijksta.rb`

# Thought

This program turned out to be a graph search problem that searched for the shortest path between 2 verties. The search methods were coded so that it can be used for different kind of graphs

Many thanks to the author of https://www.redblobgames.com/pathfinding/a-star/introduction.html for the very nice Introduction to the A* Algorithm that I studied to apply in this project 

# frozen_string_literal: true

require_relative 'breadth_first_search'

def reconstruct_path(came_from:, start:, goal:)
  current = goal
  path = [goal]
  while current != start
    current = came_from[current]
    path << current
  end
  path.reverse
end

def find_shortest_path(graph:, start:, goal:, search_method: method(:breadth_first_search))
  came_from, * = search_method.call(graph: graph, start: start, goal: goal)
  reconstruct_path(came_from: came_from, start: start, goal: goal)
end

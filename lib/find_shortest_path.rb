# frozen_string_literal: true

require_relative 'breadth_first_search'

def reconstruct_path(came_from:, start:, goal:)
  current = goal
  path = []
  while current != start
    path << current
    current = came_from[goal]
  end
  current << start
  current.revert
end

def find_shortest_path(graph:, start:, goal:)
  came_from = breadth_first_search(graph: graph, start: start, goal: goal)
  reconstruct_path(came_from: came_from, start: start, goal: goal)
end

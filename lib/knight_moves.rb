# frozen_string_literal: true

require_relative 'find_shortest_path'
require_relative 'KnightGraph'

def knight_moves(start_square, end_square)
  find_shortest_path(graph: KnightGraph.new, start: start_square, goal: end_square)
end

p knight_moves([3, 3], [0, 0])

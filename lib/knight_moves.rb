# frozen_string_literal: true

require_relative 'find_shortest_path'
require_relative 'KnightGraph'
require_relative 'dijkstra'
require_relative 'astar_search'

def knight_moves(start_square, end_square)
  shortest_path = find_shortest_path(graph: KnightGraph.new, start: start_square, goal: end_square, search_method: method(:astar_search))
  puts "You have made it in #{shortest_path.length}! Here's your path"
  shortest_path.each do |move|
    puts move.to_s
  end
end

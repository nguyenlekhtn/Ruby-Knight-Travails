require_relative '../lib/breadth_first_search'
require_relative '../lib/KnightGraph'

p breadth_first_search(graph: KnightGraph.new, start: [0, 0], goal: [3, 3])
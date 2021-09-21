require_relative '../lib/find_shortest_path'
require_relative '../lib/KnightGraph'

came_from = breadth_first_search(graph: KnightGraph.new, start: [0, 0], goal: [3, 3])
p reconstruct_path(came_from: came_from, start: [0, 0], goal: [3, 3])
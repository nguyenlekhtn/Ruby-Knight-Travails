require_relative 'PriorityQueue'

def heuristic(a, b)
  # Manhattan distance on a square grid
  x1, y1 = a
  x2, y2 = b

  (x1 - x2).abs + (y1 - y2).abs
end

def astar_search(graph:, start:, goal:, heuristic_method: method(:heuristic))
  frontier = PriorityQueue.new
  frontier.push(data: start, priority: 0)
  came_from = {}
  came_from[start] = nil
  cost_so_far = {}
  cost_so_far[start] = 0

  until frontier.empty?
    current = frontier.pop

    break if current == goal

    graph.neighbours(current).each do |nxt|
      new_cost = cost_so_far[current] + graph.cost(current, nxt)
      if !cost_so_far.has_key?(nxt) || new_cost < cost_so_far[nxt]
        cost_so_far[nxt] = new_cost
        came_from[nxt] = current
        priority = new_cost + heuristic_method.call(nxt, goal)
        frontier.push(data: nxt, priority: priority)
      end
    end
  end

  [came_from, cost_so_far]
end
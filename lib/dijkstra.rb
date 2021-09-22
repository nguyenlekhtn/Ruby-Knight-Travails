require_relative 'PriorityQueue'

def dijkstra(graph:, start:, goal:)
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
        frontier.push(data: nxt, priority: new_cost)
      end
    end
  end

  [came_from, cost_so_far]
end
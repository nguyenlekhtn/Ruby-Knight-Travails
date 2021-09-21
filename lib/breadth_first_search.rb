# frozen_string_literal: true

def breadth_first_search(graph:, start:, goal:)
  frontier = Queue.new
  frontier << start
  came_from = {}

  until frontier.empty?
    current = frontier.pop

    break if current == goal

    graph.neighbours(current).each do |nxt|
      unless came_from.key?(nxt)
        frontier << nxt
        came_from[nxt] = current
      end
    end

  end

  came_from
end

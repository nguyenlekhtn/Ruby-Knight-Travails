# frozen_string_literal: true

class KnightGraph
  def initialize
    @width = 8
    @height = 8
  end

  attr_reader :width, :height

  def cost(_current, _next)
    1
  end

  def in_range?(x, y)
    x.between?(0, width - 1) && y.between?(0, height - 1)
  end

  def neighbours(location)
    x, y = location
    possible_moves = [
      [x + 2, y + 1],
      [x + 2, y - 1],
      [x - 2, y + 1],
      [x - 2, y - 1],
      [x + 1, y + 2],
      [x + 1, y - 2],
      [x - 1, y + 2],
      [x - 1, y - 2]
    ]

    # ugly path hack https://www.redblobgames.com/pathfinding/a-star/implementation.html#troubleshooting-ugly-path
    possible_moves.reverse! if (x + y).even?

    possible_moves.select { |neighbour_x, neighbour_y| in_range?(neighbour_x, neighbour_y) }
  end
end

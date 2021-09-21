# frozen_string_literal: true

require_relative '../lib/KnightGraph'

knight_grapth = KnightGraph.new
p knight_grapth.neighbours([3, 3])
p knight_grapth.neighbours([0, 0])
p knight_grapth.neighbours([7, 0])

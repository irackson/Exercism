require 'awesome_print'

# Write your code for the 'Queen Attack' exercise in this file. Make the tests in
# `queen_attack_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/queen-attack` directory.

class Queens
  def initialize(pieces)
    pieces[:black] = [6, 7] unless pieces[:black]
    raise ArgumentError, 'arg error' unless pieces[:white] && pieces[:black] && !pieces[:white][0].negative? && !pieces[:black][0].negative? && !pieces[:white][1].negative? && !pieces[:black][1].negative? && (pieces[:white][0] < 8) && (pieces[:white][1] < 8) && (pieces[:black][0] < 8) && (pieces[:black][0] < 8) && pieces[:white] != pieces[:black]

    @white = pieces[:white]
    @black = pieces[:black]
  end

  def attack?
    ((@white[0] == @black[0]) || (@white[1] == @black[1]) || (((@white[1] - @black[1]) / (@white[0] - @black[0])).abs == 1))
  end
end

queens = Queens.new(white: [2, 2], black: [0, 4])
puts queens.attack?

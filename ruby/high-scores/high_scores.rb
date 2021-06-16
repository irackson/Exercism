# Write your code for the 'High Scores' exercise in this file. Make the tests in
# `high_scores_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/high-scores` directory.
require 'awesome_print'
class HighScores
  attr_reader :scores

  def initialize(scores)
    @scores = scores
  end

  def list_of_scores
    @scores
  end

  def latest
    @scores.last
  end

  def personal_best
    @scores.max
  end

  def personal_top_three
    @scores.sort.reverse.slice(0, 3)
  end

  def personal_top_highest_to_lowest; end

  def personal_top_when_there_is_a_tie; end

  def personal_top_when_there_are_less_than_3; end

  def personal_top_when_there_is_only_one; end

  def latest_is_personal_best?
    @scores.max == @scores.pop
  end
end
data = [70, 40, 10, 100]
scores = HighScores.new data
ap scores.list_of_scores

ap scores.latest_is_personal_best?
# ap scores.personal_top_three
# [1, 2].slice(0, )

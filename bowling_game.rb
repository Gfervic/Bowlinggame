class Game

  def initialize
    @rolls = []
    @score = 0
  end

  def roll(pins)
    @rolls << pins
    @score = score + pins
  end

  def score
    @score
  end

end

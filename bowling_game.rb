class Game

  def initialize
    @rolls = []
  end

  def roll(pins)
    @rolls << pins
  end

  def score
    score = 0
    frame = 0
    first_in_frame = 0
    while frame < 10
      if spare?(first_in_frame)
        score += spareScore(first_in_frame)
        first_in_frame += 2
      else
        score += frameScore(first_in_frame)
        first_in_frame += 2
      end
      frame +=1
    end
    score
  end

#spare method
  def spare?(first_in_frame)
    @rolls[first_in_frame] + @rolls[first_in_frame + 1] == 10
  end

  def spareScore(first_in_frame)
    10 + @rolls[first_in_frame + 2]
  end

  def frameScore(first_in_frame)
    @rolls[first_in_frame] + @rolls[first_in_frame + 1]
  end




  #   @rolls.each do |roll|
  #     @score += roll
  #   end
  #   score
  # end





end

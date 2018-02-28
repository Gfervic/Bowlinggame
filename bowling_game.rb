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
        score += 10 + @rolls[first_in_frame + 2]
        first_in_frame += 2
      else
        score += @rolls[first_in_frame] + @rolls[first_in_frame + 1]
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




  #   @rolls.each do |roll|
  #     @score += roll
  #   end
  #   score
  # end





end

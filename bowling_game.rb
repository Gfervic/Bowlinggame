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
      if strike?(first_in_frame)
        score += strke_score(first_in_frame)
        first_in_frame += 1
      elsif spare?(first_in_frame)
        score += spare_score(first_in_frame)
        first_in_frame += 2
      else
        score += frameScore(first_in_frame)
        first_in_frame += 2
      end
      frame +=1
    end
    score
  end

# ***TRYING TO ACCOMPLISH THE INTERFACE TO RUN IT ****
  def self.rolls_to_array(rolls)
    rolls.gsub!(/\n\[/,'')
      rolls[0] = ''
      rolls = rolls.split(/],/)
      rolls = rolls.map { |roll| roll = roll.split(',') }
      rolls.pop
      return rolls
    end

    private
  # / method
  def spare?(first_in_frame)
    frameScore(first_in_frame) == 10
  end
  # X method
  def strike?(first_in_frame)
    @rolls[first_in_frame] == 10
  end

  #scores
  def spare_score(first_in_frame)
    10 + spare_bonus_ball(first_in_frame)
  end

  def strke_score(first_in_frame)
    10 + strike_bonus_balls(first_in_frame)
  end

  def frameScore(first_in_frame)
    @rolls[first_in_frame] + @rolls[first_in_frame + 1]
  end

  #bonus / & X balls

  def spare_bonus_ball(first_in_frame)
    @rolls[first_in_frame + 2]
  end

  def strike_bonus_balls(first_in_frame)
    @rolls[first_in_frame + 1] + @rolls[first_in_frame + 2]
  end

end

# *** WORKING ON THE INTERFACE SIDE TO RUN IT. User input is get as a string but i need an array. ***
puts 'Please insert your input of rolls'
rolls = gets.chomp
game = Game.new()
rolls = Game.rolls_to_array(rolls)
rolls.each do |pins|
  game.roll(pins)
end





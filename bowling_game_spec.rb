require 'rspec'
require_relative 'bowling_game'

describe 'bowling game logic' do

  before do
    @game = Game.new
  end

  #1test (we can get rid of them with the before action)
  # it 'can create a new game' do
  # end

  # it 'can roll' do
  #   @game.roll(0)
  # end

  #2test
  def roll_many(n, pins)
    n.times do
      @game.roll(pins)
    end
  end

  it 'can roll a gutter game' do
    roll_many(20,0)
    expect(@game.score).to eq 0
  end

  it 'can roll all ones' do
    roll_many(20,1)
    expect(@game.score).to eq 20
  end

  #3rd test
  it 'can roll a /' do
    roll_spare
    @game.roll(3)
    roll_many(17,0)
    expect(@game.score).to eq 16
  end

  #spare method
  def roll_spare
    @game.roll(5)
    @game.roll(5)
  end

  #4rd test
  it 'can roll a X' do
    @game.roll(10)
    @game.roll(3)
    @game.roll(4)
    roll_many(16,0)
    expect(@game.score).to eq 24
  end

  #strike method
  def roll_strike
    @game.roll(10)
  end

  #5th test
  it 'can roll a perfect game' do
    roll_many(12,10)
    expect(@game.score).to eq 300
  end

  it 'can roll all spares' do
    roll_many(21,5)
    expect(@game.score).to eq 150
  end

end


require 'rspec'
require_relative 'bowling_game'

describe 'bowling game behaviour' do

  before do
    @game = Game.new
  end

  #1test
  it 'can create a new game' do
  end

  it 'should roll' do
    @game.roll(0)
  end

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

  def roll_spare
    @game.roll(5)
    @game.roll(5) #spare
  end

  #4rd test
  it 'can roll a X' do
    @game.roll(10) #strike
    @game.roll(3)
    @game.roll(4)
    roll_many(16,0)
    expect(@game.score).to eq 24
  end

end


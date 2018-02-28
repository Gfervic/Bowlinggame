require 'rspec'
require_relative 'bowling_game'


describe 'bowling game behaviour' do

  #1test

  before do
    @game = Game.new
  end

  it 'can create a new game' do
  end

  it 'should roll' do
    @game.roll(0)
  end

  def roll_many(n, pins)
    n.times do
      @game.roll(pins)
    end
  end

  it 'can roll a gutter game' do
    roll_many(20,0)
    expect(@game.score).to eq 0
  end

  #2test

  it 'can roll all ones' do
    roll_many(20,1)
    expect(@game.score).to eq 20
  end


end


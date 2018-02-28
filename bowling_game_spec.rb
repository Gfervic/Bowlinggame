require 'rspec'
require_relative 'bowling_game'
# 1

describe 'bowling game behaviour' do

  let(:game) {game = Game.new}

  it 'can create a new game' do
    # game = Game.new
  end

  it 'should roll' do
    # game = Game.new
    game.roll(0)
  end

  it 'should roll a gutter game' do
    20.times do
      game.roll(0)
    end
    expect(game.score).to eq 0
  end
end


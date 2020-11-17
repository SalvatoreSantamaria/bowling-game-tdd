require 'rspec'
require_relative 'bowling'

describe 'Bowling Game' do 
  it('Can make a new game') do
    game = Bowling.new
  end

  it ('Can have a game with the score of 0') do
    game = Bowling.new
    20.times{game.roll(0)}
    expect(game.score).to eq(0)
  end

  it ('Can have a game where each roll was 1') do
    game = Bowling.new
    20.times{game.roll(1)}
    expect(game.score).to eq(20)
  end

  it ('Can roll a spare') do
    game = Bowling.new
    game.roll(5)
    game.roll(5)
    game.roll(3)
    20.times{game.roll(0)}
    expect(game.score).to eq(16)
  end

  it ('Can roll a strike') do
    game = Bowling.new
    game.roll(10)
    game.roll(3)
    game.roll(4)
    16.times{game.roll(0)}
    expect(game.score).to eq(24)
  end

end

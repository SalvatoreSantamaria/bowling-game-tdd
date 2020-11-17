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

end
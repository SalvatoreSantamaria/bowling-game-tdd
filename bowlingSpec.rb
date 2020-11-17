require 'rspec'
require_relative 'bowling'

describe 'Bowling Game' do 
  it('Can make a new game') do
    game = Bowling.new
  end
end
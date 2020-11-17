class Bowling

  def initialize
    @rolls = []
    @score = 0
  end

  def roll(pins) 
    return @rolls.push(pins)
  end

  def score
    @rolls.each { |i|
      @score += i
    }
    return @score
  end

end
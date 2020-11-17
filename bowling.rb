class Bowling

  def initialize
    @rolls = []
    @score = 0
  end

  def roll(pins) 
    return @rolls.push(pins)
  end

  def score
    # @rolls.each { |i|
    #   @score += i
    # }
    # return @score
    rollIndex = 0
    10.times do
      if @rolls[rollIndex] + @rolls[rollIndex + 1] == 10
        @score += @rolls[rollIndex] + @rolls[rollIndex + 1] + @rolls[rollIndex + 2]
      else 
        @score += @rolls[rollIndex] + @rolls[rollIndex + 1]
      end
      rollIndex += 2
    end
    return @score
  end
  
end
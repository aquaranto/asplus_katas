class Bowling
  
  class GameTooShort  < StandardError; end
  class GameTooLong   < StandardError; end
  class SpareTooEarly < StandardError; end
  class StrikeTooLate < StandardError; end
  class TooManyPins   < StandardError; end
  
  def initialize(throws)
    @throws = throws.split('')
  end
  
  def score

    @score = 0

    @throws.each do |throw|
      throw = throw.to_i if throw.match (/\d/)
      case throw
        when 'X'
          @score += 10
        when 1..9
          @score += throw
        when '/'
          @score += 10
        #when "-"
          #p 'You Suck!!'
      end
      #p @score
    end
    @score
  end
end

b = Bowling.new('XXX--79159----XX//')
p b.score
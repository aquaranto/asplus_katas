class Bowling
  
  class GameTooShort  < StandardError; end
  class GameTooLong   < StandardError; end
  class SpareTooEarly < StandardError; end
  class StrikeTooLate < StandardError; end
  class TooManyPins   < StandardError; end
  
  def initialize(throws)
    @throws = throws.split('')
    scoring_array =[]
    @throws.each do |throw, second_throw|
      if throw == 'X'
        scoring_array << throw
      else
        scoring_array << throw + second_throw
      end
    end
    p scoring_array
  end


  def score
    @score = 0
    @throws.each do |throw|
      throw = throw.to_i if throw.match (/\d/)
      case throw
        when 'X'
          @score =+ 10
        when 1..9
          @score += throw
        when '/'
          @score += 10
        #when "-"
          #p 'You Suck!!'
      end
    end
    @score
  end

  def strike
    #10 plus the next two indicies
  end

  def spare
    #10 minus the previous number PLUS the following number
  end
end

class Frame


end



b = Bowling.new('XXX--72159---XX4/')
p b.score

X 7/ 72 9/ X X X 23 6/ 7/3

X | [0-9oka ]
class LookAndSay
  
  def initialize(string)
  	#if the input is an array join it into a string 
  	#raise ArgumentError, "Please use only digits" if string.match(/[A-Za-z]+/) 
    #and check if it's digits, if it's letters raise an Argument Error
    #break up the digits into groups of like numbers
  	@string = string
    if @string.is_a? Array
  		@working_string = string.join 
  	elsif @string.is_a? String 
  		@working_string = string
    else
      raise ArgumentError, "Please use only digits" 
  	end
  	
    raise ArgumentError, "Please use only digits" unless @working_string.match(/[0-9]+/) 

    @solution = parse_string @working_string
  end

  def next
    interim = ""
    @solution.each do |newgrp|
    	interim << newgrp.length.to_s + newgrp[0]
    end
    @solution = parse_string interim
    self
  end

  def parse_string(string)
    string.scan(/((\d)\2*)/).map(&:first)
  end

  def to_s
     @solution.join
  end

end


class LookAndSay
  
  def initialize(string)
  	#if the input is an array join it into a string 
  	#raise ArgumentError, "Please use only digits" if string.match(/[A-Za-z]+/) 
  	@string = string
    if @string.is_a? Array
  		@working_string = string.join 
  	elsif @string.is_a? String 
  		@working_string = string
    else
      raise ArgumentError, "Please use only digits" 
  	end
  	#and check if it's digits, if it's letters raise an Argument Error
  	raise ArgumentError, "Please use only digits" unless @working_string.match(/[0-9]+/) 
	#break up the digits into groups of like numbers
    @raw_str = @working_string.scan(/((\d)\2*)/).map(&:first)
    @raw_str
  end

  def next
    grp = ""
    @raw_str.each do |newgrp|
     	grp << newgrp.length.to_s + newgrp[0]
    end
    grp
  end

  #def to_s
    # Implement me!
  #end

end


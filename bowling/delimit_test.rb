def delimit(number)
	#given a long number, insert commas every three digits starting from end	
	number = number.to_s.reverse.split('')
	comma_number = []
	until number.empty?	
		comma_number << number.shift(3).join.reverse
	end
	comma_number.reverse.join(',')
end

#p delimit(123456789)
#p delimit(1234567)


def bowling_test(throws)
	frames = throws.scan(/X|[1-9\-][1-9\-\/]/)
end

#p bowling_test("XX9/817263--9-51XXX")


def bowling_test_2(throws)
	pink = throws.split('').reverse 
	bananas = []
	if pink[1] == "X" || pink[1] == "/"
		bananas << throws.split('').pop(3).join
	end
	p bananas
	frames = throws.scan(/X|[1-9\-][1-9\-\/]/)
	#frames << bananas
	#frames.flatten!
end

p bowling_test_2("XX9/817263--9-531/6")
p bowling_test_2("X7/729/XXX236/7/3")
p bowling_test_2("-X" + "-" * 18)
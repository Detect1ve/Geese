#!/usr/bin/env ruby

def hello
	puts "Hello, World!"
end

def conversion(from, where, how)
	if (from == where)
		return how
	end
	case (from + where)
		when (-1)
			if (from == -1)
				return how + 273
			else
				return how - 273
			end
		when (1)
			if (from == 0)
				return 1.8 * (how - 273) + 32
			else
				return 1.8 * (how - 32) + 273
			end
		when (0)
			if (from == -1)
				return (how * 1.8) + 32
			else
				return (how - 32) * 1.8
			end
	end
end

def check(scale_or_not)
	flag = 1
	while flag == 1 do
		case scale_or_not
			when ('C' or 'c')
				puts "Celsius scale"
				scale_or_not = -1
				flag = 0
			when ('K' or 'k')
				puts "Kelvin scale"
				scale_or_not = 0
				flag = 0
			when ('F' or 'f')
				puts "Fahrenheit scale"
				scale_or_not = 1
				flag = 0
			else
				puts "You have entered incorrect data. Repeat input"
				scale_or_not = gets.chomp
			end
	end
	return scale_or_not
end

def degree_conversion
	puts 'Input degrees'
	degrees = gets.chomp

	puts 'Intup name of the scale'
	scale = gets.chomp
	scale = check(scale)

	puts 'Input name of the conversion scale'
	convertion_scale = gets.chomp
	convertion_scale = check(convertion_scale)

	result = conversion(scale.to_i, convertion_scale.to_i, degrees.to_i)
	puts result
end

def palindrome_definition
	puts 'Input the word'
	word = gets.chomp
	if (word == word.reverse)
		puts 'This is a palindrome'
	else
		puts 'This is not a palindrome'
	end
end

hello
#degree_conversion
palindrome_definition

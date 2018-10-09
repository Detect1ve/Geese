#!/usr/bin/env ruby

def hello
        puts "Hello, World!"
end
	
def check(scale_or_not)
	flag = 1
        while flag == 1 do
                case scale_or_not
                        when ('C' or 'c')
                                puts "Celsius scale"
                                flag = 0
                        when ('K' or 'k')
                                puts "Kelvin scale"
                                flag = 0
                        when ('F' or 'f')
                                puts "Fahrenheit scale"
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
end

hello
degree_conversion

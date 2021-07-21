#Ruby program to check if a given string is a Palindrome


class Palindrome 
	def initialize(str)
		@main=str.downcase 
	end

	def check(str)
			
		if @main.empty?
			return "The string is empty"
		elsif @main== @main.reverse
			return "It is a Palindrome"
		else
			return "Not a palindrome"
		end

	end



end 


puts "Enter the String"
str = gets.chomp

object = Palindrome.new(str)

puts object.check(str)
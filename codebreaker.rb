def random_number 
	var7 = ""
	a = 0
	while a == 0
		a = rand(10)
	end
	b = rand(10)
	while b == a
		b = rand(10)
	end
	c = rand(10)
	while c == a or c == b
		c = rand(10)
	end
	d = rand(10)
	while d == a or d == b or d == c
		d = rand(10) 
	end
	a = a.to_s
	b = b.to_s
	c = c.to_s
	d = d.to_s
	
	var7 = a + b + c + d
	return var7
	
end
def how_many_bulls var1, var2
	bulls = ""
		for i in 0..3 do
			if var1[i] == var2[i]
				bulls = bulls + "b"
			end
		end
	return bulls
end
def how_many_cows var1, var2
	cows = ""
		for i in 0..3 do
			for j in 0..3 do
				if i != j
					if var1[i] == var2[j]
						cows = cows + "c"
					end
				end
			end
		end
	return cows
end
def input
	var = gets.chomp
	if var[4] != nil
		puts "Your number was too long. Has to be 4 digits."
		var = gets.chomp
	end
	if var[0] == nil
		puts "Your number was empty. Has to be 4 digits."
		var = gets.chomp
	end
	if var[1] == nil
		puts "Your number was one digit long. Has to be 4 digits."
		var = gets.chomp
	end
	if var[2] == nil
		puts "Your number was two digits long. Has to be 4 digits."
		var = gets.chomp
	end
	if var[3] == nil
		puts "Your number was three digits long. Has to be 4 digits."
		var = gets.chomp
	end
	if var[0] == var[1] or var[0] == var[2] or var[0] == var[3]
		puts "Your number can not have any repeating numbers"
		var = gets.chomp
	end
	if var[1] == var[0] or var[1] == var[2] or var[1] == var[3]
		puts "Your number can not have any repeating numbers"
		var = gets.chomp
	end
	if var[2] == var[0] or var[2] == var[1] or var[1] == var[3]
		puts "Your number can not have any repeating numbers"
		var = gets.chomp
	end
	if var[3] == var[0] or var[3] == var[1] or var[3] == var[2]
		puts "Your number can not have any repeating numbers"
		var = gets.chomp
	end
	return var
end
def start
print "Hi! Welcome to Codebreaker.\n"
print "Guess my number.\n"
var1 = random_number

var2 = input
	while var1 != var2
		puts how_many_bulls(var1, var2)
		puts how_many_cows(var1, var2)
		puts "Try Again."
		var2 = input
	end
	
	if var1 == var2
		puts "You got it!"
	end
end
def again
puts "Would you like to play again?"
puts "y/n?"
var = gets.chomp

	if var == "y"
		start
		again
	end
	if var != "y"
		print "See ya!"
	end
end
start
again
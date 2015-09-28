# Full Name Greeting
puts "What is your first name?"
first = gets.chomp
puts "What is your middle name?"
middle = gets.chomp
puts "What is your last name?"
last = gets.chomp
puts "Hello " + first + " " + middle + " " + last +"! It is very nice to meet you!"

# Bigger, Better Favorite Number
puts "What is your favorite number?"
fav = gets.chomp
better = fav.to_i + 1
puts "How about the bigger, better number of " + better.to_s + "?"
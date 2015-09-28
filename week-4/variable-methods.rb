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

=begin
* How did you define a local variable?
    You can define a local varible by naming the variable and following it with an "=" sign and then a value.
* How do you define a method?
    You can define a method with "def <method name>".  You should be sure to complete the Ruby method by using the "end" keyword.
* What is the difference between a local variable and a method?
    A local variable stores a value whereas a method is an executable piece of code.
* How do you run a ruby program from the command line?
    You can run a ruby program from the command line using the command "ruby <file.rb>".
* How do you run an RSpec file from the command line?
    You can RSpec file from the command line using the command "rspec <RSpec.rb>".
* What was confusing about the material? What made sense?
    Having to convert integer/floats to strings for output was confusing at first. This is different than in Python (a language I've had experience with) where numbers are automatically converted to strings in the proper context.
=end
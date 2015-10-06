# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? Positive integer
# What is the output? (i.e. What should the code return?) String (comma seperated integer as a string)
# What are the steps needed to solve the problem?
# Define variable for result.
# Convert input to string or array of string characters.
# Determine how long input integer is and set to length variable
# LOOP through each character in input string.
  # Add character to the result.
  # Decrement length variable.
  # IF length is divisible by 3 and not 0.
    # Add comma to the result.
# Return the result

# 1. Initial Solution
def separate_comma(int)
  result = ""
  int_as_str = int.to_s
  len = int_as_str.length()
  int_as_str.each_char do |c|
    result += c
    len -=1
    if len % 3==0 && len != 0
      result += ','
    end
  end
  return result
end

# 2. Refactored Solution
# My idea behind my refactored solution is that the various steps that I perform have been split out into their own function names.
def separate_comma(int)
  return chunk(pad(int.to_s)).strip()
end

# Chunks a string into an array of groups of n characters
def chunk(string, n=3)
  return string.scan(/.{#{n}}/).join(',')
end

# Pads the front of a string into a multiple of n
def pad(string, n=3)
  len = string.length()
  return string if (len%n == 0)
  return " " * (n-len%n)%n + string
end

# 3. Reflection
=begin
* What was your process for breaking the problem down? What different approaches did you consider?
  ** My initial process was to loop through each character in the integer and add
* What was your pseudocode effective in helping you build a successful initial solution?
* What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?
* How did you initially iterate through the data structure?
* Do you feel your refactored solution is more readable than your initial solution? Why?
=end
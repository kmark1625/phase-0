# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge by Jessie Richardson..

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: Array of numbers
# Output: Outputs the sum of the numbers in the array
# Steps to solve the problem.
# 1. Initialize a sum variable
# 2. Loop through the array and add each number to the sum variable.
# 3. Return the value of the sum.


# 1. total initial solution
def total(array_of_numbers)
  sum = 0
  array_of_numbers.each do |num|
    sum += num
  end
  return sum
end


# 3. total refactored solution
def total(array_of_numbers)
  return array_of_numbers.reduce(:+)
end


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: Array of strings
# Output: A sentence comprised of the strings from the array
# Steps to solve the problem.
# 1. Initialize a variable to hold the yresulting string.
# 2. Initialize a variable to hold the last word and pop it off the array.
# 3. Loop through the array and add the word along with a space.
# 4. Add the final word onto the array with a period.
# 5. Capitalize the result.
# 6. Return the resulting string

# 5. sentence_maker initial solution
def sentence_maker(array_of_strings)
  result = ""
  last_word = array_of_strings.pop
  array_of_strings.each do |word|
    result += word.to_s + " "
  end
  result += last_word + "."
  return result.capitalize!
end

# 6. sentence_maker refactored solution
def sentence_maker(array_of_strings)
  return array_of_strings.join(" ").capitalize + '.'
end

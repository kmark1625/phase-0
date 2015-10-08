# Calculate the mode Pairing Challenge

# I worked on this challenge by myself, with Marie Han

# I spent 1.25 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# An array
# What is the output? (i.e. What should the code return?)
# The array's mode as the value most frequently used in the array

# What are the steps needed to solve the problem?
# -- Initialize a hash
# -- Loop through the array for each number or string, find their frequency
# -- Produce array with most-frequent value
# -- If there's only one most-frequent value, it returns a single-element array
#-- If there are multiple most-frequent values, returns array with all

# 1. Initial Solution
require 'set'
def mode(array)
  freq = Hash.new(0)
  max_value = 0
  array.each do |i|
    freq[i] +=1
    if freq[i] > max_value
      max_value = freq[i]
    end
  end

  array.max_by { |x| freq [x] }

  new_array = []
  array.each do |i|
    if freq[i] == max_value
      new_array.push(i)
    end
  end
  return new_array.to_set.to_a
end




# 3. Refactored Solution

require 'set'
def mode(array)
  freq = Hash.new(0)
  max_value = 0
  array.each do |i|
    freq[i] +=1
    if freq[i] > max_value
      max_value = freq[i]
    end
  end

  freq.select{ |k,v| v == max_value }.keys

end



# 4. Reflection
=begin
* Which data structure did you and your pair decide to implement and why?
  ** My pair and I decided to implement the mode function with a hash. A hash was an easy way to keep track of how many times each object in an array appeared.
* Were you more successful breaking this problem down into implementable pseudocode
than the last with a pair?
  ** We were more successful breaking this problem down into implementable pseudocode due to the more experience that we had from practicing.
* What issues/successes did you run into when translating your pseudocode to code?
  ** We weren't quite sure how to translate the pseudocode into an efficient solution.
* What methods did you use to iterate through the content? Did you find any good ones
where you were refactoring? Were they difficult to implement?
  ** We made use of select in order to get an array with the highest values.  We were not able to find any good methods in order to create the frequency hash.
=end
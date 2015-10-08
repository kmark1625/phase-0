# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


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
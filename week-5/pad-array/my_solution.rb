# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? Array, number, string (optional)
# What is the output? (i.e. What should the code return?) Array
# What are the steps needed to solve the problem?
# LOOP through array until min_size is reached
#   Take array and fill empty space with value input
# return result


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  (min_size - array.length).times {
    array.push(value)
  }
  return array
end

def pad(array, min_size, value = nil) #non-destructive
  result = []
  array.each do |x|
    result.push(x)
  end
  (min_size - result.length).times {
    result.push(value)
  }
  return result
end



# 3. Refactored Solution



# 4. Reflection
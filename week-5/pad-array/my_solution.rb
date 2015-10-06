# Pad an Array

# I worked on this challenge by myself, with Jack Huang.

# I spent 1 hours on this challenge.


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
#use fill (destructive)
def pad!(array, min_size, value=nil)
  array.fill(value, array.length...min_size)
end
#non-destructive
def pad(array, min_size, value=nil)
  array.dup.fill(value, array.length...min_size)
end


# 4. Reflection
=begin
* Were you successful in breaking the problem down into small steps?
  * We were okay in breaking the problem down into small steps.  In the Pseudo-code,
  we had all the right steps however we could likely even break down our idea into
  even more concrete steps.
* Once you had written pseudocode, were you able to easily translate it into code?
What difficulties and successes did you have?
  * We struggled a little bit to decide what the correct loop for the job was. Once we
  were able to decide this, things went very smoothly and the translation from pseudo-
  code was easy.
* Was your initial solution successful at passing the tests? If so, why do you think
that is? If not, what were the errors you encountered and what did you do to resolve
them?
  * The initial solution was successful in passing the tests.
* When you refactored, did you find any existing methods in Ruby to clean up your code?
  * We discovered the fill method along with the dup method. Both of these methods
  helped to clean up our code significantly.
* How readable is your solution? Did you and your pair choose descriptive variable
names?
  * Our solution is fairly readable. Our refactored solution fits neatly on one line
  and the differences between the destructive vs non-destructive versions are made
  very clear.
* What is the difference between destructive and non-destructive methods in your own
words?
  * Destructive methods update the actual object being passed to it. Non-destructive
  methods will create a new object and return the new object.
=end
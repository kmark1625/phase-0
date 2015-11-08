# I worked on this challenge [Kevin Mark and Jack Huang].
# This challenge took me [#] hours.

# Pseudocode
=begin
create a method that takes a number (argument)
  loop through the sequence
    declare three variables (a,b,c)
    check to see whether variable is equal to argument
    keep updating the variables
    stop when one of the variables is greater than the argument
  end the loop
end the method
=end
# Initial Solution

def is_fibonacci?(num)
  a=0, b=1, c=1
  while (c <= num)
    if c == num
      return true
    end
    a = b
    b = c
    c = a + b
  end
  return false
end

# Refactored Solution
def is_fibonacci?(num)
  a=0, b=1, c=1
  while (c <= num)
    return true if c == num
    a = b; b = c; c = a + b
  end
  false
end

# Reflection
=begin
* What concepts did you review in this challenge?
  * I reviewed the fibonacci sequence and how to create it space-efficiently.
  I also had a nice review of overall Ruby syntax and method names.
* What is still confusing to you about Ruby?
  * Some of the syntax around if statements and using "end" still confuses me.
  It's not always clear to me when you have to use end.
* What are you going to study to get more prepared for Phase 1?
  * I'm going to continue studying the well-grounded rubyist to gain a better
  understanding of the underlying concepts in Ruby.
=end
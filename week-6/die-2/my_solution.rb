# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent 1 hours on this challenge.

# Pseudocode

# Input: An array of strings
# Output: String or an argumentError is thrown if passed an empty array.
# Steps:
# Define a class variable to hold the labels.
# Allow the sides to be retrieved via the length of the labels array.
# Generate a random number to reference a side of the die on roll.


# Initial Solution

class Die
  def initialize(labels)
    if labels == []
      raise ArgumentError
    end
    @labels=labels
  end
  def sides
    @labels.length
  end

  def roll
    @labels[Random.rand(@labels.length)]
  end
end

# Refactored Solution
class Die
  def initialize(labels)
    raise ArgumentError if labels.empty?
    @labels = labels
  end
  def sides
    @labels.length
  end
  def roll
    @labels[Random.rand(@labels.length)]
  end
end

# Reflection
=begin
* What were the main differences between this die class and the last one you created in terms of implementation?
Did you need to change much logic to get this to work?
  * The previous die class assumed that the sides were all integers from 1 to the number of sides. The die for this
  week had sides labeled as strings. Not much logic had to be updated to get this to work. You just had to update
  the initialize function to take in an array of strings and update the roll function to spit out one of the sides
  rather than an integer.
* What does this exercise teach you about making code that is easily changeable or modifiable?
  * This exercise didn't teach me much about making code that is easy to change or modify. The challenge was very
  simple and I started from scratch rather than my old solution anyways.
* What new methods did you learn when working on this challenge, if any?
  * I didn't learn about any new methods when working on this challenge. I did get a little bit more comfortable
  with creating a new class and defining its methods.
* What concepts about classes were you able to solidify in this challenge?
  * I was able to solidfy the use of instance variables. It was strange for me to be able to only have to define
  the instance variable in the initialize function and I didn't really remember that the initialize function
  actually is what constructs new objects.
=end
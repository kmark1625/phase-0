# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent .5 hours on this challenge.

# 0. Pseudocode

# Input: Integer representing number of sides on a die.
# Output: Random integer representing one of the sides of a die.
# Steps:
# Update initialize method to set the sides to the input.
# Update sides method to output the number of sides.
# Define roll method to roll a random int from 1 to sides.

# 1. Initial Solution

class Die
  def initialize(sides)
    raise ArgumentError if sides < 1
    @sides = sides
  end

  def sides
    return @sides
  end

  def roll
    rng = Random.new
    return rng.rand(@sides) + 1
  end
end


# 3. Refactored Solution
class Die
  def initialize(sides)
    raise ArgumentError if sides < 1
    @sides = sides
  end

  def sides
    @sides
  end

  def roll
    (Random.new).rand(@sides) + 1
  end
end

# 4. Reflection
=begin
* What is an Argument Error and why would you use one?
  ** An Argument Error states that an invalid argument has been passed to a function.  You would use one if you want to validate your input or put some additional restriction on your input. For example, if you don't want to take negative numbers or numbers that are too high you can throw this exception so that the user will be notified (or so that your program can handle the exception separately).
* What new Ruby methods did you implement? What challenges and successes did you have
in implementing them?
  ** I implemented using the Random class and using the rand method to generate a random number. It was hard for me to get the syntax right as the concept of having to create a new Random object was a bit wierd.
* Why would you use a Ruby class?
  ** You would use a Ruby class in order to program in an object-oriented way. It allows you to quickly create objects that can be created and acted upon.  In our example, we would be able to create multiple dice and throw them and see what value was on each die.
* What is the difference between a local variable and an instance variable?
  ** A local variable is a variable that exists within a given scope.  An instance variable is tied to a given object and can live for the existence of the object.
* Where can an instance variable be used?
  ** An instance variable can be used inside a Class.  You can define properties of a class and refer to the instance variables in the instance methods.
=end
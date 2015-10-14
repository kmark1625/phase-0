# Build a simple guessing game


# I worked on this challenge by myself.
# I spent 1 hours on this challenge.

# Pseudocode

# Input: An integer
# Output: GuessingGame#guess will return a symbol noting whether the guess is
#   correct. GuessingGame#solved? will return a boolean value true or false if #
#   the last guess was correct.
# Steps:
# Update the constructor to initialize the correct answer.
# Update the guess fuction with the right if-loop logic:
# Set an instance variable to hold the last guess
# IF guess is greater than answer
  # Return that the answer is high
# IF guess is lower than answer
  # Return that the answer is low
# IF guess is equal to answer
  # Return that the guess is correct
# Update the solved? function as follows:
# IF the last guess is correct
  # Return a true value
# ELSE
  # Return a false value

# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    if guess > @answer
      @most_recent = :high
    elsif guess < @answer
      @most_recent = :low
    else
      @most_recent = :correct
    end
    return @most_recent
  end

  def solved?
    if @most_recent == :correct
      return true
    else
      return false
    end
  end
end




# Refactored Solution
class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    if guess > @answer
      @most_recent = :high
    elsif guess < @answer
      @most_recent = :low
    else
      @most_recent = :correct
    end
  end

  def solved?
    (@most_recent==:correct) ? true : false
  end
end





# Reflection
=begin
* How do instance variables and methods represent the characteristics and
behaviors (actions) of a real-world object?
  ** Instance variables and methods are similar to the real world properties and behaviors of an object. Using a die as an example, the real-world die has a discrete number of sides as well as discrete values for the sides. An instance variable represents this by being able to define the value for the sides on a die as well as what symbol is on each face of the die. A real-world die is capable of being rolled and revealing one of its sides. An instance method allows you to simulate this behavior and take action based on each die's properties.
* When should you use instance variables? What do they do for you?
    ** You should use instance variables when the behavior is unique to each object and global class variables if you want it to be shared among all objects of that class. For example, you might put the number of sides on a die as an instance variable as one die may have 6 sides while another may have 12. You might set a global class variable to the number of dice in production that can be incremented whenever a new dice is initialized such that you can keep track of the number of dice that have been created.
* Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
  ** Flow control allows you to have logic in your programs. With flow control, you are able to specify different paths to follow based on a logical expression.  I didn't have any problems during this exercise with flow control. I think that the ternary operator is useful in flow control where the return values are true, false, or simple values.
* Why do you think this code requires you to return symbols? What are the benefits of using symbols?
    ** I think the code would work without symbols but the use of symbols is a performance improvement as symbols are gauranteed to be unique.
=end
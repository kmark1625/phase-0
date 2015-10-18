# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with Kevin Mark, Chris Savage.
# I spent 1.5 hours on this challenge.

# Pseudocode

# Input:  Credit Card number
# Output: true or false or argument error
# Steps:
# check credit card if 16 digits (length) and throw Arg error if not
# Starting with second to last digit, double every digit.
# Split every digit > 9 into single digits, and sum all untouched and split digits
# Check if multiple of ten and return true if it is or false if it isn't.

# Initialize method that takes in a credit card number (Integer).  If valid number, set instance variable to the credit card number.
# Define a check_card method
  # Split integer into array of integers.
  # Call Enumberable method #collect to double every digit except the last.
  # LOOP through each cell in arraya
   # IF number > 9
    # Split number and sum it
  # Check if multiple of ten with modulo of ten
    # Return appropriate value (true or false)

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard

  def initialize(credit_card)
    if  credit_card.to_s.split("").length != 16
      raise ArgumentError.new("Please enter a valid credit card number")
    end
    @credit_card = credit_card
  end

  def check_card
    array = @credit_card.to_s.split("")
    for i in 0...array.length
      array[i] = array[i].to_i
    end
    for i in 0..array.length - 2
      array[i] *= 2
    end

    sum = 0

    array.each do |num|
      if num >= 10
        num_array = num.to_s.split("")
        for i in 0...array.length
          num_array[i] = num_array[i].to_i
        end
        sum += num_array.reduce(:+)
      else
        sum += num
      end
    end
    p sum % 10 == 0
  end


end



# Refactored Solution
class CreditCard
  def initialize(credit_card)
    len = int_to_a(credit_card).length
    raise ArgumentError.new("Please enter a valid credit card number") if len!=16
    @credit_card = credit_card
  end

  def check_card
    array =int_to_a(@credit_card)
    last = array.pop
    array.map! {|x| x*2}.push(last) # Double every value but the last
    sum = array.map{|x| (x>=10 ? int_to_a(x).reduce(:+) : x)}.reduce(:+) # Sum single digits
    return sum % 10 == 0
  end

  def int_to_a(integer)
    # Splits integer into an array of integer values. Ex: 1234 => [1,2,3,4]
    integer.to_s.split("").map {|x| x.to_i}
  end
end


# Reflection
=begin
* What was the most difficult part of this challenge for you and your pair?
  ** The most difficult part of this challenge was refactoring our code. We weren't able to
  come up with any elegant methods that would allow us to easily change an integer into an
  array with its digits. We ended up defining our own method to do so which could look a bit
  messy and not be the most intuitive.
* What new methods did you find to help you when you refactored?
  ** The map and reduce functions were very useful for refactoring. This allowed us to apply
  an operation to all of the elements in the array efficiently.
* What concepts or learnings were you able to solidify in this challenge?
  ** We soldified the idea of taking a large task and breaking it up into smaller pieces.
  Also, it solidified the importance of refactoring the code in order to make it easier to
  understand.
=end
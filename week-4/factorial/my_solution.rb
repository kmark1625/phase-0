# Factorial

# I worked on this challenge with Jessie Richardson.


# Your Solution Below
def factorial(number)
      # =begin
      # Pseudo-code here
      # Only accepts a positive number
      # Take number and calculate factorial
      # while number >= 0
      #   number*(number-1)*(number-2)*...(1)
      # outputs result
      # =end

  if number < 0
    return None
  end
  result = 1
  while number > 1
    result = result * number
    number = number - 1
  end
  return result
end



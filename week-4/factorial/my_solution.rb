# Factorial

# I worked on this challenge by myself.


# Your Solution Below
def factorial(number)
  if number == 1
    return 1
  end
  if number == 0
    return 1
  end
  return number*factorial(number-1)
end
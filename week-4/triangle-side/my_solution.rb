# I worked on this challenge with Parminder Singh.


# Your Solution Below
def valid_triangle?(a, b, c)
  # Your code goes here!
  if a + b < c || a + c < b || b + c < a
    return false
  elsif a == 0 || b == 0 || c==0
    return false
  else
    return true
  end
end


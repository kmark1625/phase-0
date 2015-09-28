# I worked on this challenge by myself.


# Your Solution Below

def valid_triangle?(a, b, c)
  # Your code goes here!
  # Using the Triangle inequality theorem
  if a+b>c and a+c>b and b+c>a
    return true
  else
    return false
  end
end
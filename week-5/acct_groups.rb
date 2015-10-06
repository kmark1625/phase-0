# Input: An array of names (as strings)
# Output:An array holding arrays of names
# Pseudo-Code
# Define a variable to contain resulting array of groups.
# Determine the total number of people in the array.
# LOOP through every name in the list.
#   Start filling an array until it has 4 people and then push to result.
#   If remaining people is less than 3 put people in other groups.
# Return the resulting array.

def make_groups(list_of_names)
  result = []
  num_people = list_of_names.length()

  puts num_people

end

list_of_names = ["kevin", "tom", "ben", "aimeee", "caesar", "matt", "max", "annie", "cliff"]
make_groups(list_of_names)


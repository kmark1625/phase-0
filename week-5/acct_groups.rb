# Input: An array of names (as strings)
# Output:An array holding arrays of names
# Pseudo-Code
# Define a variable to contain resulting array of groups.
# Determine the total number of people in the array.
# Define a variable to hold the current group.
# LOOP through every name in the list.
#   Start filling current group until it has 4 people and then push to result.
#   If remaining people is 3 push to result
# If remaining is 2 or 1 pop them out of the current group and distribute them to
# other groups.
# Return the resulting array.

def make_groups(list_of_names)
  result = []
  num_people = list_of_names.length
  cur_group = []
  list_of_names.each do |name|
    cur_group.push(name)
    if cur_group.length == 4 || (cur_group.length == 3 && num_people == 3)
      result.push(cur_group)
      cur_group=[]
    end
  end
    # Right now the solution doesn't gracefully handle 6 people.
    # I should write a find_available function to find an open group to stick someone
    # in.
  if cur_group.length == 2
    name = cur_group.pop
    result[1].push(name)
  end
  if cur_group.length == 1
    name = cur_group.pop
    result[0].push(name)
  end
  return result
end

# Refactored solution
def make_groups(list_of_names)
  result = list_of_names.each_slice(4).to_a
  if result[-1].length < 3
    cur_group = result.pop
  end
  # Assumes there is at least valid groups
  if cur_group.length == 2
    name = cur_group.pop
    result[1].push(name)
  end
  if cur_group.length == 1
    name = cur_group.pop
    result[0].push(name)
  end
  return result
end


list_of_names = ["kevin", "tom", "ben", "aimeee", "caesar", "matt", "max", "annie", "cliff"]
result = make_groups(list_of_names)
puts "#{result}"

# Reflection
=begin
* What was the most interesting and most difficult part of this challenge?
  * The most interesting part of this challenge was thinking about how to handle edge
  cases. This was also the most difficult part of the assignment. It seems hard to
  handle edge cases in a generalized way.
* Do you feel you are improving in your ability to write pseudocode and break the
problem down?
  * I feel like my ability is improving but I still tend to miss critical steps during
  the pseudo-code phase which slows me down when I'm writing the actual code.
* Was your approach for automating this task a good solution? What could have made it
even better?
  * I think my approach is decent but I have not yet modularized my different
  functions/concepts in a way that can be reproduced for similar activities.  For
  example, I should have had a function that can easily add a single person to a group
  number or to fill groups up with remaining people. Then this function could be used
  if someone were to leave a group and the remaining people need to be split up.
* What data structure did you decide to store the accountability groups in and why?
  * I decided to store my accountability groups in an array or arrays. This is very
  easy to iterate across.  I could have also chosen to create a class to store them in.
* What did you learn in the process of refactoring your initial solution? Did you
learn any new Ruby methods?
  * I learned about the useful each_slice method. I also learned that it might be
  better to think of helper functions while I'm writing the code to begin with as this
  part of refactoring is often harder.
=end

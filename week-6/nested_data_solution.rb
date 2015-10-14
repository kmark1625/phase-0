# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
puts hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================

p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]
print number_array
puts
for i in 0..number_array.length-1
  if number_array[i].is_a? Array
    for j in 0..number_array[i].length-1
      number_array[i][j] += 5
    end
  else
    number_array[i] += 5
  end
end

print number_array
puts
# Attempted Refactored Solution
=begin
number_array.map! {|i|
  if
    if i.is_a? Array
      print i
      i.map! { |j|
        j+5
      }
    end
  else
    i+5
  end
}
print number_array
puts
=end
# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

# Reflection
=begin
* What are some general rules you can apply to nested arrays?
  ** You can reference items inside nested arrays by stacking the index (
  []) operator. This can allow you to dive deep inside a nested array
  structure.
* What are some ways you can iterate over nested arrays?
  ** You can iterate over nested arrays by using .each for each element in the array.
* Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
  ** We reused methods we were already familiar with. In trying to refactor, we attempted to use .map! but our solution didn't quite work the way we wanted it to for the nested arrays.
=end
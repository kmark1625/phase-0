# Your Names
# 1) Kevin Mark
# 2) Noah Heinrich

# We spent 1 hour on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, order_quantity)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  #error_counter = 3

  #Iterates through each key in the hash, compares if item is equal to the method input. Decreases the error counter if it isn't equal to the input.
 # library.each do |food|
  #  if library[food] != library[item_to_make]
   #   p error_counter += -1
    #end
 # end

  # If the error counter doesn't reach zero it raises an argument error
  #if error_counter > 0
   # raise ArgumentError.new("#{item_to_make} is not a valid input")
  #end
  if !library.has_key?(item_to_make)
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end


  # Serving_size return the hash value of item_to_make
  serving_size = library[item_to_make]
  #.values_at(item_to_make)[0]
  # divides order_quantity and divides by serving_size and returns the remainder
  remainder = order_quantity % serving_size

  # If it's evenly divisible, returns following string. Otherwise, returns string with leftover ingredients

  if order_quantity/serving_size == 0
    return "You don't have enough ingredients to make #{item_to_make}."
  elsif remainder==0
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{remainder} leftover ingredients."
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("pie", 5)
p serving_size_calc("THIS IS AN ERROR", 5)

# Reflection
=begin
* What did you learn about making code readable by working on this
challenge?
  ** I learned that variable names are important. It is also useful to
  make use of standard enumerable functions or standard syntax. If you
  don't, it will be very hard for someone to understand exactly what you
  are doing.
* Did you learn any new methods? What did you learn about them?
  ** We learned about .has_key? as a way of checking whether a given
  value is in a hash. It is a very useful method to quickly identify
  whether the user has given a valid hash key.
* What did you learn about accessing data in hashes?
  ** I learned that you can access hash data through the index and
  passing in the key value. You can also use values_at but this seems
  like a very inneficient way to access hash values.
* What concepts were solidified when working through this challenge?
  ** Overall concepts of refactoring were solidified while working on
  this challenge. It is important to refactor your code and organize it
  in a way that would make logical sense to most readers.
=end
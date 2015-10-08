=begin

PSEUDOCODE:

-Create a hash where keys represent items and value represents quantity.

INPUT: Grocery list hash
OUTPUT: PUTS grocery list to screen
-Define a method that prints out the list.

INPUT: Grocery list, Item, Quantity
OUTPUT: Grocery list with added item and quantity
-Define a method that adds an item to the list.

INPUT: Grocery list, Item
OUTPUT: Grocery list with removed item and quantity
-Define a method that removes an item from the list.

INPUT: Grocery list, Item, Quantity
OUTPUT: Grocery list with modified item and quantity
-Define a method that updates quantities in the list.

=end


def create_list
  puts "A new grocery list was created!"
  return list = {}
end

def addto_list(list, item, quantity)
  puts "#{quantity} of #{item} was added to the list!"
  return list[item] = quantity
end

def remfrom_list(list, item)
  puts "#{item} was removed from the list!"
  return list.delete(item)
end

def mod_list(list, item, quantity)
  puts "#{quantity} of #{item} has been modified into the list!"
  return list[item] = quantity
end

def print_list(list)
  puts "Shopping list:"
  list.each { |x, y| puts "#{x}, qty:#{y}" }
end

shopping_list = create_list
addto_list(shopping_list, "Lemonade", 2)
addto_list(shopping_list, "Tomatoes", 3)
addto_list(shopping_list, "Onions", 1)
addto_list(shopping_list, "Ice Cream", 4)
remfrom_list(shopping_list, "Lemonade")
mod_list(shopping_list,"Ice Cream", 1)
print_list(shopping_list)
// Assignment 6.7 in JavaScript (9.2.2)
// Validate Credit Card

// Pseudo-Code
/*
Input: Credit Card Number (Number)
Output: Boolean value - true if valid, false if invalid
Steps:
* DECLARE variable credit_card_array to hold the digits of the credit card.
* DECLARE variable sum to hold special_sum of single digits
* Check length of credit card and raise ArgumentError if not 16 digits.
* LOOP through each number in array.
  * Double the value in the array
  * Call special_sum method which will break down any digits greater than or equal to 10 and then add digits to the sum.
* Checks if special_sum is divisible by 10 and returns corresponding boolean value.
*/

function check_card(credit_card_number) {
  var credit_card_array = number_to_array(credit_card_number);
  var special_sum = 0;
  var length = credit_card_array.length;
  // Raise ArgumentError if length not 16
  if (length != 16) {
    throw new UserException("ArgumentError");
  }
  // Doubles every value except for last
  for (var i=0; i < length - 1; i+=2) {
    credit_card_array[i] *=2;
  }
  // Calculates the special sum of the number
  for (var i=0; i < length; i++) {
    var value = credit_card_array[i];
    if (value >= 10) {
      temp_array = number_to_array(value);
      for (var j in temp_array) {
        special_sum += temp_array[j];
      }
    } else {
      special_sum += value;
    }
  }
  return (special_sum % 10 == 0)


  // Input: Number
  // Output: Array of digits
  function number_to_array(number) {
    var array = String(number).split("");
    for (var i=0; i < array.length; i++) {
      array[i] = Number(array[i]);
    }
    return array;
  }

  function UserException(message) {
    this.message = message;
    this.name = "UserException";
  }
}

// Refactored Code
function check_card(credit_card_number) {
  // Variable Declaration
  var credit_card_array = number_to_array(credit_card_number);
  var special_sum = 0;
  var length = credit_card_array.length;

  // Validation
  if (length != 16) throw new UserException("ArgumentError");

  // Apply Algorithm to Credit Card
  for (var i=0; i < length - 1; i+=2) {
    credit_card_array[i] *=2;
  }
  for (var i=0; i < length; i++) {
    var value = credit_card_array[i];
    if (value >= 10) {
      temp_array = number_to_array(value);
      for (var j in temp_array) {
        special_sum += temp_array[j];
      }
    } else {
      special_sum += value;
    }
  }
  return (special_sum % 10 == 0)

  // Input: Number
  // Output: Array of digits
  function number_to_array(number) {
    var array = String(number).split("");
    for (var i=0; i < array.length; i++) {
      array[i] = Number(array[i]);
    }
    return array;
  }

  function UserException(message) {
    this.message = message;
    this.name = "UserException";
  }
}


// Driver Code to validate credit card
// console.log(check_card(4563960122001999));

// Review
/*
* What concepts did you solidify in working on this challenge?
  * I solidified my understanding of the differences between JavaScript and
  Ruby. Converting my Ruby solution to JavaScript was harder than expected and
  relied heavily on iterating through arrays via the index. Ruby is a much
  more object-centered language and its a lot easier to find in built-in
  methods for manipulating those objects.
* What was the most difficult part of this challenge?
  * It was difficult for me to get the initial solution right. I thought my
  algorithm was correct but I wasn't getting the correct answer. I had to walk
  through the process step by step and print out the output along the way. I
  was able to find several mistakes involving using the index vs the value in
  my loops. I also struggled finding good spots to refactor my code.
* Did you solve the problem in a new way this time?
  * This time I solved the problem in a very similar way. They key to my
  solution entered on a helper function which would convert an integer into an
  array of its digits. There seemed to be no easy built-in way to do this in
  JavaScript either so my solution ended up being very similar.
* Was your pseudocode different from the Ruby version? What was the same and what was different?
  * My pseudo-code was also very similar to Ruby because the pseudo-code
  centered around applying the same algorithm to the credit card number.  As a
  result, it had many of the same steps to solve the problem.
*/

// Assignment 9.2.1 JavaScript Grocery List
// Pesudo-Code
// Strategy: I'm choosing to have an object represent my list. I'm creating an object inside of the grocery list to carry each of the items similar to a hash, where each property is an item name and the value is the quantity. This makes for easy addition and removal of items.
/*
Create an object to represent a list.
Set a property of the list object to be an array.
Give a method to an add an item to the array.
Give a method to remove an item (via name) to the array.
Give a method to update the quantity of items
Give a method to print out the items in the array.
*/
var grocery_list = {
  items: {},
  addItem: function(name, quantity) {
    this.items[name] = quantity;
  },
  removeItem: function(name) {
    delete this.items[name];
  },
  updateQuantity: function(name, quantity) {
    this.items[name] = quantity;
  },
  printItems: function() {
    for (var item in this.items) {
      console.log("Item: " + item + " Quantity: " + this.items[item]);
    }
  }
}


// Refactored solution
var grocery_list = {
  items: {},

  addItem: function(name, quantity) {
    this.items[name] = quantity;
  },

  removeItem: function(name) {
    if (this.items.hasOwnProperty(name)) {
      delete this.items[name];
    } else {
      console.log(name + " is not currently on the grocery list.");
    }
  },

  updateQuantity: function(name, quantity) {
    if (this.items.hasOwnProperty(name)) {
      this.items[name] = quantity;
    } else {
      console.log(name + " is not currently on the grocery list.");
    }
  },

  printItems: function() {
    for (var item in this.items) {
      console.log("Item: " + item + ". Quantity: " + this.items[item] + ".");
    }
  }
}


// Driver Code
grocery_list.addItem("ipod", 30);
grocery_list.addItem("watch", 20);
console.log(grocery_list.items.ipod);
console.log(grocery_list.items.watch);
grocery_list.removeItem("ipod");
console.log(grocery_list.items.ipod);
grocery_list.updateQuantity("watch", 40);
console.log(grocery_list.items.watch);
grocery_list.printItems();
grocery_list.removeItem("Dinosaur");

// Reflect
/*
* What concepts did you solidify in working on this challenge? (reviewing the
passing of information, objects, constructors, etc.)
  * I solidified my understanding of JavaScript objects. My first attempt at a solution used an array of objects to store items.  I found that it was difficult to work with because deletion left a sparse array and pop would only allow me to return the very last value.
* What was the most difficult part of this challenge?
  * The most difficult part of this challenge was to determine the appropriate data structure to contain the grocery list. My knowledge of these structures in JavaScript was not very strong so it was not immediately obvious to me that an object would prove much superior.
* Did an array or object make more sense to use and why?
  * An object made more sense to use in this case because we were only concerned about the quantity of the item.  If we had to deal with a large amount of other properties, nested objects might start to get convoluted.
*/



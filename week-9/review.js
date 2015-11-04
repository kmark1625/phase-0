// Assignment 6.7 in JavaScript
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


// Valid Card should return true
console.log(check_card(4563960122001999));

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
// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var greeting = "Hello";
greeting += " World!";
console.log(greeting);

// Program to allow user to input their favorite food
//food = prompt("What is your favorite food?");
//console.log("Hey! That's my favorite too!")


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
var output = ""
for (i=1; i<=7; i++) {
  output += "#";
  console.log(output);
}


// Functions

// Complete the `minimum` exercise.
function min(a, b) {
  return (a < b) ? a : b;
}

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
var me = {
  name: "kevin",
  age: 25,
  fav_foods: ["pizza", "steak", "salmon"],
  quirk: "I like to play the drums"
}
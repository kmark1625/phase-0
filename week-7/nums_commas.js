// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with Gaston Gouron.

// Pseudocode
// Input: A number (integer)
// Output: A string containing number separated by commas
// Define function separateComma
// Declare variable to hold number as an array (number->array).
// Declare variable to locate index to hold location default value -3.
// LOOP until array.length + index > 0
//  Splice array first argument index position. Second argument 0. Add comma.
//  Decrement index by 3 to go to the next good position.
// Return array


// Initial Solution
function separateComma( num ){
  var array = num.toString().split('');
  var index = -3;

  while (array.length + index > 0){
    array.splice(index, 0, ',');
    index -= 4;
  }
  return array.join('');
}




// Refactored Solution
// Doesn't work well in node.js (and repl.it), but works fine in the browser.
function separateComma(num) {
  console.log(num.toLocaleString());
}


// Your Own Tests (OPTIONAL)
separateComma(1234567);



// Reflection
/*
* What was it like to approach the problem from the perspective of JavaScript?
Did you approach the problem differently?
  ** It was very similar to approaching the problem with Ruby.  We made use of
  some built in methods of JavaScript and were able to come up with a really
  clean refactored solution with the help of the toLocaleString method.
* What did you learn about iterating over arrays in JavaScript?
  ** Iterating over arrays in JavaScript is very similar to iterating over
  arrays in Ruby when using index notation. It appears that JavaScript also
  implements a version of Enumerable but we made heavy use of the index
  notation for arrays to iterate.
* What was different about solving this problem in JavaScript?
  ** This problem was very similar to solving the problem in Ruby. The main
  difference was the syntax of JavaScript vs Ruby.
* What built-in methods did you find to incorporate in your refactored
solution?
  ** We incorperated the toLocaleString method. One thing to note is that this
  does not work in node but does work appropriately in modern browsers.
*/
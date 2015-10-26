// USER STORIES

//SUM
/*
Pseudocode:
define a function that takes an array as an argument
declare a variable sum and set it to 0.
Iterate through the array
WHILE
  add the value of the current index to the sum.
END
return the sum
*/

// As a user, I want to be able to sum parts, or the whole of an array

// As a user I want to be able to sum an array that has an odd length


// As a user I want to be able to sum an array that has an even length

// Code:
function sum(array) {
  var sum = 0;
  for (var i=0; i < array.length; i++) {
    sum += array[i];
  }
  return sum
}

//AVERAGE
/*
Pseudocode:
define a function that takes an array as an argument
declare a variable sum and set it to 0
Iterate through the array
WHILE
  add the value of the current index to the sum.
END
return the sum divided by the length of the array
*/

// As a user, I want to be able to get the average of all the elements in an array


// As a user I want to be able to get the average of an array that has an odd length



// As a user I want to be able to get the average of an array that has an even length
// Code:
function average(array) {
  var sum_of_array = sum(array);
  return sum_of_array/array.length;
}


//MEDIAN

/*
Pseudocode:
define a function that takes an array as an argument
sort the array
declare a variable at the middle index and floor it
IF odd length
  return the array at the middle index
ELSE
  return the array at the middle index plus the array at the middle index minus 1 and divide that by 2
END
*/

// As a user, I want to be able to find the median of all the elements in an array

// As a user I want to be able to find the median of an array that has an odd length


// As a user I want to be able to find the median of an array that has an even length
// Code
function median(array) {
  var len = array.length;
  array.sort();
  if (len % 2 == 0) {
    console.log(array);
    return average([array[len/2-1], array[len/2]]);
  } else {
    return array[Math.floor(array.length/2)];
  }
}
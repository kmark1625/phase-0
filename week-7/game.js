/*
Mission: Have a dinosaur collect an egg and add it to his collection in a 2d (overhead) world.
Goals:
1. Be able to update the dinosaur's x and y location.
2. Be able to determine if the dinosaur is on top of the egg.
3. Allow the dinosaur to collect the egg and add it to his stash.

Objects:
dinosaur
  Properties:
    1. x coordinate
    2. y coordinate
    3. width
    4. height
    5. numberOfEggs
  Functions:
    1. Set new coordinates
    1. Collect Egg

egg
  Properties:
    1. x coordinate
    2. y coordinate
    3. width
    4. height
  Functions:
    1. Set new coordinates

Pesudo-Code:
1. Declare a dinosaur object.
2. Set initial properties of the dinosaur object.
3. Define function for set coordinates.
  a. This function will take in new x and y values and set them.
4. Define function for number of numberOfEggs
  a. This function will increase the number of eggs in his collection.
5. Declare an egg object.
6. Set initial properties of the egg object.
7. Define function for set coordinates.
  a. This funciton will take in new x and y values and set them.
  */

var dino = {
  x : 0,
  y: 0,
  width: 32,
  height: 32,
  numberOfEggs: 0,

  setCoordinates: function(x, y) {
    this.x = x;
    this.y = y;
  },
  collectEgg: function() {
    this.numberOfEggs++;
  }
}
var egg = {
  x: 10,
  y: 10,
  width: 32,
  height: 32,

  setCoordinates: function(x, y) {
    this.x = x;
    this.y = y;
  }
}

function collision() {
  // Determines of the dinosaur is over the egg
  // Checks whether the rectangles overlap.
  if (dino.x < egg.x + egg.width &&
      dino.x + dino.width > egg.x &&
      dino.y < egg.y + egg.height &&
      dino.y + dino.height > egg.y) {
    return true
  }
}

// Driver code
console.log(dino.numberOfEggs); // Should be 0 - he starts with 0.
if (collision()) {
  dino.collectEgg();
}
console.log(dino.numberOfEggs); // Should be 1 - there was a collision initially.
egg.x=100
if (collision()) {
  dino.collectEgg();
}
console.log(dino.numberOfEggs); // Should be 1 - there was no second collision

/*
* What was the most difficult part of this challenge?
  ** I initially had attempted to complete this challenge by building an actual game with these entities. I struggled to come up with an algorithm to get a chain of eggs to follow the dinosaur as they would in the game "snake". Part of the difficulty is that I was using RequestAnimationFrame and wasn't sure how I could get each egg to follow the path exactly of the dinosaur on turns.
What did you learn about creating objects and functions that interact with one another?
  ** I learned it is important to have good names of variables or you will quickly get confused as to what property belongs to which object. It's also important to decide where the functions should belong that interact with both objects.
Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
  ** I wasn't able to learn about any new built-in methods to help with my refactored solution.
How can you access and manipulate properties of objects?
  ** You can access the properties of each object through dot or index notation.
*/
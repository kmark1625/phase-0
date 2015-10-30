// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with Andrew Blum:
// This challenge took me 1.5 hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...

  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }

*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
// Loop through each ballot and then record each vote(add the votes up)
// then populate the officers object
// Loop through each position in voteCount and the max for postion and set that value as the officer for that position

/*
__________________________________________
Initial Solution
for (var vote in votes){
  voteCount.president[votes[vote].president] = 0;
  voteCount.vicePresident[votes[vote].vicePresident] = 0;
  voteCount.secretary[votes[vote].secretary] = 0;
  voteCount.treasurer[votes[vote].treasurer] = 0;
}

for (var vote in votes){
  voteCount.president[votes[vote].president] +=1;
  voteCount.vicePresident[votes[vote].vicePresident] +=1;
  voteCount.secretary[votes[vote].secretary] +=1;
  voteCount.treasurer[votes[vote].treasurer] +=1;
}


for (var officerPosition in voteCount) {
  //console.log(officerPosition);
  var max = 0;
  var person_max = "";
  if (voteCount.hasOwnProperty(officerPosition)) {
    for (var person in voteCount[officerPosition]) {
      if (voteCount[officerPosition].hasOwnProperty(person)) {
        if (voteCount[officerPosition][person] > max) {
          max = voteCount[officerPosition][person];
          person_max = person;
        }
      }
      officers[officerPosition] = person_max;
    }
  }
}
*/





// __________________________________________
// Refactored Solution
for (var vote in votes){
  for (var position in votes[vote]){
    voteCount[position][vote] = 0;
  }
}

for (var vote in votes) {
  for (var position in votes[vote]) {
    var nominee = votes[vote][position];
    voteCount[position][nominee] +=1;
  }
}


for (var officerPosition in voteCount) {
  //console.log(officerPosition);
  var max = 0;
  var person_max = "";
  for (var person in voteCount[officerPosition]) {
      var person_votes = voteCount[officerPosition][person];
     if (person_votes > max) {
        max = voteCount[officerPosition][person];
        person_max = person;           }
  }
  officers[officerPosition] = person_max;
}






// __________________________________________
// Reflection
/*
* What did you learn about iterating over nested objects in JavaScript?
  * I learned that you have to be very careful when iterating over nested
  objects in JavaScript. You must be care when using the for/in syntax to
  use index notation rather than dot notation.
* Were you able to find useful methods to help you with this?
  * We were not able to find very many useful methods to help us iterate
  through the objects. We did find an interesting idea of using
  hasOwnProperty to verify that the property exists before trying to use it.
  This ended up making our code more clunky so we removed it in our
  refactored solution.
* What concepts were solidified in the process of working through this
challenge?
  * We solidified our knowledge of looping through nested structures and
  using the for/in loop to access items in nested objects.
*/
// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)
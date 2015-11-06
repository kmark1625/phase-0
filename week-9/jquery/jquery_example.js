// U3.W9:JQuery


// I worked on this challenge with Eunice Do.
// This challenge took me 1.5 hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM
$body = $('body');
$mascot = $('mascot');

//RELEASE 3:
  // Add code here to modify the css and html of DOM elements
$('#special').css('color', 'red');
$('#special').css('border', '1px solid black');
$('#special').css('visibility', 'visible');
$('.mascot').children("h1").html("COPPERHEADS");

//RELEASE 4: Event Listener
  // Add the code for the event listener here
  /*
$('img').on('mouseenter', function() {
  $(this).attr('src', 'http://ci2l.com/wp-content/uploads/Copperheads.jpg')
  });

$('img').on('mouseleave', function() {
  $(this).attr('src', 'dbc_logo.png')
  });
*/

$('img').hover(function() {
  $(this).attr('src', 'http://babycopperheadsnake.org/wp-content/uploads/2014/11/baby-copperhead-snake-1.jpg')
  },
  function() {
  $(this).attr('src', 'dbc_logo.png')
});
$('img').hover(function() {
  $(this).attr('src', 'http://babycopperheadsnake.org/wp-content/uploads/2014/11/baby-copperhead-snake-1.jpg');
  $('img').animate({
  height: "50%",
  width: "50%",
  border: "1px"
  })},
  function() {
  $(this).attr('src', 'dbc_logo.png');
  $('img').animate({
  height: "40px",
  width: "220px",
  border: "1px"
  })});


//RELEASE 5: Experiment on your own
//See Above!





})  // end of the document.ready function: do not remove or write DOM manipulation below this.

// Reflection
/*
* What is jQuery?
  * JQuery is a JavaScript library that allows for easy manipulation of the DOM. There are shortcuts for adjusting html elements, css properties, and adding event handlers to DOM elements.
* What does jQuery do for you?
  * JQuery is a useful shorthand notation. In JQuery, it is very easy to create jQuery objects that reference DOM elements. This makes it very easy to manipulate those elements.
* What did you learn about the DOM while working on this challenge?
  * I learned that you can easily add and remove elements from the DOM. You also, in general, want to wait for the page to load before trying to manipulate elements in the DOM.
*/

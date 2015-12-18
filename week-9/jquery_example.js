// U3.W9:JQuery


// I worked on this challenge [with Matt Opps].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'gray'})

//RELEASE 2:
  //Add code here to select elements of the DOM
bodyEl = $('body')
mascotClass = $('.mascot')
headerEl = $('#header')
h1El = $('h1')

//RELEASE 3:
  // Add code here to modify the css and html of DOM elements
// h1El.css({'color': 'green'})
mascotClass.css({'border': '3px solid',
                 'border-radius': '6px'})
headerEl.css({'text-decoration' : 'underline'})
headerEl.html('Chorus Frogs!')

//RELEASE 4: Event Listener
  // Add the code for the event listener here

$('img').on('mouseover', function(e){
  e.preventDefault()
  $(this).attr('src', 'http://www.adoptapond.info/guide_images/Chorus%20Frog.jpg')
})
$('img').on('mouseout', function(e){
  e.preventDefault()
  $(this).attr('src', 'dbc_logo.png')
})

//RELEASE 5: Experiment on your own

headerEl.on('mouseover', function(e){
  e.preventDefault(
      headerEl.animate({
      'opacity': '0.25',
    }, 1500)
  )
headerEl.on('mouseout', function(e){
  e.preventDefault()
  headerEl.css({
    'opacity' : '1'
  })
})
})


})  // end of the document.ready function: do not remove or write DOM manipulation below this.

/*
What is jQuery?
jQuery is a library for JavaScript that focuses on manipulating DOM elements on an HTML page.

What does jQuery do for you?
Translates javascript DOM manipulation to a simpler, faster,
one-line-friendly version.

What did you learn about the DOM while working on this challenge?
I mostly learned that you can change a lot of CSS with JQuery,
and that CSS has animation capabilities built-in (crazy!). However
I also learned that you can manipulate HTML elements with JQuery,
too— you can add classes, ids, and elements through JQuery too, which
I could see being useful in dynamic webpage design.
*/
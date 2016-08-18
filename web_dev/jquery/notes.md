Release 0:
My plan - First I will google intro to jQuery. I'll try and a couple quick intros/explanations of the program. I'll look up a cheat sheet for it and bookmark it. I should stop and test what I learn very frequently. I'm going to take 5 minute break every 25 minutes (breaks are very important). 

Release 1:
W3schools has a really good intro/tutorial to jQuery. Since I've used this site before (and it's proven reliable/knowledgable), I was happy to explore it. From this I learned: you can either download and host jquery yourself OR you can include from a CDN (like google) this is good because it makes the loading time faster for your website. 
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>

Syntax:
Basic syntax is: $(selector).action()
$(this).hide() - hides the current element.

$("p").hide() - hides all <p> elements.

$(".test").hide() - hides all elements with class="test".

$("#test").hide() - hides the element with id="test".

jQuery methods are inside a document ready even, so that the code does not run until the document is fully loaded. 
$(document).ready(function(){

// jQuery methods go here...

});




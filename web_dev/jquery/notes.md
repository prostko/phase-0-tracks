## Study plan for JQuery
### 2 hours
### Using a pomodoro timer as red light / green light

1. Find JQuery Docs
2. Download, set-up or intialize JQuery
3. Find a (few) pages on how to learn JQuery
4. Find a cheatsheet for JQuery, skim
5. Find a useful video/ tutorial for JQuery
6. Try to find situations to use it, or possibly a practice site.
7. Implement it in a VPS maybe or just locally. 
8. Figure out a project to use it, implement that project, Fight though and figure it out

This has generally been the approach I've used for other things, SQL, JS, CSS and this is how I've generally
been successful. I try to figure out what the thing is, then I try to figure out what I don't know. Then I try
to fill in those gaps, pretty much in order to find out more of what I don't know. Then repeat. 
The pomodor timer is the thing that i like to use the most, for whatever reason my brain tends to remember things
better if i use the pomodoro. This exercise should alst about 4 tomatos. After which will be a long break anyway.


End of 2 hours strategy assessment - 
	I found a nice nice strategy. Everyhting had to be done, prett ymuch in the order that i listed. But
	things took a lot less time than certain other things. Videos seems to be the way we are going tobe learning things form now on, as the concepts are getting bigger and bigger. 
	All in all, Jquery is goin to need a significant amount more time to be able to use effectively. Maybe some things here and there will become easier using it, but I think a better understanding of Javascript will be the most effective way to get better, faster, at using Jquery.




_______________________
Some of my notes here : 

> Jquery is just a javascript library


Jquery is hard to use without a solid grasp of Javascript constructs and syntax
    This needs to be down pat before you can really get down to using Jquery
In order to use it, you must first include it in your folders, using the production grade compressed code available for download off of their site. 
You can also use one of Google’s CDNs which are places that exist to dole out sick code. The client might also have already downloaded and cached JQuery, so that would result in a super fast load of the website. Ideal situation.
        (When you download, make sure that the files names match, or just rename the downloaded file to jquery.js)

A lot of the time javascript programmers will wrap their code in onload functions, which will load only after the images and everything are loaded on the page which is less than ideal speed-wise. Jquery fixes this by utilizing a ‘ready’ event function. 

$( document ).ready(function() {
// Your code here.
});   <—this makes the code fire when the document is available to be manipulated. 

Jquery exposes its methods and attributes via the ‘Window’ object through jquery and $. $ is easier to type faster. 

$( document ).ready(function() {
      $( "a" ).click( function( event ) {
       alert( "Thanks for visiting!" );
      }); <— first when the document is ‘ready’ (to be manipulated) it will fire the function (passed as an executed function) 
    }); <— code inside gets fired. Looks for the “a” tag, inside the jquery window object, listens for click event on that tag, fires nested executed function inside the click event.
                the code here inside the clock event happens to be an alert( “string” ). Alert() will aways just fire a popup window with that string inside it


$( document ).ready(function() {
      $( "a" ).click( function( event ) {
           alert( "As you can see, the link no longer took you to jquery.com" );

        event.preventDefault(); <— this here stops the default action being performed. This one being the “a” src from being jquery.com
      });
 });

It’s aways possible to complete all of this code inside the HTML embedded directly there, But it's better practice to be placing it inside of the JS file and running it there.

You can add classes ( such as styles) into the HTML by using the $( “tag” ).addClass( “class” );
    this will add that class of style to all of the tags that match that accessor.
You can also take that class away using the removeClass function. Which does the same thing.

There are also gimmicky special effects that you can use, Such as the $( this ).hide( “slow” );
    when fired, it will cause the accessed tag to fade away. and be deleted from the page.

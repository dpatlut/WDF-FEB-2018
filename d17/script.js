
// $('#myform').submit(function(e){
//   console.log($(this).serializeArray())
//   e.preventDefault();
// })

 // $.ajax({url: "https://jsonplaceholder.typicode.com/posts/1", success: function(result){
 //        console.log(result)
 //    }});



 $.ajax({
  url: "https://jsonplaceholder.typicode.com/users", 
  type: 'GET',
  success: function(data){
  	//everything we want to happen after we get back data goes in here
        console.log(data)
    },
    error: function(error){
    	console.log(error)
    }
  });



// Given the following URL : https://api.myjson.com/bins containing a JSON object about your favorite GOT character. 
// Create a AJAX call for that url to grab the JSON data and log the result in your console.
// Loop through the aliases array and console log out the results
// Return the value of 'actor' in the 'playedBy' object.
// Append the name of the actor to the dom to a p element with the id of "my-actor"

let myAjax = function(){
	$.ajax({
	url: 'https://api.myjson.com/bins/bygvt',
	type: 'GET',
	success : function(data){
		let actor = data.playedBy.actor
		let para = $('<p></p>').text(actor).addClass('myactor');
		$('body').prepend(para);
	}
})
}

$('#para').click(function(){
	myAjax();
})



























// console.log("I am below the AJAX call");



// console.log('some time passed1')
// console.log('some time passed2')

// console.log('some time passed3')

// console.log('some time passed4')



// console.log('some time passed5')

// console.log('some time passed6')








// var pageCounter = 1;
// var animalContainer = document.getElementById("animal-info");
// var btn = document.getElementById("btn");

// btn.addEventListener("click", function() {


//   var ourRequest = new XMLHttpRequest();
//   ourRequest.open('GET', 'https://learnwebcode.github.io/json-example/animals-' + pageCounter + '.json');
  
//   ourRequest.onload = function() {
//     if (ourRequest.status >= 200 && ourRequest.status < 400) {
//       var ourData = JSON.parse(ourRequest.responseText);
//       renderHTML(ourData);
//     } else {
//       console.log("We connected to the server, but it returned an error.");
//     }
    
//   };

//   ourRequest.onerror = function() {
//     console.log("Connection error");
//   };

//   ourRequest.send();
//   pageCounter++;
//   if (pageCounter > 3) {
//     btn.classList.add("hide-me");
//   }



// });

// function renderHTML(data) {
//   var htmlString = "";

//   for (i = 0; i < data.length; i++) {
//     htmlString += "<p>" + data[i].name + " is a " + data[i].species + " that likes to eat ";
    
//     for (ii = 0; ii < data[i].foods.likes.length; ii++) {
//       if (ii == 0) {
//         htmlString += data[i].foods.likes[ii];
//       } else {
//         htmlString += " and " + data[i].foods.likes[ii];
//       }
//     }

//     htmlString += ' and dislikes ';

//     for (ii = 0; ii < data[i].foods.dislikes.length; ii++) {
//       if (ii == 0) {
//         htmlString += data[i].foods.dislikes[ii];
//       } else {
//         htmlString += " and " + data[i].foods.dislikes[ii];
//       }
//     }

//     htmlString += '.</p>';

//   }

//   animalContainer.insertAdjacentHTML('beforeend', htmlString);




// document.getElementById('myid');

// $('#myid', '.myclass')

// $('#myid').hide();
// .show();
// .fadeIn();
// .slideOut();

// $(document).ready({
//    //all my code goes in here

// })


// $('p').click(function(){

// })


// .siblings();
// .children();

























// }
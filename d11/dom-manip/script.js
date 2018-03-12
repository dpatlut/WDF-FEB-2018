//Specific Calls 

returns a specific element with that id
document.getElementById('idname');

//returns a collection of elements that match the class
document.getElementsByClassName('classname');

//returns a collection of elements that matches the tag
document.getElementsByTagName('p');

//returns the first element within the document that matches the specified selector, or group of selectors.
document.querySelector('#id or .classname');

//returns a collection of all div elements within the document with a class of either "note" or "alert". You can have one or many selectors in this method.
document.querySelectorAll("div.note, div.alert");


//DOM children,parent,sibling node calls
const elem = document.querySelector('#content-id'),
//returns all HTML element nodes.
elemChildren = 	elem.children,
//returns all element an surrounding text nodes.
elemChildrenNodes =	elem.childNodes,
elemLastChild  = elem.lastChild,
elemLastElemChild =	elem.lastElementChild,
elemParent = elem.parentNode,
elemSiblingNode = elem.nextSibling,
elemSiblingElem = elem.nextElementSibling


//note the distinction between these two calls.
console.log(elemChildren); //gets children elements
console.log(elemChildrenNodes); //gets all children nodes

console.log(elemLastChild);	//returns last node of full list
console.log(elemLastElemChild); //returns last node in element list

console.log(elemParent); //returns parent element node , if nothing above then it returns body tag

console.log(elemSiblingNode); //returns next sibling in node list
console.log(elemSiblingElem); //returns next sibling in elem list


//Lets change some text/html
const pchange = document.getElementById('change-text');
const hchange = document.getElementById('change-html');

//changes just the text. Not actually converted to HTML
pchange.innerText = "<div>I CHANGED THE TEXT</div>";

//changes everything inside the element and can take valid HTML strings
hchange.innerHTML = "<div>Hello World</div>"

//input tags
document.getElementById('input-test').value


//looping changes
const changetwo = document.getElementsByClassName('content-class-2');
console.log(changetwo);

changetwo[0].innerText = "sdasdnasld"

for(let i =0; i<changetwo.length ; i++){
	changetwo[i].innerText = "I changed it via LOOP";
}


//Creating elements
let para = document.createElement('div');
let newChild = document.createElement('p');
let text = document.createTextNode("Hi there and greetings!");

newChild.appendChild(text);
para.appendChild(newChild);
document.body.appendChild(para);


document.getElementsByTagName('body')[0]
// document.body is the easiest way to target the body

document.body.appendChild(para);
//OR
document.body.prepend(para);

let parent = document.getElementById('content-id');
parent.appendChild(para);


//or you can target other elements not just the body.
let div = document.getElementById('content-id-2');
let para = document.createElement('p');
//we can also set attributes
para.setAttribute('id', 'newly-created-p')
div.appendChild(para);


//dynamically creating a bunch of elements
for(let i=0;i<10;i++){
	let newelem = document.createElement('p');
	newelem.setAttribute('class', 'newptag');
	newelem.innerText = "Look at me, I was just born";
	document.body.appendChild(newelem);
}




//we can also remove stuff
let p = document.getElementById('random-p')
p.remove();


//Basic Event Handler Syntax

//Takes in a event and a callback function
const el  = document.getElementById('change-html')
el.addEventListener('click', function(e){
  console.log(e);
});




//What is a callback function?
//BAD - DONT DO THIS - CHECK WHY!

var x = document.getElementById('loopie')

let callback = () => {
	// console.log(this.style.color);
	alert('callback')
}

x.addEventListener('click', callback());


// //GOOD - DO THIS INSTEAD
let callback = (event) => {
	alert(event)
}

x.addEventListener('click', function(e){
	//call the function in here AND you can even pass stuff
	callback(e);
});



//Event Propogration

var x = document.getElementById('loopie')

x.addEventListener('click', function(e){
  if(e.target.id == "mame"){
  		console.log("I have clicked the outer thing");
	}
});

var y = document.getElementById('mame')

y.addEventListener('click', function(e){
	// e.stopPropagation()
	console.log(e);
	console.log('I clicked the inner thing')
});

var z = document.getElementById('mametwo')

z.addEventListener('click', function(e){
	console.log(e);
	console.log('I moused over the inner inner thing')
})
















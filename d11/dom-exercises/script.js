//1
const title = document.getElementById('nycda-title')
title.innerText = "Welcome to NYCDA"

//2
const helpMessage = document.getElementById('nycda-help-message');

helpMessage.innerText = "Ask people in NYCDA for help if you're struggling";


//3
const className = document.getElementsByClassName('nycda-class');

console.log(className[className.length - 1]);

//4
const para = document.getElementsByTagName('p');

console.log(para[1]);

//5
const inputs = document.querySelectorAll('input');

//6
const submitButton = document.getElementById('submit-button');

submitButton.addEventListener('click', function(){
  let inputValue = document.getElementById('input-important').value;
  console.log(inputValue);
})

//7
const boxRed = document.getElementById('box-red');

boxRed.addEventListener('mouseover', function(){
  document.getElementById('nycda-title').innerText = "Look at me im hovering ma! :p"
})


//8
const boxBlue = document.getElementById('box-blue');

boxBlue.addEventListener('mouseover', function(){
  boxRed.style.backgroundColor = 'orange';
})


//9
document.body.addEventListener('keypress', function(e){
  if(e.key === 'r'){
    title.innerText = "Pew Pew Pew"
  }
});

//10
document.body.addEventListener('keypress', function(e){
    title.innerText = e.key
});

//Extra : Doing it in input box
let inputValueTest = document.getElementById('input-important')
inputValueTest.addEventListener('keypress' , function(e){
  title.innerText = e.key
})



//11

let header = document.getElementsByTagName('h1')[0]
const passwordNums = '12345678'

document.addEventListener('keydown', function(event){
	if(event.key === "j"){
		header.innerText = event.key
	}
})

document.getElementById('submit').addEventListener('click', function(event){
	if(password.value !== passwordNums){
		wrongInfo(" Password")
	}else if(!containsNumber(username.value) || !containsNumber(email.value)){
		wrongInfo(". Username AND Email must contain a number")
	} else {
    header.innerText = "correct"
  }
})


function wrongInfo(str){
	alert("incorrect" + str)
}

function containsNumber(str){
	return /\d/.test(str)
}

//Regex : https://regexr.com/
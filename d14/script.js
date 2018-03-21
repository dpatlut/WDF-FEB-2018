//the most basic object we can make. This is whats called a object literal.
const myObject = {
   keyOne : 'valueOne',
   key2Two : 'valueTwo'
};

myObject.keyOne // valueOne
myObject.keyTwo = "newValues";
myObject.keyThree = "newValue";



const myObject = {
 key : function() {
  return "This is the function return";
 },
 keyTwo : function(someParam){
  return someParam + "This is my param";
 }
}

myObject.key();
myObject.keyTwo('hello');





let studentsName = "David";
let studentsProjectGrade = 100;
let studentsNameTwo = "Mike"
let studentsProjectGradeTwo = 200;

const student = {
	name: "david",
	grade: 100
}

student.grade
student.name


function Student(name,grade){
   this.name = name;
   this.grade = grade;
   this.getName = function(){
   	return this.name
   };
   this.setName = function(name){
   	this.name = name
   }
}

function Car(make,wheels,model){
	this.make = make;
	this.wheels = wheels;
	this.model = model;
	this.getModel = function(){
	 	return this.model;
	};
	this.setModel = function(model){
		this.model = model;
	};
	this.getAllProperties = function(){
	  return this.make + this.model + this.wheels
	}
}



let meagan = new Student("meagan", "100");

meagan.getName();



//Create object literals

const car = {
	brand: 'ford',
	numOfWheels: 12,
	color: 'red'
}

const wizard = {
	universe: "LOTR", 
	powers: ["regen", "magic staff", "fire bolt"],
	age: 106
}

function Wizard(universe,powers,age){
	this.universe = universe;
	this.powers = powers;
	this.age = age;
	this.saySomething = function(){
		return "You shall not pass!"
	}
}

const gandalf = new Wizard('LOTR', ["regen", "magic staff", "fire bolt"], 1000);

gandalf.saySomething();


Wizard.prototype.setAge = function(age){
	this.age = age 
}



function Dog(breed){
	this.breed = breed;
	this.setBreed = function(breed){
		this.breed = breed;
	}
}

Dog
Dog.prototype

vs 

function Dog(breed){
	this.breed = breed;
}

Dog.prototype.setBreed = function(breed){
	this.breed = breed;
}








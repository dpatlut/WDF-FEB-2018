#This is my first Ruby File called helloworld.rb

#Printing stuff out. Whats the difference bettween these 3 methods

puts "HELLO CLASS"
print "HELLO CLASS"
p "HELLO CLASS"

#---------------------------------------------------------------------------------------------------------------------------------------
#Comments
# Comments are super easy honestly just put a "Hashtag" before whatever you want to comment
#This is how I add a comment


#--------------------------------------------------------------------------------------------------------------------------------------
#Math
#Just like most languages there are math operators in RUBY

# + plus
# - minus
# / divison
# * multiplication
# % modulus


#PEMDAS Applys here. The only thing to note is M&D and A&S are done at the same time.
#Left to right applys
#Keep that in mind for things like this : 
puts 10 / 5 * 2

#You can actually do math operations inside of print statements, and other places too

puts "I will now count my chickens:"

#Must use double quotes to make this work

puts "Hens #{25 + 30 / 6}"
puts "Roosters #{100 - 25 * 3 % 4}"

puts "Now I will count the eggs:"

puts 3 + 2 + 1 - 5 + 4 % 2 - 1 / 4 + 6



# we can use the #{} syntax to run ruby code inside the string statment
#Something funny you can do with strings in ruby. Cant do this with JS.

puts "Hi" * 3

#You cant do it with this though, which you were able to do with JS.

puts "Hi" + 50

#This will also apply later. You will not be able to add strings together with other random data types.


#--------------------------------------------------------------------------------------------------------------------------------------
#Data Types & Variables - For now Local & Block level variables, you may see things like @@ and @ and $ but dont worry about that for now.
#The Ruby convention is to use underscores to separate words in a multiword method or variable name. 
#Style Guide : https://github.com/bbatsov/ruby-style-guide
#Data types : https://blog.botreetechnologies.com/ruby-basic-data-types-12d63251e33c

variable
my_variable
this_is_my_variable

#Variable Assigment & Types
#We will break these down further alittle bit later on but here are the basic types

my_name = 'Zed A. Shaw'#String
my_age = 35 #Number (Fixnum/Bignum)
my_train_fare = 2.75 #Float
teacher_funny = false #Boolean
blah = nil #Nothing
my_arr = [1,2,4] #Array
employee_ages = { #Hash - OLD and NEW syntax. 
    "John" => 31,
    "David" => 25,
    "Mike" => 23
  }
options = { #using symbols
    font_size: 10, 
    font_family: "Arial" 
}

#What the converted symbol one looks like (OLD)
options = { #using symbols
    :font_size => 10, 
    :font_family => "Arial" 
}


#Is there a difference? Yes but it has to do with symbols and other very specific things that make the syntax legal and not legal
#. Here is a resource if you are interested. https://stackoverflow.com/questions/8675206/is-there-any-difference-between-the-key-value-and-key-value-hash-no
#https://www.youtube.com/watch?v=mBXGBbEbXZY 

my_sym = :time_zone #Symbols https://learn.co/lessons/ruby-symbols
#http://rubylearning.com/satishtalim/ruby_symbols.html
#http://www.culttt.com/2015/04/22/what-are-symbols-in-ruby/
#Symbols are a wierd thing in ruby. Symbols dont nessacarly store a value (per say) but rather they are these immutable pointer obejcts
name = "Steven"
same_as_name = "Steven"

name.object_id == same_as_name.object_id #false

puts "Steven".object_id
puts "Steven".object_id
puts "Steven".object_id


puts :philip.object_id  
puts :philip.object_id 
#For now the main use case will be with hashes. Just remember its a new concept and it may be hard to grasp totally without actually using it
#Tommorw we will be using it with OOP so you will see why its a useful thing
#For now its just more efficent. 

#--------------------------------------------------------------------------------------------------------------------------------------
#Logical Operators & Comparison Operators & Conditionals

#Comparison operators 
# === (triple equals does exist but best not to use it) its called the case equality operator
# http://batsov.com/articles/2013/07/10/the-elements-of-style-in-ruby-number-7-the-case-against-equals-equals-equals/

#Comparison & Logical Operators 
#https://www.tutorialspoint.com/ruby/ruby_operators.html

false == false
1 == "1"

name = "Jason"

if (name == "David") && (name == "yolo")
    puts "helo"
elsif name == 5 
    puts "hello"
elsif name == "Jason"
    puts "this is my name"
end

age =  5
case age
when 0 .. 2
   puts "baby"
when 3 .. 6
   puts "little child"
when 7 .. 12
   puts "child"
when 13 .. 18
   puts "youth"
else
   puts "adult"
end

x = 1 
unless x>=2
   puts "x is less than 2"
 else
   puts "x is greater than 2"
end


#Loops

for x in 1..5
	puts x
end

x = 0
while x < 10 {
        puts x
        x += 1
    }






#Methods



#{some ruby code/variable}\

puts "Welcome to the personality interview game, what is your name?"
name = gets.chomp

puts "Hello #{name}, what is your favorite color?"
color = gets.chomp

puts "#{color} really brings out your eyes, do you have a favorite cartoon?"
cartoon = gets.chomp

puts "What? No way, #{cartoon} is my favorite cartoon also. Okay last question, if you could have one super power what would it be?"
superpower = gets.chomp

puts "Well thank you #{name}, you sound like you would make a great superhero using #{superpower} for good"


name = "Jason"

if (name == "David") && (name == "yolo")
    puts "helo"
elsif name == 5 
    puts "hello"
elsif name == "Jason"
    puts "this is my name"
end



puts "give me a number"
num = gets.chomp.to_i

statement = ""

if num % 5 == 0 && num % 3 == 0
    statement  << "Fizzbuzz"
elsif num % 5 == 0
    puts "fizz"
elsif num % 3 == 0
    puts "buzz"
else
    puts "#{num} is not fizzable"
end

num = 5;
statement = if (num%5 ==0) then 'divisible' else 'not divisible' end
puts statement

the_count = [1, 2, 3, 4, 5]
for number in the_count
    puts "This is count #{number}"
  end




x = 10
( puts x; x += 1) while x < 10 

while x<10 do 

end


num = 100
i = 0
until i > num  do
    puts("Inside the loop i = #{i}" )
    i +=1
 end



 arr = ['david', 1, 5, "mike"]

 arr.each do |elem|
    # puts elem
 end

 fruits = ['apples', 'oranges', 'pears', 'apricots']
 fruits.each do |fruit|
    puts "A fruit of type: #{fruit}"
  end


  #Write a command line app that takes in a variable with arrays nested as values inside another array. Print out sentences for each of them.
people = [["Jason", "Maria", "Justin"], ["Red", "Blue", "Green"], ["Limp Bizkit", "3 Doors Down", "Papa Roach"]]

#The sentence will look like "Jason's favorite color is Red, and he loves Limp Bizkit"

i = 0
until i == people.length do
	puts ("#{people[0][i]}'s favorite color is #{people[1][i]} and they love #{people[2][i]}")
	i += 1
end


statement = ''
statement2 = ''
statement3 = ''
people.each_index do |i|
  if i == 0
    statement += "#{people[i][0]}'s favorite color is "
    statement2 += "#{people[i][1]}'s favorite color is "
    statement3 += "#{people[i][2]}'s favorite color is "
  elsif i == 1
    statement += "#{people[i][0]}, and he loves "
    statement2 += "#{people[i][1]}, and she loves "
    statement3 += "#{people[i][2]}, and he loves "
  elsif i == 2
    statement += "#{people[i][0]}"
    statement2 += "#{people[i][1]}"
    statement3 += "#{people[i][2]}"
    puts statement
    puts statement2
    puts statement3
  end
end


i = 0
while i < 3 do
	j = 0
	wordcontainer = []
	while j < 3 do
		word = people[j][i]
		# puts word
		wordcontainer[j] = word
		j += 1
	end
	# print wordcontainer
	i += 1
	print "#{wordcontainer[0]} loves the color #{wordcontainer[1]} and his favorite band is #{wordcontainer[2]}"
	print "\n"
end



people = [["Jason", "Maria", "Justin"], ["Red", "Blue", "Green"], ["Limp Bizkit", "3 Doors Down", "Papa Roach"]]
result = []

people.each do |sub_arr|
    result.push(sub_arr.shift)
end

puts "#{result[0]}'s favorite color is #{result[1]}, and he loves #{result[2]}"
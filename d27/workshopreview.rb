#Questions
 
#Comparison Chart
#new array
arr = [1,2,3,"a word"]
ary = Array.new    #=> []
Array.new(3)       #=> [nil, nil, nil]
Array.new(3, true) #=> [true, true, true]

#access index
arr[0]

#add to array 
arr = []
arr.push(stuff)
arr << 32

#Deleting from array
arr.delete_at(1) or arr.delete(2)
arr-[1]
arr.slice!(index, how many we want to delete)

#update an element
arr[arr.index(3)] = 'whatev'
arr[3] = "watev"


#create a hash
my_hash = {
  dog: "poodle",
  cat: "tabby"
}

#symbol access hash
doggy = my_hash[:dog]

#add a single item to a hash
my_hash[:parrot] = "scarlet macaw"

#Fetch a single item. Be careful if using the symbol syntax.
my_hash.fetch("parrot")

#delete from hash
my_hash.delete(:dog)

#rewrite a existing value
my_hash[:cat] = " tiger"


#iteration/for loops
10.times do |x|
    puts x
end

x = 0
until x > 10
    puts x
    x+=1
end

#using .each method
arr2 = [{name: "Isaac"},{name: "Alex"},{name: "John"}]

y = 0
until y > arr2.length
    puts arr2[y][:name]
    y+=1
end  

arr2.each {|elem| puts elem[:name]}


#conditionals
if 0 == 0
   puts "just in case you didnt know" 
end 

#Make sure to remember it is els not else in ruby
if 0 == 9 
    puts "nothing"
    
elsif 0 == 5
    puts "still nothing"
else
    puts "SOMETHING!!!"
end

#America
# 'Merica
# Create a method that takes a string as an argument and adds the phrase “Only in America!” to the end of it

def x(str)
    puts  "#{str} only in America"
end

x ("hello")

#Max Value

array = [-100,10,1,200,-1000]
def maxValue(array)
    array.sort.last
end
puts maxValue(array)

def maxValue(array)
    max_value = 0
    array.each {
        |elem|
        if elem > max_value
            max_value = elem
            puts max_value
        end
    }
end

#Conversion

def conversion array1 , array2
    
    converted = {};
    x=0   
    
    array1.each do |elem|
        converted[elem]
    end    
    
    array2.each do |elem|
        converted[array1[x]] = elem
        x+=1
    end
    
    puts converted
end

conversion [:fruit1, :fruit2, :fruit3] , ["apple", "banana", "orange"]


#Transmogrifier

#take in 3 numbers 
#add first 2 numbers
#multiply sum by 3 number

def transmogrifier(num1, num2, num3)
	multThree = (num1 + num2) * num3 
	puts multThree
end

#1 + 2 = 3 * 3 = 9
transmogrifier(1, 2, 3)


#Guessing Game
def guessingGame
    computer_number = rand(1..10)
    puts "Please enter a number between 1 and 10."
    player_guess = gets.chomp.to_i
    while player_guess != computer_number
        puts "TRY AGAIN"
        puts "Please enter a number between 1 and 10."
        player_guess = gets.chomp.to_i
    end
    puts "YOU GOT IT"
end


#introduce
def introduce(name_one,name_two)
    puts "#{name_one} meet #{name_two}"
end

#shout
def shout(*str)
    str.each do |word|
        puts word.upcase
    end
end

shout "offset", "skrrrt", "skrrrt", "skrrrt"

#chopped
def chopped(arr)
    temp = arr.length-1
    arr.delete_at(temp)
    puts arr
end

#how_big
def how_big(str)
    len = str.length
    if len <= 3
        puts "small"
    elsif len <= 5
        puts "medium"
    else
        puts "big"
    end
end

#weatherman
def weatherman(condition, temp)

    if condition == "rainy" && temp == "cold"
        puts "better stay inside!"
    elsif condition == "rainy" && temp == "hot"
        puts "sounds like a gross combination"
    elsif condition == "sunny" && temp == "hot"
        puts "maybe best to go swimming"
    elsif condition == "windy" || temp == "cold"
        puts "bundle up!"
    else condition == "windy" && temp == "hot"
        puts "Tornado warning!"
    end

end


#meaningoflife

#string_info
def string_info(str)
    output = {
      original: str,
      length: str.length,
      snaked: str.downcase.split.join('_')
      #str.downcase.tr!(' ', '_')
      #str.downcase.gsub!(/ /, '_')
    }
end

#Fives
def mult_five(number)
    if number % 5 == 0
        return true
    else 
        return false
    end
end
answerIsQuit = false

while answerIsQuit == false do
    puts "Enter a number or type quit"
    answer = gets.chomp
    
    if answer == "quit"
        answerIsQuit = true
    else answer.to_i
        if mult_five(answer)
            puts "Your number is divisible by five"
        else 
            puts "Your number is not divisible by five"
        end
    end
end

#Calculator
def add(num1, num2)
    puts num1 + num2
end
def sub(num1, num2)
    puts num1 - num2
end
def mult(num1, num2)
    puts num1 * num2
end
def div(num1, num2)
    puts num1 / num2
end

puts "choose an operation (+,-,*,/)"
input = gets.chomp
puts "enter first number"
num1 = gets.chomp.to_i
puts "enter second number"
num2 = gets.chomp.to_i

case 
when input == '+'
    add(num1, num2) 
when input == '-'
    sub(num1, num2)
when input == '*'
    mult(num1, num2) 
when input == '/'
    div(num1, num2)  
end


#Gueesing game part two
def computer_picks_num()
    puts "enter a positive number"
    num = gets.chomp.to_i
    random_number = 1 + rand(num)
    return random_number
  end
  
  def player_guess()
    puts "guess a number!"
    guess = gets.chomp.to_i
    return guess
  end
  
  def evaluate_guess(rando)
    answer = false
    i = 0
    while answer == false
      guess = player_guess()
    #   warmBig = rando*(1.1)
    #   warmSmall=rando*0.9
      if guess == rando
        i += 1
        answer = true
        puts "Right answer! It took you #{i} guesses"
      # elsif guess < rando && rando-guess <= rando *(0.1)
      #   i+=1
      #   puts "Higherrrr!!! But you're warm!"
      elsif guess < rando
        i+=1
        puts "Higherrrr!!!"
      # elsif guess > rando && guess-warmSmall < rando *(0.1)
      #   i+=1
      #   puts "lower But you're warm!"
      elsif guess > rando
        i+=1
        puts "lower"
      end
    end
  end
  
  evaluate_guess(computer_picks_num())

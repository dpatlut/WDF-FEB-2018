#Object Oriented Programming

#global variables
$global_var = 10

#local
my_varaible = 5

#class
@@class_variable = "hello"

#instance variable
@instance_variable

class Car
	def initialize(color, year, model)
		@color = color
		@year = year
		@model = model
		@location = ""
	end

	def color 
		@color
	end
	
	def year
		@year
	end
	
	def start=(location)
		@location = location
		puts "You have driven to #{@location}"
	end
	
	
	def paint_job=(new_color)
		@color = new_color
		puts "Nice paint job, your car is now #{@color}"
	end
end

my_toyota = Car.new("red", 1973, "Charger");





























# $global = "This is my global Variable"

# class Trainer
#     attr_accessor :name

#     @@class_variable = "This is a class variable"

#     def initialize(name)
#         @name = name
#     end

#     def printSelf
#         puts $global
#     end


# end


class Pokemon
    attr_accessor :name

    def initialize(name)
        @name = name
    end 

    def printSelf
        p
        # self.name = "I CHANGED THE NAME"
        # puts self.name
    end

    def self.class_method
        puts self
        puts "You can only call me on a class"
    end

    private 

    def test
        puts "This is my important data"
    end

end






# pika = Pokemon.new('pikachu')
# puts pika.name
# puts pika.printSelf
# puts pika.name

# puts pika.printSelf

# ash = Trainer.new('ash')
# puts ash.printSelf


# puts pika.class_method
# puts Pokemon.class_method



class ApplicationConfiguration
    def self.whatever_class_method(property_name, value)
    end
    
    def self.get(property_name)
    end  
end

ApplicationConfiguration.set("name", "Demo Application")
ApplicationConfiguration.set("version", "0.1")



class User

    def log_in
      @logged_in = true
    end
  end
  

  class Student < User
    def log_in
      super
      puts @logged_in
      @in_class = true
    end
  end


david = Student.new
puts david.log_in



class Person    
    def initialize(name)
        @name = name
    end    
end


class Employee < Person
    def initialize(name, salary)
        super(name)
        @salary = salary
    end
end

emp = Employee.new("Chuck", 100)
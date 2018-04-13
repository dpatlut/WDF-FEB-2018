

class Turtle
    @@class_variable = 10
    
    attr_accessor :name, :age

    def initialize(name,age)
        @name = name
        @age = age
    end

    def age!
        @age += 1
        @age
    end

    def swim
        'I love water'
    end

    def self.funfact
        fun_facts = ["Turtles also have a lower shell called a ‘plastron’.", "Turtles have existed for around 215 million years", "The largest turtle is the leatherback sea turtle, it can weigh over 900 kg! (2000 lb)", "Many turtle species are endangered.", "Sea turtles have special glands which help remove salt from the water they drink."]
        fun_facts[rand(fun_facts.length)]
    end
end

# bud = Turtle.new('bud', 109);
# puts bud.age!
# puts bud.age
# puts bud.name
puts Turtle.funfact
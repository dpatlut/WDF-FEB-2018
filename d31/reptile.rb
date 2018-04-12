require 'pry'

class Reptile
    attr_accessor :species

    def initialize(species, num_limbs, cold_blooded=true)
        
        @species = species
        @num_limbs = num_limbs
        @cold_blooded = cold_blooded 
        binding.pry    
    end

    def check_limbs
        if @num_limbs == 4 || @num_limbs == 0
            puts @num_limbs
        else
            puts "probably not a reptile"
        end 
    end
end

x = Reptile.new('turtle',5,true)

x.species = "snakes"
binding.pry
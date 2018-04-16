class Staff
    attr_accessor :name, :photo, :position, :description, :joke

    def initialize(name,photo,position,description,joke)
        @name = name
        @position = position
        @photo = photo
        @description = description
        #Bonus Part
        @joke = joke
    end
end
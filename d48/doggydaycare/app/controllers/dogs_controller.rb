class DogsController < ApplicationController

    #Links to my /dogs route
    def index 
        puts 'Hello World I am at the /dogs route'
    end

    #Links to my /dogs/:id route
    def show 
        puts "HELLO WORLD THIS IS MY /id route"
    end

end

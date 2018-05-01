class OwnersController < ApplicationController

     #Links to my /owners route
     #links to a /views/owners/index.html.erb
     def index 
        puts 'Hello World I am at the /owners route'
     end

    #Links to my /owners/:id route

    #links to a /views/owners/show.html.erb
    def show 
        puts "HELLO WORLD THIS IS MY /id route"
    end
end

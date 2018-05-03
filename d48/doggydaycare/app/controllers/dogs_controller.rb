class DogsController < ApplicationController
    #controller wide layout
    # layout 'newlayout'

    #Links to my /dogs route
    def index 
        @dogsxyz = Dog.first
        # render layout: false
        # render template: '/doggytreats/showmytreat', layout: 'newlayout'
        # render '/doggytreats/showmytreat'
        # puts "YOLO"
        # @x = Dog.all
        # puts @x
        # render json: {key: 'value', keytwo: {keyone: "blah",one: @dogs}}
    end

    #Links to my /dogs/:id route
    def show 
        @my_dog = Dog.find(params[:id])
    end

end

require 'sinatra'

# set :port, 8080
# set :static, true
# set :public_folder, "static"
# set :views, "views"




#Staff - Method one 

get '/staff/:name' do
        if params[:name] == "Dwight"
            erb :dwight
        elsif params[:name] == "jim"
            erb :jim
            # @y = 100
            # puts "IM IN THIS STATMENT"
            # erb :index, :locals => {:x => "5"}
            #keep going with conditionals and hardcoding templates with all the information about the staff
        end
end

#Staff - Method Two (All requires would go to top of the file. Just keeping them down here since we have two examples solutions)
#You will need a staff.rb where you host your staff class.
require './staff'

# #if you want to do the bonus then
require 'rubyjokes'

get '/staff/:name' do
    #In this option, you only need one template, and you pass it the needed information
    case params[:name]
        when "jim"
            joke = RubyJoke.new
            joke = joke.get_joke({limitTo: ['nerdy']})
            @staffmember = Staff.new('Jim', '/photos/jim.jpg', 'Sales', 'description', joke)
            #realistically later on you would just pull the staff member (jim) and all his details from a database where his info is stored
            erb :staff
        when "dwight"
            
        
        else
            "404, staff member does not exist"
        end
end
require 'sinatra'
require 'adorable_cat'
require './turtle'


#Basic Route, Returns text
#HTTP VERB + PATH and everything you want to happen in the do block.
get '/' do 
    @bud = Turtle.new('bud', 109);
    erb :index
end

#Basic Route, Returns a template
#Make sure your templates are in the views folder
get '/testtemplate' do 
    erb :test
    #What if I had a nested structure and wanted to access a nested folder in the views folder
    #Note the quotations around it
    erb :"admin/report"
end

#Passing information between your app.rb and your view
#Very simple , just make it an instance variable 
get '/data' do 
    # @x = "This is my data I want to pass from my app.rb to my view"
    erb :index
    # @x = "jkshdkjahsdsd"
    #This is very useful when you have to grab data from inside your routes, maybe from a gem
    #or maybe from a params. Also good if your doing some kind of logic 
end




#Dynamic Routes. 
#What if we wanted to have a wildcard route that depends on the information we want to access
#This will be super useful when we work with DB's becuase we will be able to pull only CERTAIN information
#Its easier to use this than to write out 10000's of paths depending on what the student wants
get '/student/:id' do
    #Sinatra gives us this params object by default which is a hash that has a 
    #key value pair with the symbol we specify in our route.

    if params[:id] == '1'
        erb :studentone
    else
        erb :studentregular
    end
end

# #If you have routes like the one above and then write this:
# #Sinatra will read top down and ONLY hit the route above.
# #IF you switched the order though, then the app would hit this one instead.
# #The first route it finds is the route it will hit.
get '/student/:name' do 
    'This is my student name stuff'
end


# #Also useful if we wanted to print out the id from the params 
get '/user/:name' do 
    @x =  params[:name]
    erb :studentone
end

# #Lets chat about a layout file.
# #Sometime we do not want to keep repeating our code over and over again
# #Like a footer and header. Why would we write those over and over. This is where layout files come in

#Be careful as if you dont have a erb render then it will not render you layout like if you just had 'Hello World'
# get '/profile' do
# #By default putting just putting a erb file, we are specifying, look for a layout.erb
#     erb :profile
# #We can also specify to use a different layout file
# #This will look for a layout called otherlayout.erb
#     erb :profile , :layout => :otherHeaderFooter
# end 

# #What if I wanted to load a path, do or check something and then redirect?
# #This will be useful more when we do post/put/patch/delete requests because we will want to perform a action
# #and then redirect the user back to some other page.
# get '/foo' do
#     redirect to('/bar')
# end


# #Wierd stuff you can also do. Bunch of routes hitting the same route handler
["/foo", "/bar", "/baz"].each do |path|
    get path do
      "You've reached me at #{path}"
    end
  end

#   #BTW You can throw regular ruby code in this file too and use it in your routes. 
#   class Person
#     attr_accessor  :name, :age
#     def initialize(name,age)
#         @name = name
#         @age = age 
#     end
#   end

#   def return_things
#     "Hello World"
#   end

#   #BTW all static assests like images/css will go into a public folder 
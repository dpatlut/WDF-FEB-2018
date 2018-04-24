require "sinatra"
require "sinatra/activerecord"

#Dont forget to require your models
require_relative './models/course'
require_relative './models/ta'
require_relative './models/instructor'
require_relative './models/student'
require_relative './models/courseStudent'



#The goal of the app is setup the following relationships for our classroom managment app.
#Course have one instructor : one to one
#Course have many students. Students have many Course : many to many
#Course have many TAs : one to many

#Give each table atleast 2-3 properties. Remember to put the FK! Otherwise you wont be able to setup relationships!



set :database, {adapter: 'postgresql', database: 'relations'}


#We want to display the following :
#All students part of a specific course
#All instructors part of a course
#All tas part of a course
get '/course/:id' do
    currentcourse = params[:id]
    mycourse = Course.find(currentcourse)
    @allcoursestudents = mycourse.students
    @allinstructors = mycourse.instructor
    @alltas = mycourse.tas
    erb :class
end

get '/students' do 
    @students = Student.all
    erb :student
end


get '/student/new' do
    erb :new
end

post '/students/new' do
    Student.create(name: params[:name], age: params[:age])
    redirect '/students'
end

get '/student/:id/edit' do
    @current_student = Student.find(params[:id])
    erb :edit
end

put '/student/:id' do 
    @current_student = Student.find(params[:id])
    @current_student.update(name: params[:name], age: params[:age])
    redirect '/students'
end

delete '/student/:id' do 
    Student.destroy(params[:id])
    redirect '/students'
end
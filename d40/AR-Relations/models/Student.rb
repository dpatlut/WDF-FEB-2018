class Student < ActiveRecord::Base
    has_many :course_students
    has_many :courses, through: :course_students
end
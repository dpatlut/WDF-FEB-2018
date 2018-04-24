class Instructor < ActiveRecord::Base
    has_one :course
end
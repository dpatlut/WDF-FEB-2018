class Owner < ApplicationRecord
    has_many :dogs
    has_many :doggy_treats
end

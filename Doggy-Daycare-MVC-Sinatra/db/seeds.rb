Dog.create(:name => "Naruto", :age => 2, :breed => "Nine Tail", :owner_id => 2)
Dog.create(:name => "Sasuke", :age => 2, :breed => "Griever", :owner_id => 1)
Dog.create(:name => "Sakura", :age => 2, :breed => "Lassie", :owner_id => 2)

Owner.create(:name => "Doug", :email => "doug@nick.com", :gender => "male")
Owner.create(:name => "Tommy", :email => "tommy@nick.com", :gender => "male")
Owner.create(:name => "Clarissa", :email => "clarissa@nick.com", :gender => "female")

#Use this syntax
# Owner.create(:name => "Clarissa", :email => "clarissa@nick.com", :gender => "female")
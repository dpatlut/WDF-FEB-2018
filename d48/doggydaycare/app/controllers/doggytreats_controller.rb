class DoggytreatsController < ApplicationController

    #This is my /doggytreats route
    def showmytreat
            begin
              @user = User.find(1)
            rescue ActiveRecord::RecordNotFound => e
              print "THIS IS MY ERROR DOWN HERE"
              print e
            end
    end

end


end

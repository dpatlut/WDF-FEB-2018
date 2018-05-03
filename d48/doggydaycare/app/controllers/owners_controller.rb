class OwnersController < ApplicationController

     #Links to my /owners route
     #links to a /views/owners/index.html.erb
     def index 
        @owners = Owner.all
     end

    #Links to my /owners/:id route
    #links to a /views/owners/show.html.erb
    def show 
        @owner = Owner.find(params[:id])
    end


    
    def edit 
        @owner = Owner.find(params[:id])
    end

    def update
        @owner = Owner.find(params[:id])
        @owner.update(owner_params)
        redirect_to '/owners'
    end




    def destroy
        Owner.find(params[:id]).destroy
        redirect_to '/owners'
    end

   

    def new 
        @owner = Owner.new
    end

    def create 
        Owner.create(owner_params)
        redirect_to '/owners'
    end

    #http://edgeguides.rubyonrails.org/action_controller_overview.html#strong-parameters
    private
    # Using a private method to encapsulate the permissible parameters is
    # just a good pattern since you'll be able to reuse the same permit
    # list between create and update. Also, you can specialize this method
    # with per-user checking of permissible attributes.
    def owner_params
      params.require(:owner).permit(:name, :age, :phonenumber, :id)
    end
end

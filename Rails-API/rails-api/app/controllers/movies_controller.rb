class MoviesController < ApplicationController
    before_action :set_api, only: [:index, :show, :ajax]

    def index
        
    end

    def show
        # movie = params[:id]
        # json_stuff = JSON.parse(HTTParty.get(@base_url+movie).body)
        # render :json => json_stuff
        #Movie.create(name: json_stuff["title"], director: json_stuff["director"])
    end



    def ajax
        @json_stuff = JSON.parse(HTTParty.get(@base_url+'1').body)
        # puts @json_stuff
    end

    private 
    def set_api
        @base_url = "https://swapi.co/api/films/"
    end
end
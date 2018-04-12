require 'sinatra'
require 'adorable_cat'

#Index Route
#HTTP VERB + ROUTE IN QUOTES 
get '/' do 
    @x = AdorableCat.get_cat_data
    erb :index
end


#Dynamic Route
# get '/student/:id' do 
#     if params[:id] == '1'
#         erb :studentone
#     else
#         erb :studentregular
#     end
# end

get '/student/:id' do 
        @x =  params[:id]
        erb :studentone
end




require 'sinatra'
require 'sinatra/reloader'

enable :sessions

before do

	session[:growl_array] ||= []
end


#Routes
get '/' do

	erb :index
end

 get '/wall_list' do

 	

	@growl_array = session[:growl_array]

 	erb :wall_list
 end



post '/wall' do

	@new_growl = params[:new_growl]

	session[:growl_array] << @new_growl
		


	erb :wall
end


require 'sinatra'
require 'sinatra/reloader'

before do

	session[:growl_array] ||= []
end


#Routes
get '/' do

	erb :index
end

 get '/wall_list' do

 	# session[:growl_array] << params[:new_growl]
	@growl_array = session[:growl_array]

 	erb :wall_list
 end




post '/wall' do


	session[:growl_array] << params[:new_growl]
		
	@new_growl = params[:new_growl]

	erb :wall
end


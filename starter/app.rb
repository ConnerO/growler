require 'sinatra'
require 'sinatra/reloader'

before do

	session[:growl_array] ||= []
end


#Routes
get '/' do

	erb :index
end

get '/wall' do

	@growl_array = session[:growl_array]

	erb :wall
end




post '/wall' do


	

	session[:growl_array] << params[:new_growl]
		
	@new_growl = params[:new_growl]

	erb :wall
end


require 'sinatra'
require 'sinatra/reloader'

before do

	session[:growl_array] ||= []
end


#Routes
get '/' do

	erb :index
end

post '/wall' do

	# session[:new_growl] << params[:new_growl]
		
	@new_growl = params[:new_growl]

	erb :wall
end


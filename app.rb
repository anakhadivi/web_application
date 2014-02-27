require 'sinatra'
require 'sinatra/activerecord'
require './models'

require 'bundler/setup'
require 'sinatra/base'
require 'rack-flash'
enable :sessions
use Rack::Flash, :sweep => true
set :sessions => true

set :database, "sqlite3:///new_project.sqlite3"

def current_user
	if session[:user_id]
		User.find(session[:user_id])
	else
		nil
	end
end

get '/sign_in' do
	erb :sign_in
end

post '/sign_in' do
	@user = User.where(email: params[:email]).first
	if @user && @user.password == params[:password]
		session[:user_id] = @user.id
	else
		flash[:notice] = "There was a problem signing you in :("
	end
	redirect '/userhome'
end

get '/logout' do 
	session[:user_id] = nil
	redirect '/'
end

get '/' do 
	erb :home	
end

get '/sign_up' do
	erb :signup
end
get '/userhome' do
	erb :userhome
end

post '/sign_up' do
	User.create(first_name: params[:first_name],last_name: params[:last_name],email: params[:email],password: params[:password])
	redirect '/userhome'
end

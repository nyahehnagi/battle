require 'sinatra'
require "sinatra/reloader" if development?

class Battle < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end
  
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_name_1] = params[:player_name_1]
    session[:player_name_2] = params[:player_name_2]
    redirect('/play')
  end

  get '/play' do
    @player_one = session[:player_name_1] 
    @player_two = session[:player_name_2] 
    erb(:play)
  end

  # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end
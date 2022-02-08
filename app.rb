require 'sinatra'
require "sinatra/reloader" if development?

class Battle < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/names' do
    @player_one = params[:player_name_1]
    @player_two = params[:player_name_2]
    erb(:play)
  end

  # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end
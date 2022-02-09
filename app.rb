require 'sinatra'
require "sinatra/reloader" if development?

require File.join(File.dirname(__FILE__), 'lib', 'player.rb')

class Battle < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end
  
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    # session[:player_name_1] = params[:player_name_1]
    # session[:player_name_2] = params[:player_name_2]
    $player_one = Player.new(params[:player_name_1])
    $player_two = Player.new(params[:player_name_2])

    redirect('/play')
  end

  get '/play' do
    # @player_one = session[:player_name_1] 
    # @player_two = session[:player_name_2] 
    @player_one = $player_one.name
    @player_two = $player_two.name
    @player_two_hp = $player_two.hit_points
    erb(:play)
  end

  # Should have used a get here as not changing the state of the program
  # keeping it as Post for time being as I feel there's an opportunity for some better
  # logic.. regarding how the attack information is rendered
  post '/attack' do
    $player_two.deduct_hit_points(10)
    redirect('/attack')
  end

  get '/attack' do
    # @player_one = session[:player_name_1] 
    # @player_two = session[:player_name_2] 
    @player_one = $player_one.name
    @player_two = $player_two.name
    @player_two_hp = $player_two.hit_points
    erb(:attack)
  end

  # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end
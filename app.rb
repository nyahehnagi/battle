require 'sinatra'
require 'sinatra/base'
require "sinatra/reloader" if development?

class MyApp < Sinatra::Base
  get '/' do
    'Testing infrastructure working!'
  end

  # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
  
end
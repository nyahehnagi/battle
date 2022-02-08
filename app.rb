require 'sinatra'
require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    
  end

  post '/gladiators' do
    erb :gladiators_form
  end
  
  # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
  
end
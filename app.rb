require 'sinatra'



class Battle < Sinatra::Base
  enable :sessions 
  # get '/' do
    #  'Testing infrastructure working! 234'
    # end
    get '/' do
      erb :index
    end

    get'/names' do
      erb :play
    end

    post '/names' do
     session[:player_1_name] = params[:player_1_name]
     session[:player_2_name] = params[:player_2_name]
     redirect '/play'
    end

    get '/play' do
      @player_1_name = session[:player_1_name]
      @player_2_name = session[:player_2_name]
      erb :play
    end

    get '/attack' do
      @player_1_name = session[:player_1_name]
      @player_2_name = session[:player_2_name]
      erb :attack
    end 

end
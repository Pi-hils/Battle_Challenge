require 'sinatra'

class Battle < Sinatra::Base
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
      @player_1_name = params[:player_1_name]
      @player_2_name = params[:player_2_name]
      erb :play
    end
end
require 'sinatra'
require_relative './lib/player'
require_relative './lib/game'

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
     $player_1 = Player.new(params[:player_1_name])
     $player_2 = Player.new(params[:player_2_name])
     redirect '/play'
    end

    get '/play' do
      @player_1_name = $player_1.name
      @player_2_name = $player_2.name
      erb :play
    end

    get '/attack' do
      @player_1 = $player_1
      @player_2 = $player_2
      # @player_1.attack(@player_2)
      Game.new(@player_1,@player_2).attack(@player_2)
      erb :attack
    end

end

require 'sinatra'
require './lib/player_model'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions
  set :session_secret, ''

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  get '/hit' do
    @game = $game
    @game.attack(@game.player2)
    redirect '/play'
  end

  run! if app_file == $0
end

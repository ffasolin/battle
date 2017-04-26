require 'sinatra'
require './lib/player_model'

class Battle < Sinatra::Base
  enable :sessions
  set :session_secret, ''

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_1
    @player_2 = $player_2
    erb(:play)
  end

  post '/hit' do
    $player_2.get_hit
    redirect '/play'
  end

  run! if app_file == $0
end

require 'sinatra'
require './lib/player_model'

class Battle < Sinatra::Base
  enable :sessions
  set :session_secret, ''

  get '/' do
    session[:confirmation] = nil
    erb(:index)
  end

  post '/names' do
    p params
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_1.name
    @player_2 = $player_2.name
    @confirmation = session[:confirmation]
    erb(:play)
  end

  post '/hit' do
    session[:confirmation] = 'OUCH!'
    redirect '/play'
  end

  run! if app_file == $0
end

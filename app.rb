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
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    erb(:play)
  end

  get '/hit' do
    @game.attack(@game.turns.last)
    return redirect '/game-over' if @game.turns.first.dead?
    redirect '/attacked'
  end

  get '/attacked' do
    erb(:attacked)
  end

  get '/game-over' do
    erb(:'game-over')
  end

  run! if app_file == $PROGRAM_NAME
end

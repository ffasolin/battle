require 'sinatra'

class Battle < Sinatra::Base
  enable :sessions
  set :session_secret, ''

  get '/' do
    session[:confirmation] = nil
    erb(:index)
  end

  post '/names' do
    session[:player_1] = params[:player_1]
    session[:player_2] = params[:player_2]
    redirect '/play'
  end

  get '/play' do
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    @confirmation = session[:confirmation]
    erb(:play)
  end

  post '/hit' do
    session[:confirmation] = 'OUCH!'
    redirect '/play'
  end

  run! if app_file == $0
end

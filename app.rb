require 'sinatra/base'
require 'sinatra'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
enable :sessions
get '/' do
  erb :index
end

post '/names' do
  player_1 = Player.new(params[:player_1_name])
  player_2 = Player.new(params[:player_2_name])
  @game = Game.create(player_1, player_2)
  redirect '/play'
end

before do
  @game = Game.instance
end

get '/play' do
  erb :play
end

post '/play' do
  @attacked = true
  @game.attack(@game.current_victim)
  @game.switch_players  
  erb :play
end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

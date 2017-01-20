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
  $game = Game.new(Player.new(params[:player_1_name]), Player.new(params[:player_2_name]))
  redirect '/play'
end

get '/play' do
  @player_1_name = $game.player_1.name
  @player_2_name = $game.player_2.name
  @attacker_name = $game.current_attacker.name
  @victim_name = $game.current_victim.name
  @player_1_hp = $game.current_attacker.hp
  @player_2_hp = $game.current_victim.hp
  @game_over = $game.game_over?
  @loser = $game.loser
  erb :play
end

post '/play' do
  @attacked = true
  $game.switch_players
  $game.attack($game.current_victim)
  @player_1_name = $game.player_1.name
  @player_2_name = $game.player_2.name
  @attacker_name = $game.current_attacker.name
  @victim_name = $game.current_victim.name
  @player_1_hp = $game.current_attacker.hp
  @player_2_hp = $game.current_victim.hp
  @game_over = $game.game_over?
  @loser = $game.loser
  erb :play
end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

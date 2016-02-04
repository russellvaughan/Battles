require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base

  use Rack::Session::Pool, :expire_after => 2592000

  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new
    $player1 = Player.new(params[:player1_name])
    $player2 = Player.new(params[:player2_name])
    redirect to('/play')
  end

  get '/play' do
    @player1 = $player1
    @player2 = $player2
    erb :play
  end

  get '/attack' do
    @player1 = $player1
    @player2 = $player2
    $game.attack(@player2)
    erb :attack
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end

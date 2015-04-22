require 'sinatra/base'
require './lib/game'
require './lib/player'
require './lib/board'
require './lib/ship'
require './lib/cell'
require './lib/water'

class Battleships < Sinatra::Base

  set :views, Proc.new {File.join(root, "..", "views")}

  board = Board.new(size: 3, content: Cell)
  ship = Ship.submarine
  game = Game.new

  get '/' do
    erb :index
  end

  get '/name' do
    erb :name
  end

  post '/name' do
    if params[:name].empty?
      @message = 'please enter your name'
      erb :name
    else
      redirect '/new_game'
    end
  end

  get '/new_game' do
    board.place(ship, :A1)
    @seed_data = board.convert_to_array
    erb :new_game
  end

   post '/new_game' do
    board.shoot_at(:A1)
    redirect '/new_game'
  end

  run! if app_file == $0
end

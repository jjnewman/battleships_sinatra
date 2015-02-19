require 'sinatra/base'
require './lib/game'
require './lib/player'
require './lib/board'
require './lib/ship'
require './lib/cell'
require './lib/water'


class Battleships < Sinatra::Base

  set :views, Proc.new {File.join(root, "..", "views")}


  # board = Array.new(2) {Array.new(2) {'~'}
  board = Board.new(size: 3, content: Cell)
  ship = Ship.submarine
  game = Game.new
  water = Water.new
  cell = Cell.new


   get '/' do
    puts board.inspect
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
      # player = Player.new(params[:name])
      # player.board = Board.new
      # game.add_player(player)
      redirect '/new_game'
    end
  end


  get '/new_game' do
    @seed_data = board.convert_to_array
    board.place(ship, :A1)
    erb :new_game
  end

   post '/new_game' do
    redirect '/new_game'
  end




  # start the server if ruby file executed directly
  run! if app_file == $0
end

class GamesController < ApplicationController
  # Add your GamesController code here

  def index
  end

  def show
  end

  def create
    byebug
    @game = Game.create#(game_params)
    @game.state = params[:state]
    @game.save
    render json: @game, status: 201
  end

  def update
  end


  private
  def game_params
    params.require(:state)
  end

end

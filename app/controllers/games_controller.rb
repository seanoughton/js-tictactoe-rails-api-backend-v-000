class GamesController < ApplicationController
  # Add your GamesController code here

  def index
  end

  def show
  end

  def create
    @game = Game.create(game_params)
   #redirect_to post_path(@post)
   render json: @game, status: 201
  end

  def update
  end


  private
  def game_params
    params.require(:game).permit(:state)
  end

end

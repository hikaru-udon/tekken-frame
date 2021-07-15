class MovesController < ApplicationController
before_action :set_move, only: [:index, :show, :search]

  def index
    @moves = @character.moves.all
  end
  
  def show
    @move = Move.find(params[:id])
  end

  def search
    #Viewのformで取得したパラメータをモデルに渡す
    @moves = Move.search(params[:keyword])
    render :index
  end

  private
  
  def set_move
    @character = Character.find(params[:character_id])
  end

  # def character_params
  #   params.require(@character).permit(@character.name)    
  # end

  # def move_params
  #   params.require(:move).permit(:moves_name)
  # end

end

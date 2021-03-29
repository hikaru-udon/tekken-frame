class MovesController < ApplicationController
<<<<<<< Updated upstream
# before_action :set_move, only: [:index, :show]

def index
  # binding.pry
  @character = Character.find(params[:character_id])
  @moves = @character.moves
end

  private

  # def set_move
  # end
=======
  before_action :set_move

  def index

  end

  private

  def set_move
    
  end

>>>>>>> Stashed changes
end

class MovesController < ApplicationController
# before_action :set_move, only: [:index, :show]

  def index
    # binding.pry
    @character = Character.find(params[:character_id])
    @moves = @character.moves
  end

end

class Move < ApplicationRecord
  belongs_to :character

  def self.search(search) #self.はMove.を意味する
    if search !=""
      Move.where(['moves_name LIKE ?', "%#{search}%"]) #検索とmoves_nameの部分一致を表示。
    else
      Move.all #全て表示させる
   end
  end

end

class Move < ApplicationRecord
  belongs_to :character

  def self.search(search) #self.はMove.を意味する
    if search !=""
      Move.where(['moves_name LIKE ? or startup LIKE ? or block LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%"]) #キーワード検索で技名、発生F、ガードFの部分一致を表示。
    else
      Move.all #全て表示させる
    end
  end
  
end

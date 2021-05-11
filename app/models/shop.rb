class Shop < ApplicationRecord
  belongs_to :patissier
  has_many :comments, dependent: :destroy
  #パティシエ側おすすめ
  has_many :recommends, dependent: :destroy
  def recommend_by?(patissier)
    recommends.where(patissier_id: patissier.id).exists?
  end
  #一般側行きたいリスト
  has_many :favorites, dependent: :destroy
  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
  attachment :image
end

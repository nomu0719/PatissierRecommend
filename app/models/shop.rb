class Shop < ApplicationRecord
  validates :name, :address,:introduction, presence: true
  
  belongs_to :patissier
  has_many :comments, dependent: :destroy
  has_many :item_images, dependent: :destroy
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
  #住所に経度緯度追加
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  attachment :image
end

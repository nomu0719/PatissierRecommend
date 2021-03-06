class Patissier < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    has_many :shops
    has_many :comments, dependent: :destroy
    has_many :recommends, dependent: :destroy
    has_many :item_images, dependent: :destroy
end

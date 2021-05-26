class ItemImage < ApplicationRecord
  validates :item_image, presence: true
  belongs_to :patissier
  belongs_to :shop
  
  attachment :item_image
end

class ItemImage < ApplicationRecord
  belongs_to :patissier
  belongs_to :shop
  attachment :item_image
end

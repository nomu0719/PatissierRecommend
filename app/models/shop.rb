class Shop < ApplicationRecord
  belongs_to :patissier
  attachment :image
end

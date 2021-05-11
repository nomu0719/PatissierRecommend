class Comment < ApplicationRecord
  belongs_to :patissier
  belongs_to :shop
end

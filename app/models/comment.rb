class Comment < ApplicationRecord
  validates :comment, presence: true
  belongs_to :patissier
  belongs_to :shop
end

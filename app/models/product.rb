class Product < ApplicationRecord
  belongs_to :restaurant

  validates :restaurant_id, presence: true
end

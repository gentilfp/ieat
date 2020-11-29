class Restaurant < ApplicationRecord
  has_many :products

  def total_products
    products.count
  end
end

class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product

  enum status: [:pending, :done]
end

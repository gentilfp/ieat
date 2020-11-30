class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product

  enum status: [:pending, :done]

  after_create :notify_restaurant

  def notify_restaurant
    RestaurantNotifierJob.perform_later
  end
end

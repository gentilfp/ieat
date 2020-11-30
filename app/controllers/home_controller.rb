class HomeController < ApplicationController
  def index
    @restaurants = []

    if current_user && (current_user.admin? || current_user.customer?)
      @restaurants = Restaurant.all
    end
  end
end

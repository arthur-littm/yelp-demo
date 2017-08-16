class Admin::RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all.first(2)
  end
end

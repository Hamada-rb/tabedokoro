class WebController < ApplicationController
  def index
    @new_restaurants = Restaurant.new_restaurants
    @popular_restaurants = Restaurant.popular_restaurants
  end

  def about
  end

  def contact
  end
end

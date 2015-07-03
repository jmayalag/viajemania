class LandingController < ApplicationController
  def home
    @categories = Category.all
    @contents = Destination.all
    @slides = Slide.all
  end

  def category
    @category = Category.friendly.find(params[:id])
    @destinations = @category.destinations
    @slides = Slide.all
  end

  def destination
    @destination = Destination.friendly.find(params[:id])
    @category = @destination.category
  end
end

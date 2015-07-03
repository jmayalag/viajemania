class LandingController < ApplicationController
  def home
    @categories = Category.all
    @contents = Destination.all
    @slides = Slide.all
  end

  def category
    @category = Category.find(params[:id])
    @destinations = @category.destinations
    @slides = Slide.all
  end

  def destination
    @destination = Content.find(params[:id])
    @category = @destination.category
  end
end

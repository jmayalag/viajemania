class LandingController < ApplicationController
  def home
    @categories = Category.all
    @contents = Destination.where(mostrar_en_portada: true).limit(4)
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

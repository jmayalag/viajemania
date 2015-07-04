class LandingController < ApplicationController
  def home
    @categories = Category.where(mostrar_en_portada: true).order(:orden)
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

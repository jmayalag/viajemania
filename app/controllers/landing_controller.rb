class LandingController < ApplicationController
  def home
    @categories = Category.where(mostrar_en_portada: true).order(:orden)
  end

  def category
    @category = Category.friendly.find(params[:id])
    @destinations = @category.destinations
  end

  def destination
    @destination = Destination.friendly.find(params[:id])
    @category = @destination.category
  end

  def about
  end
end

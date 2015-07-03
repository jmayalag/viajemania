class Category < ActiveRecord::Base
  extend FriendlyId
  has_many :destinations
  friendly_id :nombre, use: :slugged

  def front_destinations
    self.destinations.where(mostrar_en_portada: true).limit(4)
  end
end

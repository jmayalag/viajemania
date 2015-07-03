class Destination < ActiveRecord::Base
  extend FriendlyId
  belongs_to :category
  friendly_id :nombre, use: :slugged
  validates_presence_of :nombre, :descripcion, :category_id
end

class Destination < ActiveRecord::Base
  extend FriendlyId
  belongs_to :category
  friendly_id :nombre, use: :slugged
  validates_presence_of :nombre, :descripcion, :category_id
  has_attached_file :imagen
  has_attached_file :front_image
  validates_attachment_content_type :imagen, :front_image, :content_type => /\Aimage\/.*\Z/
end

class Destination < ActiveRecord::Base
  extend FriendlyId
  belongs_to :category
  friendly_id :nombre, use: :slugged
  validates_presence_of :nombre, :descripcion, :category_id
  has_attached_file :imagen
  has_attached_file :front_image
  validates_attachment_content_type :imagen, :front_image, :content_type => /\Aimage\/.*\Z/
  validates :nombre, presence: true, length: {maximum: 30}
  validates :descripcion_corta, presence: true, length: {maximum: 40}
end

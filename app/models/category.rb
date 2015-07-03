class Category < ActiveRecord::Base
  extend FriendlyId
  has_many :destinations
  friendly_id :nombre, use: :slugged
end

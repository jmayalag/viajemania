class Destination < ActiveRecord::Base
  extend FriendlyId
  belongs_to :category
  friendly_id :nombre, use: :slugged
end

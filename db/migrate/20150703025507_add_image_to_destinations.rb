class AddImageToDestinations < ActiveRecord::Migration
  def change
    add_column :destinations, :imagen, :string
  end
end

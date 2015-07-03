class AddShortDescriptionToDestinations < ActiveRecord::Migration
  def change
    add_column :destinations, :descripcion_corta, :string
  end
end

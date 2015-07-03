class AddShowFrontToDestinations < ActiveRecord::Migration
  def change
    add_column :destinations, :mostrar_en_portada, :boolean
  end
end

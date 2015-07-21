class AddDefaultMonedaToDestinations < ActiveRecord::Migration
  def change
    change_column_default :destinations, :moneda, "$"
  end
end

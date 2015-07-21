class AddCurrencyToDestinations < ActiveRecord::Migration
  def change
    add_column :destinations, :moneda, :string
  end
end

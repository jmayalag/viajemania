class AddOrderAndShowFrontToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :mostrar_en_portada, :boolean, default: false
    add_column :categories, :orden, :integer, default: 0
  end
end

class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :nombre
      t.text :descripcion
      t.string :slug

      t.timestamps null: false
    end
    add_index :categories, :nombre, unique: true
    add_index :categories, :slug, unique: true
  end
end

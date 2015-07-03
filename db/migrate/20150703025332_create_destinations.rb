class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.string :nombre
      t.text :descripcion
      t.string :slug
      t.string :link
      t.integer :costo
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :destinations, :slug, unique: true
  end
end

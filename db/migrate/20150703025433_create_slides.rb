class CreateSlides < ActiveRecord::Migration
  def change
    create_table :slides do |t|
      t.string :nombre
      t.string :imagen

      t.timestamps null: false
    end
  end
end

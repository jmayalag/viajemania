class RemoveImagenFromSlides < ActiveRecord::Migration
  def change
    remove_column :slides, :imagen, :string
  end
end

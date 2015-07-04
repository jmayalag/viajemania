class AddOrderToSlides < ActiveRecord::Migration
  def change
    add_column :slides, :orden, :integer, default: 0
  end
end

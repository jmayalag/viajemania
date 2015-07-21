class AddStyleClassToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :style_class, :string, default: "package-section-altern"
  end
end

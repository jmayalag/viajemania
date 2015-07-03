class AddSubtitleToSlide < ActiveRecord::Migration
  def change
    add_column :slides, :subtitulo, :string
  end
end

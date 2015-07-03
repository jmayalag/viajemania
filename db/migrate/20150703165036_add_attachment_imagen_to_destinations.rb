class AddAttachmentImagenToDestinations < ActiveRecord::Migration
  def self.up
    change_table :destinations do |t|
      t.attachment :imagen
    end
  end

  def self.down
    remove_attachment :destinations, :imagen
  end
end

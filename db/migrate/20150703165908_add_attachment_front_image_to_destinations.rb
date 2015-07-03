class AddAttachmentFrontImageToDestinations < ActiveRecord::Migration
  def self.up
    change_table :destinations do |t|
      t.attachment :front_image
    end
  end

  def self.down
    remove_attachment :destinations, :front_image
  end
end

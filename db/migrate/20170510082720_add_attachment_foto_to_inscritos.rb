class AddAttachmentFotoToInscritos < ActiveRecord::Migration
  def self.up
    change_table :inscritos do |t|
      t.attachment :foto
    end
  end

  def self.down
    remove_attachment :inscritos, :foto
  end
end

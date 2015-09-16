class AddAttachmentAvatarToPetOfTheWeeks < ActiveRecord::Migration
  def self.up
    add_attachment :pet_of_the_weeks, :avatar
  end

  def self.down
    remove_attachment :pet_of_the_weeks, :avatar
  end
end

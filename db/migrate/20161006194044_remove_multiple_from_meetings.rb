class RemoveMultipleFromMeetings < ActiveRecord::Migration[5.0]
  def change
    remove_column :meetings, :multiple, :boolean
  end
end

class RemoveStartTimeFromMeetings < ActiveRecord::Migration[5.0]
  def change
    remove_column :meetings, :start_time, :datetime
  end
end

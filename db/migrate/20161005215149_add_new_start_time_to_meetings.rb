class AddNewStartTimeToMeetings < ActiveRecord::Migration[5.0]
  def change
    add_column :meetings, :start_time_2, :datetime
  end
end

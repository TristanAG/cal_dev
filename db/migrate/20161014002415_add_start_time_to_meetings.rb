class AddStartTimeToMeetings < ActiveRecord::Migration[5.0]
  def change
    add_column :meetings, :start_time, :datetime
  end
end

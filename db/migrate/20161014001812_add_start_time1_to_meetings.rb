class AddStartTime1ToMeetings < ActiveRecord::Migration[5.0]
  def change
    add_column :meetings, :start_time_1, :datetime
  end
end

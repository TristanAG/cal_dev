class AddMoreInstancesToMeetings < ActiveRecord::Migration[5.0]
  def change
    add_column :meetings, :start_time_3, :datetime
    add_column :meetings, :start_time_4, :datetime
  end
end

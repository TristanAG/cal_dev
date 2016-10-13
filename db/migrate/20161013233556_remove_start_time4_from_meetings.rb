class RemoveStartTime4FromMeetings < ActiveRecord::Migration[5.0]
  def change
    remove_column :meetings, :start_time_4, :datetime
  end
end

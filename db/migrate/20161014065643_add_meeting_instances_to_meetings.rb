class AddMeetingInstancesToMeetings < ActiveRecord::Migration[5.0]
  def change
    add_column :meetings, :meeting_instances, :int
  end
end

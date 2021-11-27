class RemoveTimeFromSchedules < ActiveRecord::Migration[6.1]
  def change
    remove_column :schedules, :time, :datetime
  end
end

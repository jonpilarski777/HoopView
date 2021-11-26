class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.string :opponent
      t.string :venue
      t.datetime :date
      t.datetime :time
      t.boolean :home
      t.integer :favorite_team

      t.timestamps
    end
  end
end

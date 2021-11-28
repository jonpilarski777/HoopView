class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.string :opponent
      t.string :venue
      t.datetime :date
      t.boolean :home
      t.boolean :conference_game
      t.integer :favorite_team_id

      t.timestamps
    end
  end
end

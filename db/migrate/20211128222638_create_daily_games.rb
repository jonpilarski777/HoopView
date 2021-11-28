class CreateDailyGames < ActiveRecord::Migration[6.1]
  def change
    create_table :daily_games do |t|
      t.string :matchup
      t.datetime :date
      t.string :venue

      t.timestamps
    end
  end
end

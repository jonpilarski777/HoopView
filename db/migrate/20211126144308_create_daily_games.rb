class CreateDailyGames < ActiveRecord::Migration[6.1]
  def change
    create_table :daily_games do |t|
      t.string :home_team
      t.string :away_team
      t.string :venue

      t.timestamps
    end
  end
end

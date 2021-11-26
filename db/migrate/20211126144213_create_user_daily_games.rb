class CreateUserDailyGames < ActiveRecord::Migration[6.1]
  def change
    create_table :user_daily_games do |t|
      t.datetime :today
      t.integer :user_id
      t.integer :daily_games_id

      t.timestamps
    end
  end
end

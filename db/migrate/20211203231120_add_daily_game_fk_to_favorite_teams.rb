class AddDailyGameFkToFavoriteTeams < ActiveRecord::Migration[6.1]
  def change
    add_column :favorite_teams, :daily_game_id, :integer
  end
end

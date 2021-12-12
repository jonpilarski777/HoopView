class AddSportsdbIdToFavoriteTeams < ActiveRecord::Migration[6.1]
  def change
    add_column :favorite_teams, :sports_db_id, :integer
  end
end

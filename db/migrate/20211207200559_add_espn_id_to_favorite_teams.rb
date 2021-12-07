class AddEspnIdToFavoriteTeams < ActiveRecord::Migration[6.1]
  def change
    add_column :favorite_teams, :espn_id, :integer
  end
end

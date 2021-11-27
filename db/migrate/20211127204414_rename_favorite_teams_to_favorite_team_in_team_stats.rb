class RenameFavoriteTeamsToFavoriteTeamInTeamStats < ActiveRecord::Migration[6.1]
  def up
    rename_column :team_stats, :favorite_teams_id, :favorite_team_id 
  end

  def down 
    rename_column :team_stats,  :favorite_team_id, :favorite_teams_id
  end
end



class RenameFavoriteTeamToFavoriteTeamIdInSchedules < ActiveRecord::Migration[6.1]
  def up 
    rename_column :schedules, :favorite_team, :favorite_team_id

  end

  def down 
    rename_column :schedules, :favorite_team_id, :favorite_team
  end

  end

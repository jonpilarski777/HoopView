class AddTeamToUserFavoriteTeams < ActiveRecord::Migration[6.1]
  def change
    add_column :user_favorite_teams, :team, :string
  end
end

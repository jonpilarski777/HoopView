class AddRankingToUserFavoriteTeams < ActiveRecord::Migration[6.1]
  def change
    add_column :user_favorite_teams, :ranking, :integer
  end
end

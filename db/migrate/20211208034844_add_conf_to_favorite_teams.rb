class AddConfToFavoriteTeams < ActiveRecord::Migration[6.1]
  def change
    add_column :favorite_teams, :Conf, :string
  end
end

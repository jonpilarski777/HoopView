class CreateUserFavoriteTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :user_favorite_teams do |t|
      t.integer :user_id
      t.integer :favorite_team_id

      t.timestamps
    end
  end
end

class CreateUsersFavoriteTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :users_favorite_teams do |t|
      t.integer :user_id
      t.integer :favorite_team_id

      t.timestamps
    end
  end
end

class CreateFavoriteTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :favorite_teams do |t|
      t.string :teamName
      t.integer :wins
      t.integer :losses

      t.timestamps
    end
  end
end

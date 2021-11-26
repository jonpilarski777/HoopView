class CreateTeamStats < ActiveRecord::Migration[6.1]
  def change
    create_table :team_stats do |t|
      t.decimal :ppg
      t.decimal :rpg
      t.decimal :apg
      t.decimal :three_pt_percentage
      t.decimal :ppga
      t.decimal :ft_percentage
      t.decimal :rpga
      t.decimal :topg
      t.decimal :to_forced
      t.integer :games
      t.decimal :three_pt_percentage_allowed
      t.integer :favorite_teams_id

      t.timestamps
    end
  end
end

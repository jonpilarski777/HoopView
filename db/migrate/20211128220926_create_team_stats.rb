class CreateTeamStats < ActiveRecord::Migration[6.1]
  def change
    create_table :team_stats do |t|
      t.integer :games_played
      t.decimal :ppg
      t.decimal :rpg
      t.decimal :apg
      t.decimal :three_pt_percentage
      t.decimal :field_goal_percentage
      t.decimal :ft_percentage
      t.decimal :topg
      t.decimal :spg
      t.decimal :bpg
      t.decimal :ppga
      t.integer :favorite_team_id

      t.timestamps
    end
  end
end

class TeamStatSerializer < ActiveModel::Serializer
  attributes :id, :games_played, :ppg, :rpg, :apg, :three_pt_percentage, :field_goal_percentage, :ft_percentage, :topg, :spg, :bpg, :ppga, :favorite_team_id
end

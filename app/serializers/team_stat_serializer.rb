class TeamStatSerializer < ActiveModel::Serializer
  attributes :id, :ppg, :rpg, :apg, :three_pt_percentage, :ppga, :ft_percentage, :rpga, :topg, :to_forced, :games, :three_pt_percentage_allowed, :favorite_teams_id
end

class UserFavoriteTeam < ApplicationRecord
    belongs_to :user
    belongs_to :favorite_team

    validates :favorite_team_id, uniqueness: { scope: [:user_id], message: "Can't select the same favorite team twice" }

    validates :favorite_team, presence: true
end

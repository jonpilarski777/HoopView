class UserFavoriteTeam < ApplicationRecord
    belongs_to :user
    belongs_to :favorite_team

    # validates :favorite_team_id, uniqueness: { scope: [:user_id], message: "has already been listed. Please select a different team." }

    # validates :favorite_team, presence: true
end

class UserFavoriteTeam < ApplicationRecord
    belongs_to :user
    belongs_to :favorite_team

    # validates :favorite_team_id, uniqueness: { scope: [:user_id], message: "has already been listed. Please select a different team." }
    # I think it this one WONT have scope!!, just uniqueness by itself

    # validates :favorite_team_id, presence: true
    # validates :ranking, uniqueness: {scope: [:user_id]}
    # validates :ranking, numericality: {greater_than_or_equal_to: 1, less_than_or_equal_to: 10}
end

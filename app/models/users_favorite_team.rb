class UsersFavoriteTeam < ApplicationRecord
    belongs_to :user
    belongs_to :favorite_team
end

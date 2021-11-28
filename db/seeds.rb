# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Deleting existing data on reseed..."

puts "Seeding users..."

user_samples = ["Jay Bilas", "Bill Self", "Gus Johnson", "John Calipari", "Roy Williams"
]


user_list = []
user_samples.each_with_index do |a, i|
    user_list.push({
        name: a,
        username: "user#{101 + i}",
        password_digest: "temptemptemp",
        email: "tempyMcTempel@temp.com",
    })
    puts "adding user"
end
puts user_list
users = User.create(user_list)

# puts "Seeding Favorite Teams"

# team_samples = ["Duke", "North Carolina", "South Carolina", "Texas", "Gonzaga", "Bryant", 
# "Nebraska", "Nevada", "New Hampshire", "Oklahoma", "Oregon", "Pennsylvania"
# ]

# teams_list = []

# team_samples.each_with_index do |b, i|
#     teams_list.push({
#         teamName: b,
#         wins: (rand(1..6)),
#         losses: (rand(1..6)),
#     })
# end

# favorite_teams = FavoriteTeam.create(teams_list)



# puts "Seeding user Favorite Teams"
# users.length.times do |t|
#     user_id = users[t].id
#     favorite_teams.length.times do |z|
#         favorite_team_id = favorite_teams[z].id
#         teamName = team_samples
#         UsersFavoriteTeam.create({ 
#             user_id: user_id,
#             favorite_team_id: favorite_team_id,
#             teamName: teamName
#          })
#     end
# end



# puts "Seeding Schedules"
# schedules = Schedule.create([
#     {date: Time.utc(2021, 12, 10, 11),
#     venue: "Mackey Arena",
#     home: 1,
#     favorite_team_id:  

    
    
#     }




# # ])

# puts "Seeding user daily games"


# puts "Seeding daily games"


# puts "Seeding Team Stats"
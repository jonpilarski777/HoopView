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



puts "Seeding Favorite Teams"
team_samples = ["Duke", "North Carolina", "South Carolina", "Texas", "Gonzaga", "Bryant", 
"Nebraska", "Nevada", "New Hampshire", "Oklahoma", "Oregon", "Pennsylvania"
]
teams_list = []
team_samples.each_with_index do |b, i|
    teams_list.push({
        team_name: b,
        wins: (rand(1..6)),
        losses: (rand(1..6)),
    })
end
favorite_teams = FavoriteTeam.create(teams_list)


puts "Seeding user Favorite Teams"
users.length.times do |t|
    user_id = users[t].id
    favorite_teams.length.times do |z|
        favorite_team_id = favorite_teams[z].id
        teamName = team_samples
        team = "Arizona State"
        UserFavoriteTeam.create({ 
            user_id: user_id,
            favorite_team_id: favorite_team_id,
            team: team
         })
    end
end

puts "Seeding Schedules"
schedules = Schedule.create([
    {date: Time.new(2021, 12, 10, 11),
    opponent: "Northwestern",
    venue: "Mackey Arena",
    home: 1,
    conference_game: 0,
    favorite_team_id: FavoriteTeam.all.sample.id   
    }])

puts "Seeding daily games"
daily_games = DailyGame.create([
    date: Time.new(2021, 12, 5, 11, 30),
    matchup: "Duke vs. North Carolina",
    venue: "Madison Square Garden"
])

puts "Seeding user daily games"
users.length.times do |t|
    user_id = users[t].id
    daily_games.length.times do |z|
        daily_game_id = daily_games[z].id
        UserDailyGame.create({ 
            user_id: user_id,
            daily_game_id: daily_game_id,
            today: Date.today
         })
    end
end
puts "Seeding Team Stats"

Team_Stats = TeamStat.create([
    {games_played: rand(4..6),
    ppg: 80.0,
    rpg: 30.5,
    apg: 20.4, 
    three_pt_percentage: 36.5,
    field_goal_percentage: 51.3,
    ft_percentage: 75.0,
    topg: 10.4,
    spg: 6, 
    bpg: 3.2,
    ppga: 75.2,
    favorite_team_id: FavoriteTeam.all.sample.id
    }])
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

puts "Seeding Favorite Teams"
team_samples = ["Abilene Christian", "Air Force", "Akron", "Alabama", "Alabama A&M", "Alabama State", "Albany", "Alcorn State", "American", 
    "Appalachian State", "Arizona", "Arizona State", "Ark Little Rock", "Arkansas", "Arkansas Pine Bluff", "Arkansas State", "Army", "Auburn", 
    "Austin Peay", "Ball State", "Baylor", "Bellarmine", "Belmont", "Bethune Cookman", "Binghamton", "Boise State", "Boston College", "Boston Univ", 
    "Bowling Green", "Bradley", "Brown", "Bryant", "Bucknell", "Buffalo", "Butler", "Byu", "Cal Bakersfield", "Cal Baptist", "Cal Fullerton", 
    "Cal Northridge", "Cal Poly", "California", "Campbell", "Canisius", "Central Arkansas", "Central Conn State", "Central Florida", "Central Michigan", 
    "Charleston So", "Charlotte", "Chattanooga", "Chicago State", "Cincinnati", "Clemson", "Cleveland State", "Coastal Carolina", "Colgate", 
    "Coll Of Charleston", "Colorado", "Colorado State", "Columbia", "Connecticut", "Coppin State", "Cornell", "Creighton", "Dartmouth",
     "Davidson", "Dayton", "Delaware", "Delaware State", "Denver", "Depaul", "Detroit Mercy", "Dixie State", "Drake", "Drexel", "Duke", 
     "Duquesne", "East Carolina", "East Tennessee State", "East Washington", "Eastern Illinois", "Eastern Kentucky", "Eastern Michigan", 
     "Elon", "Evansville", "Fairfield", "Fairleigh Dickinson", "Fla Gulf Coast", "Florida", "Florida A&M", "Florida Atlantic", "Florida Int'L", 
     "Florida State", "Fordham", "Fort Wayne", "Fresno State", "Furman", "Gardner Webb", "George Mason", "George Washington", "Georgetown", "Georgia", 
     "Georgia Southern", "Georgia State", "Georgia Tech ", "Gonzaga", "Grambling State", "Grand Canyon", "Hampton", "Hartford", "Harvard", "Hawaii", 
     "High Point", "Hofstra", "Holy Cross", "Houston", "Houston Baptist", "Howard", "Idaho", "Idaho State", "Illinois", "Illinois Chicago", "Illinois State",
     "Incarnate Word", "Indiana", "Indiana State", "Iona", "Iowa", "Iowa State", "Iupui", "Jackson State", "Jacksonville", "Jacksonville State", 
     "James Madison", "Kansas", "Kansas State", "Kennesaw State", "Kent State", "Kentucky", "La Salle", "Lafayette", "Lamar", "Lehigh", "Liberty",
      "Lipscomb", "Liu Brooklyn", "Long Beach State", "Longwood", "Louisiana  ", "Louisiana Monroe", "Louisiana Tech", "Louisville", "Loyola Cal",
       "Loyola Il", "Loyola Md", "Lsu", "Maine", "Manhattan", "Marist", "Marquette", "Marshall", "Maryland", "Massachusetts", "Mcneese", "Md Baltimore Cty",
        "Md Eastern Shore", "Memphis", "Mercer", "Merrimack", "Miami", "Miami Ohio", "Michigan", "Michigan State", "Middle Tenn State", "Milwaukee", 
        "Minnesota", "Mississippi", "Mississippi State", "Mississippi Valley State", "Missouri", "Missouri State", "Mo Kansas City", "Monmouth", "Montana",
         "Montana State", "Morehead State", "Morgan State", "Mount State Mary'S", "Murray State", "Navy", "Nebraska", "Nevada", "New Hampshire ", 
         "New Mexico", "New Mexico State", "New Orleans", "Niagara", "Nicholls", "Njit", "Northern Arizona", "No Carolina A&T", "No Carolina Central",
          "No Carolina State", "Norfolk State", "North Alabama", "North Carolina", "North Dakota", "North Dakota State", "North Florida", "North Texas",
           "Northeastern", "Northern Colorado", "Northern Illinois", "Northern Iowa", "Northern Kentucky", "Northwestern", "Northwestern State",
            "Notre Dame", "Oakland", "Ohio", "Ohio State", "Oklahoma", "Oklahoma State", "Old Dominion", "Omaha", "Oral Roberts", "Oregon", "Oregon State",
             "Pacific", "Penn", "Penn State", "Pepperdine", "Pittsburgh", "Portland", "Portland State", "Prairie View A&M", "Presbyterian ", "Princeton", 
             "Providence", "Purdue", "Quinnipiac", "Radford", "Rhode Island", "Rice", "Richmond", "Rider", "Robert Morris", "Rutgers", "Sacramento State",
              "Sacred Heart", "Saint Peters", "Sam Houston State", "Samford", "San Diego", "San Diego State", "San Francisco", "San Jose State", 
              "Santa Clara", "Se Louisiana", "Se Missouri State", "Seattle", "Seton Hall", "Siena", "Siue Edwardsville", "Smu", "Southern Illinois", 
              "Southern Miss", "South Alabama", "South Carolina", "South Carolina State", "South Dakota", "South Dakota State", "South Florida", "Southern",
               "Southern Utah", "St Bonaventure", "Saint Francis Ny", "Saint Francis Pa", "Saint Johns", "Saint Josephs", "St Louis", "Saint Mary'S", 
               "St Thomas", "Stanford", "Stephen F Austin", "Stetson", "Stony Brook", "Syracuse", "Tcu", "Tarleton State", "Temple", "Tennessee", 
               "Tennessee State", "Tennessee Tech", "Tex Arlington", "Tex San Antonio", "Texas", "Texas A&M", "Texas A&M Cc", "Texas Southern", 
               "Texas State", "Texas Tech", "The Citadel", "Toledo", "Towson", "Troy", "Tulane", "Tulsa", "Uab", "Uc Davis", "Uc Irvine", "Uc Riverside", 
               "Uc San Diego", "Uc Santa Barbara", "Ucla", "Umass Lowell", "Unc  Greensboro", "Unc  Wilmington", "Unc Ashville", "Unlv", "Usc", 
               "Usc Upstate", "Ut Martin", "Ut Rio Grande Valley", "Utah", "Utah State", "Utah Valley", "Utep", "Valparaiso", "Vanderbilt", "Vcu", 
               "Vermont", "Villanova", "Virginia  ", "Virginia Tech", "Vmi", "Wagner", "Wake Forest", "Washington  ", "Washington State", "Weber St",
                "West Virginia", "Western Carolina", "Western Illinois", "Western Kentucky", "Western Michigan", "Wichita State", "William And Mary", "Winthrop", "Wis Green Bay", "Wisconsin", "Wofford", "Wright State", "Wyoming", "Xavier", "Yale", "Youngstown State"] 


teams_list = []
team_samples.each_with_index do |b, i|
    teams_list.push({
        team_name: b,
        wins: (rand(1..6)),
        losses: (rand(1..6)),
        daily_game_id: DailyGame.all.sample.id
    })
end
favorite_teams = FavoriteTeam.create(teams_list)


puts "Seeding user Favorite Teams"
users.length.times do |t|
    user_id = users[t].id
    favorite_teams.length.times do |z|
        favorite_team_id = favorite_teams[z].id
        teamName = team_samples
        team = FavoriteTeam.all.sample.team_name
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




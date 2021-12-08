# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require ‘rest-client’



# def cbb_data
#     cbb = RestClient.get(http://site.api.espn.com/apis/site/v2/sports/basketball/mens-college-basketball/teams)
#     cbb_array = JSON.parse(news)["articles"]
#     cbb.each do |s|
#     CBB.create(title: s["title"], author: s["author"], content:   s["content"], url: s["url"])
# end
# end
# cbb_data()

puts "Deleting existing data on reseed..."

puts "Seeding users..."
user_samples = ["Jay Bilas", "Bill Self", "Gus Johnson", "John Calipari", "Roy Williams"
]

User1 = User.create(name: user_samples[0], username: "user101", password_digest: "temptemptemp", email: "tempyMcTempel@temp.com")

User2 = User.create(name: user_samples[1], username: "user102", password_digest: "temptemptemp", email: "tempyMcTempe2@temp.com")

User3 = User.create(name: user_samples[2], username: "user103", password_digest: "temptemptemp", email: "tempyMcTempe3@temp.com")

User4 = User.create(name: user_samples[3], username: "user104", password_digest: "temptemptemp", email: "tempyMcTempe4@temp.com")

User5 = User.create(name: user_samples[4], username: "user105", password_digest: "temptemptemp", email: "tempyMcTempe5@temp.com")

users = [User1, User2, User3, User4, User5]

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

espn_id_sample = [2000, 2005, 2006, 333, 2010, 2011, 399, 2016, 44, 2026, 12, 9, 2031, 8, 2029, 2032, 349, 2, 2046, 2050, 239, 91, 2057, 2065, 2066, 68, 103, 104, 189, 71, 225, 2803, 2083, 2084, 2086, 252, 2934, 2856, 2239, 2463, 13, 25, 2097, 2099, 2110, 2115, 2116, 2117, 2127, 2429, 236, 2130, 2132, 228, 325, 324, 2142, 232, 38, 36, 171, 41, 2154, 172, 156, 159, 2166, 2168, 48, 2169, 2173, 305, 2174, 3101, 2181, 2182, 150, 2184, 151, 2193, 331, 2197, 2198, 2199, 2210, 339, 2217, 161, 526, 57, 50, 2226, 2229, 52, 2230, 2870, 278, 231, 2241, 2244, 45, 46, 61, 290, 2247, 59, 2250, 2755, 2253, 2261, 42, 108, 62, 2272, 2275, 107, 248, 2277, 47, 70, 304, 356, 82, 2287, 2916, 84, 282, 314, 2294, 66, 85, 2296, 294, 55, 256, 2305, 2306, 338, 2309, 96, 2325, 322, 2320, 2329, 2335, 288, 112358, 299, 2344, 309, 2433, 2348, 97, 2351, 2350, 2352, 99, 311, 2363, 2368, 269, 276, 120, 113, 2377, 2378, 2379, 235, 2382, 2771, 2390, 193, 130, 127, 2393, 270, 135, 145, 344, 2400, 142, 2623, 140, 2405, 149, 147, 2413, 2415, 116, 93, 2426, 158, 2440, 160, 167, 166, 2443, 315, 2447, 2885, 2464, 2448, 2428, 152, 2450, 2453, 153, 155, 2449, 2454, 249, 111, 2458, 2459, 2460, 94, 77, 2466, 87, 2473, 195, 194, 201, 197, 295, 2437, 198, 2483, 204, 279, 219, 213, 2492, 221, 2501, 2502, 2504, 2506, 163, 2507, 2509, 2514, 2515, 227, 242, 257, 2520, 2523, 164, 16, 2529, 2612, 2534, 2535, 301, 21, 2539, 23, 2541, 2545, 2546, 2547, 2550, 2561, 2565, 2567, 79, 2572, 6, 2579, 2569, 233, 2571, 58, 2582, 253, 179, 2597, 2598, 2599, 2603, 139, 2608, 2900, 24, 2617, 56, 2619, 183, 2628, 2627, 218, 2633, 2634, 2635, 250, 2636, 251, 245, 357, 2640, 326, 2641, 2643, 2649, 119, 2653, 2655, 202, 5, 302, 300, 27, 28, 2540, 26, 2349, 2430, 350, 2427, 2439, 30, 2908, 2630, 292, 254, 328, 3084, 2638, 2674, 238, 2670, 261, 222, 258, 259, 2678, 2681, 154, 264, 265, 2692, 277, 2717, 2710, 98, 2711, 2724, 2729, 2737, 2739, 275, 2747, 2750, 2751, 2752, 43, 2754, 
]

conf_sample = ["WAC", "MWC", "MAC", "SEC", "SWAC", "SWAC", "AE", "SWAC", "Pat", "SB", "P12", "P12", "SB", "SEC", "SWAC", "SB", "Pat", "SEC", "OVC", "MAC", "B12", "Asun", "OVC", "SWAC", "AE", "MWC", "ACC", "Pat", "MAC", "MVC", "Ivy", "NEC", "Pat", "MAC", "BE", "WCC", "BW", "WAC", "BW", "BW", "BW", "P12", "BSth", "MAAC", "Asun", "NEC", "Amer", "MAC", "BSth", "CUSA", "SC", "WAC", "Amer", "ACC", "Horz", "SB", "Pat", "CAA", "P12", "MWC", "Ivy", "BE", "MEAC", "Ivy", "BE", "Ivy", "A10", "A10", "CAA", "MEAC", "Sum", "BE", "Horz", "WAC", "MVC", "CAA", "ACC", "A10", "Amer", "SC", "BSky", "OVC", "Asun", "MAC", "CAA", "MVC", "MAAC", "NEC", "Asun", "SEC", "SWAC", "CUSA", "CUSA", "ACC", "A10", "Horz", "MWC", "SC", "BSth", "A10", "A10", "BE", "SEC", "SB", "SB", "ACC", "WCC", "SWAC", "WAC", "BSth", "AE", "Ivy", "BW", "BSth", "CAA", "Pat", "Amer", "Slnd", "MEAC", "BSky", "BSky", "B10", "Horz", "MVC", "Slnd", "B10", "MVC", "MAAC", "B10", "B12", "Horz", "SWAC", "Asun", "Asun", "CAA", "B12", "B12", "Asun", "MAC", "SEC", "A10", "Pat", "WAC", "Pat", "Asun", "Asun", "NEC", "BW", "BSth", "SB", "SB", "CUSA", "ACC", "WCC", "MVC", "Pat", "SEC", "AE", "MAAC", "MAAC", "BE", "CUSA", "B10", "A10", "Slnd", "AE", "MEAC", "Amer", "SC", "NEC", "ACC", "MAC", "B10", "B10", "CUSA", "Horz", "B10", "SEC", "SEC", "SWAC", "SEC", "MVC", "Sum", "MAAC", "BSky", "BSky", "OVC", "MEAC", "NEC", "OVC", "Pat", "B10", "MWC", "AE", "MWC", "WAC", "Slnd", "MAAC", "Slnd", "AE", "BSky", "BSth", "MEAC", "ACC", "MEAC", "Asun", "ACC", "Sum", "Sum", "Asun", "CUSA", "CAA", "BSky", "MAC", "MVC", "Horz", "B10", "Slnd", "ACC", "Horz", "MAC", "B10", "B12", "B12", "CUSA", "Sum", "Sum", "P12", "P12", "WCC", "Ivy", "B10", "WCC", "ACC", "WCC", "BSky", "SWAC", "BSth", "Ivy", "BE", "B10", "MAAC", "BSth", "A10", "CUSA", "A10", "MAAC", "Horz", "B10", "BSky", "NEC", "MAAC", "WAC", "SC", "WCC", "MWC", "WCC", "MWC", "WCC", "Slnd", "OVC", "WAC", "BE", "MAAC", "OVC", "Amer", "MVC", "CUSA", "SB", "SEC", "MEAC", "Sum", "Sum", "Amer", "SWAC", "BSky", "A10", "NEC", "NEC", "BE", "A10", "A10", "WCC", "Sum", "P12", "WAC", "Asun", "AE", "ACC", "B12", "WAC", "Amer", "SEC", "OVC", "OVC", "SB", "CUSA", "B12", "SEC", "Slnd", "SWAC", "SB", "B12", "SC", "MAC", "CAA", "SB", "Amer", "Amer", "CUSA", "BW", "BW", "BW", "BW", "BW", "P12", "AE", "SC", "CAA", "BSth", "MWC", "P12", "BSth", "OVC", "WAC", "P12", "MWC", "WAC", "CUSA", "MVC", "SEC", "A10", "AE", "BE", "ACC", "ACC", "SC", "NEC", "ACC", "P12", "P12", "BSky", "B12", "SC", "Sum", "CUSA", "MAC", "Amer", "CAA", "BSth", "Horz", "B10", "SC", "Horz", "MWC", "BE", "Ivy", "Horz"]

teams_list = []
team_samples.each_with_index do |b, i|
    teams_list.push({
        team_name: b,
        wins: (rand(1..6)),
        losses: (rand(1..6)),
        daily_game_id: DailyGame.all.sample.id,
        espn_id: espn_id_sample[i],
        Conf: conf_sample[i]
    })
end
favorite_teams = FavoriteTeam.create(teams_list)


puts "Seeding user Favorite Teams"
users.length.times do |t|
    user_id = users[t].id
    5.times do |w|
        favorite_team_id = favorite_teams.sample.id
        z = favorite_teams[favorite_team_id - 1]
        team = z.team_name
        ranking = (1...10).to_a.sample
        UserFavoriteTeam.create({ 
            user_id: user_id,
            favorite_team_id: favorite_team_id,
            team: team, 
            ranking: ranking
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




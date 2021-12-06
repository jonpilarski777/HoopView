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
team_samples =    ["ABILENE CHRISTIAN", "AIR FORCE", "AKRON", "ALABAMA", "ALABAMA A&M", "ALABAMA State", "ALBANY", "ALCORN State", "AMERICAN", "APPALACHIAN State", "ARIZONA", "ARIZONA State", "ARK LITTLE ROCK", "ARKANSAS", "ARKANSAS PINE BLUFF", "ARKANSAS State", "ARMY", "AUBURN", "AUSTIN PEAY", "BALL State", "BAYLOR", "BELLARMINE", "BELMONT", "BETHUNE COOKMAN", "BINGHAMTON", "BOISE State", "BOSTON COLLEGE", "BOSTON UNIV", "BOWLING GREEN", "BRADLEY", "BROWN", "BRYANT", "BUCKNELL", "BUFFALO", "BUTLER", "BYU", "CAL BAKERSFIELD", "CAL BAPTIST", "CAL FULLERTON", "CAL NORTHRIDGE", "CAL POLY", "CALIFORNIA", "CAMPBELL", "CANISIUS", "CENTRAL ARKANSAS", "CENTRAL CONN State", "CENTRAL FLORIDA", "CENTRAL MICHIGAN", "CHARLESTON SO", "CHARLOTTE", "CHATTANOOGA", "CHICAGO STATE", "CINCINNATI", "CLEMSON", "CLEVELAND State", "COASTAL CAROLINA", "COLGATE", "COLL OF CHARLESTON", "COLORADO", "COLORADO State", "COLUMBIA", "CONNECTICUT", "COPPIN State", "CORNELL", "CREIGHTON", "DARTMOUTH", "DAVIDSON", "DAYTON", "DELAWARE", "DELAWARE State", "DENVER", "DEPAUL", "DETROIT MERCY", "DIXIE State", "DRAKE", "DREXEL", "DUKE", "DUQUESNE", "EAST CAROLINA", "EAST TENNESSEE State", "EAST WASHINGTON", "EASTERN ILLINOIS", "EASTERN KENTUCKY", "EASTERN MICHIGAN", "ELON", "EVANSVILLE", "FAIRFIELD", "FAIRLEIGH DICKINSON", "FLA GULF COAST", "FLORIDA", "FLORIDA A&M", "FLORIDA ATLANTIC", "FLORIDA INT'L", "FLORIDA State", "FORDHAM", "FORT WAYNE", "FRESNO State", "FURMAN", "GARDNER WEBB", "GEORGE MASON", "GEORGE WASHINGTON", "GEORGETOWN", "GEORGIA", "GEORGIA SOUTHERN", "GEORGIA State", "GEORGIA TECH ", "GONZAGA", "GRAMBLING State", "GRAND CANYON", "HAMPTON", "HARTFORD", "HARVARD", "HAWAII", "HIGH POINT", "HOFSTRA", "HOLY CROSS", "HOUSTON", "HOUSTON BAPTIST", "HOWARD", "IDAHO", "IDAHO State", "ILLINOIS", "ILLINOIS CHICAGO", "ILLINOIS State", "INCARNATE WORD", "INDIANA", "INDIANA State", "IONA", "IOWA", "IOWA State", "IUPUI", "JACKSON State", "JACKSONVILLE", "JACKSONVILLE State", "JAMES MADISON", "KANSAS", "KANSAS State", "KENNESAW State", "KENT STATE", "KENTUCKY", "LA SALLE", "LAFAYETTE", "LAMAR", "LEHIGH", "LIBERTY", "LIPSCOMB", "LIU BROOKLYN", "LONG BEACH State", "LONGWOOD", "LOUISIANA  ", "LOUISIANA MONROE", "LOUISIANA TECH", "LOUISVILLE", "LOYOLA CAL", "LOYOLA IL", "LOYOLA MD", "LSU", "MAINE", "MANHATTAN", "MARIST", "MARQUETTE", "MARSHALL", "MARYLAND", "MASSACHUSETTS", "MCNEESE", "MD BALTIMORE CTY", "MD EASTERN SHORE", "MEMPHIS", "MERCER", "MERRIMACK", "MIAMI", "MIAMI OHIO", "MICHIGAN", "MICHIGAN State", "MIDDLE TENN State", "MILWAUKEE", "MINNESOTA", "MISSISSIPPI", "MISSISSIPPI State", "MISSISSIPPI VALLEY State", "MISSOURI", "MISSOURI State", "MO KANSAS CITY", "MONMOUTH", "MONTANA", "MONTANA State", "MOREHEAD State", "MORGAN State", "Mount State MARY'S", "MURRAY State", "NAVY", "NEBRASKA", "NEVADA", "NEW HAMPSHIRE ", "NEW MEXICO", "NEW MEXICO State", "NEW ORLEANS", "NIAGARA", "NICHOLLS", "NJIT", "Northern ARIZONA", "NO CAROLINA A&T", "NO CAROLINA CENTRAL", "NO CAROLINA State", "NORFOLK State", "NORTH ALABAMA", "NORTH CAROLINA", "NORTH DAKOTA", "NORTH DAKOTA State", "NORTH FLORIDA", "NORTH TEXAS", "NORTHEASTERN", "NORTHERN COLORADO", "NORTHERN ILLINOIS", "NORTHERN IOWA", "NORTHERN KENTUCKY", "NORTHWESTERN", "NORTHWESTERN State", "NOTRE DAME", "OAKLAND", "OHIO", "OHIO STATE", "OKLAHOMA", "OKLAHOMA State", "OLD DOMINION", "OMAHA", "ORAL ROBERTS", "OREGON", "OREGON STATE", "PACIFIC", "PENN", "PENN STATE", "PEPPERDINE", "PITTSBURGH", "PORTLAND", "PORTLAND State", "PRAIRIE VIEW A&M", "PRESBYTERIAN ", "PRINCETON", "PROVIDENCE", "PURDUE", "QUINNIPIAC", "RADFORD", "RHODE ISLAND", "RICE", "RICHMOND", "RIDER", "ROBERT MORRIS", "RUTGERS", "SACRAMENTO State", "SACRED HEART", "SAINT PETERS", "SAM HOUSTON State", "SAMFORD", "SAN DIEGO", "SAN DIEGO State", "SAN FRANCISCO", "SAN JOSE State", "SANTA CLARA", "SE LOUISIANA", "SE MISSOURI State", "SEATTLE", "SETON HALL", "SIENA", "SIUE EDWARDSVILLE", "SMU", "Southern ILLINOIS", "Southern Miss", "SOUTH ALABAMA", "SOUTH CAROLINA", "SOUTH CAROLINA State", "SOUTH DAKOTA", "SOUTH DAKOTA State", "SOUTH FLORIDA", "SOUTHERN", "SOUTHERN UTAH", "ST BONAVENTURE", "Saint FRANCIS NY", "Saint FRANCIS PA", "Saint JOHNS", "Saint JOSEPHS", "ST LOUIS", "Saint MARY'S", "ST THOMAS", "STANFORD", "STEPHEN F AUSTIN", "STETSON", "STONY BROOK", "SYRACUSE", "TCU", "TARLETON State", "TEMPLE", "TENNESSEE", "TENNESSEE State", "TENNESSEE TECH", "TEX ARLINGTON", "TEX SAN ANTONIO", "TEXAS", "TEXAS A&M", "TEXAS A&M CC", "TEXAS SOUTHERN", "TEXAS STATE", "TEXAS TECH", "THE CITADEL", "TOLEDO", "TOWSON", "TROY", "TULANE", "TULSA", "UAB", "UC DAVIS", "UC IRVINE", "UC RIVERSIDE", "UC SAN DIEGO", "UC SANTA BARBARA", "UCLA", "UMASS LOWELL", "UNC  GREENSBORO", "UNC  WILMINGTON", "UNC ASHVILLE", "UNLV", "USC", "USC UPSTATE", "UT MARTIN", "UT RIO GRANDE VALLEY", "UTAH", "UTAH State", "UTAH VALLEY", "UTEP", "VALPARAISO", "VANDERBILT", "VCU", "VERMONT", "VILLANOVA", "VIRGINIA  ", "VIRGINIA TECH", "VMI", "WAGNER", "WAKE FOREST", "WASHINGTON  ", "WASHINGTON State", "WEBER ST", "WEST VIRGINIA", "WESTERN CAROLINA", "WESTERN ILLINOIS", "WESTERN KENTUCKY", "WESTERN MICHIGAN", "WICHITA State", "WILLIAM AND MARY", "WINTHROP", "WIS GREEN BAY", "WISCONSIN", "WOFFORD", "WRIGHT State", "WYOMING", "XAVIER", "YALE", "YOUNGSTOWN State"] 


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




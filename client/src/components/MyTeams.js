import React from 'react'
import {Link} from 'react-router-dom'


function MyTeams({myTeams, teams}) {


    const favoriteTeams = teams.filter(team => team.id === team.user_favorite_team.id)
           
    console.log("favoriteTeams:", favoriteTeams)


    return (
        <div> 
      
           
             <h1> My Favorite Teams </h1>
            {favoriteTeams.map(team => (
                <p>
                <Link to= {`myteams/${team.id}`}>
                    {team.team_name} 
                </Link>
            </p>))}
         
        </div>
    )
}

export default MyTeams

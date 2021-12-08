import React from 'react'
import {Link} from 'react-router-dom'

function TeamList({teams}) {

    return (
        <div> 
            <h1> All D1 Teams </h1>
            {teams.map(team => (
                <p>
                    <Link to={`favorite_teams/${team.id}`}>
                        {team.team_name}
                    </Link>
                </p>
            ))}
        </div>
    )
}

export default TeamList

import React from 'react'
import {Link} from 'react-router-dom'

function TeamList({teams, addFavoriteTeam, removeFavoriteTeam}) {
    // const[team, setTeam] = useState('')
    
    // // const handleSubmit = (e) => {
    // //     e.preventDefault()
    // //     addFavoriteTeam(team)
    // //     setTeam('')
    // //     }

    const addOrRemoveFavoriteTeam = (team) => {
        if (team.user_favorite_team) {
        return <button onClick={() => removeFavoriteTeam(team.id)}> Unfavorite Team </button>
        }
        else {
            return <button onClick={() => addFavoriteTeam(team.id)}> Favorite Team </button>


        }

    }

    
    
    return (
        <div> 
            {teams.map(team => (
                <p>
                    <Link to={`/teams/${team.id}`}>
                        {team.team}
                    </Link>
                    <span>{addOrRemoveFavoriteTeam(team)}</span>
                </p>

            ))}



        </div>


    )
}

export default TeamList

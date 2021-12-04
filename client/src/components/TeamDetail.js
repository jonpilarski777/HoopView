import React, {useState, useEffect, useCallback} from 'react'
import {Link} from 'react-router-dom'
import TeamStats from './TeamStats'
import TeamSchedule from './TeamSchedule'

function TeamDetail({teamId, addFavoriteTeam, removeFavoriteTeam}) {
    
    const [team, setTeam] = useState(null)

    const fetchTeam = useCallback(() => {
        fetch(`/api/user_favorite_teams/${teamId}`,  {
            credentials: 'include',
        })
        .then(r => r.json())
        .then(team => setTeam(team))
    }, [teamId])

    useEffect(() => {
        fetchTeam ()
    }, [fetchTeam])
    

    const addOrRemoveButton = (team) => {
        if (team.user_favorite_team) {
            return (
                <button onClick ={() => removeFavoriteTeam(team.id).then(() => fetchTeam())}
                > Remove Team 
                </button>
            )
        } else {
            return (
                <button onClick= {()=> addFavoriteTeam(team.id).then(() => fetchTeam())}

                > Add Team
                 </button>
            )
        }
    }

    // Note ? used after team is optional chaining operator which returns undefined instead of error when favorite team doesnt exist
    if (!team){ return <div></div>}
    return (
        <div>
            <h1> {team.name} </h1>
            {addOrRemoveButton(team)}
        </div>
    )
}

export default TeamDetail

import React, {useState, useEffect, useCallback} from 'react'
import {useHistory} from 'react-router-dom'
import TeamStats from './TeamStats'
import TeamSchedule from './TeamSchedule'

function TeamDetail({newTeamId, addFavoriteTeam, removeFavoriteTeam}) {
    
    const [team, setTeam] = useState(null)
    const [isFavorite, SetisFavorite] = useState(false)
    let history = useHistory();

    const backButton = () => {
        history.push("/teams")
    }

    // const takeMeToFavorites = () => {
    //     history.push("/myteams")
    // }

    const fetchTeam = useCallback(() => {
        fetch(`/api/favorite_teams/${newTeamId}`,  {
            credentials: 'include',
        })
        .then(r => r.json())
        .then(team => setTeam(team))
    }, [newTeamId])

    useEffect(() => {
        fetchTeam ()
    }, [fetchTeam])
    

    function handleFavorite() {
        SetisFavorite(!isFavorite);
    }

    const addOrRemoveButton = (team) => {
        if (team.user_favorite_team) {
            return (
                <button onClick ={() => {removeFavoriteTeam(team.id).then(() => fetchTeam()); handleFavorite()}}
                > Remove {team.team_name}
                </button>
            )
        } else {
            return (
                <button onClick= {()=> {addFavoriteTeam(team.id).then(() => fetchTeam()); handleFavorite()}}
                > Favorite {team.name}
                 </button>
            )
        }
    }

    if (!team){ return <div></div>}
    return (
        <div>
            <h1> {team.team_name} </h1> 
            {addOrRemoveButton(team)} 
            <button onClick={() => backButton()}>Back</button>
            {isFavorite ? <> <TeamSchedule team = {team}/> <TeamStats />  </>: <div></div>}
        </div>
    )
}

export default TeamDetail

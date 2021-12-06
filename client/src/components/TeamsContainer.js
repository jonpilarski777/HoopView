import React, {useState, useEffect} from 'react'
import {Switch, Route} from 'react-router-dom'
import TeamList from './TeamList'
import TeamDetail from './TeamDetail'

function TeamsContainer() {
    const [teams, setTeams] = useState([])

    useEffect(() => {
        fetch('/api/favorite_teams', {
            credentials: 'include'
        })
        .then(r => r.json())
        .then(teams => setTeams(teams))
    }, [])

    const addFavoriteTeam =  (teamId) => {
        return fetch('/api/user_favorite_teams', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            credentials: 'include',
            body: JSON.stringify({favorite_team_id: teamId})
            })
            .then(r => {
                    if (r.ok) {
               return r.json()}
               else {
                return r.json().then(errors => Promise.reject(errors))
               }
            })
            // .then(team => {
            //     setTeams(teams.concat(team))
            // })
        
            .then(userFavoriteTeam => {
                const updatedFavoriteTeams = teams.map((team) => {
                    if (team.id === teamId) { 
                        return{
                            ...team,
                            user_favorite_team: userFavoriteTeam,
                            }
                        } else {
                            return team 
                        }
                
                    })
                    setTeams(updatedFavoriteTeams)
                })
            }
    const removeFavoriteTeam = (teamId) => {
        const favoriteTeam = teams.find(team => team.id === teamId)
        return fetch(`/user_favorite_teams/${teamId}`, {method: 'DELETE', 
        credentials: 'include', 
    })
    .then(r => {
        if (r.ok) {
            const updatedFavoriteTeams = teams.map((team) => {
                if (team.id === teamId) {
                    return {
                        ...team,
                        user_favorite_team: undefined
                    }
                } else {
                    return team
                }
            })
            console.log(updatedFavoriteTeams)
            setTeams(updatedFavoriteTeams)
        }
    })
}

    return (
        <div>
            <Switch>
                <Route 
                exact 
                path="/teams"
                >
                <TeamList 
                teams = {teams}
                addFavoriteTeam = {addFavoriteTeam}
                removeFavoriteTeam = {removeFavoriteTeam}
                />                  
                </Route>            
                <Route
                    exact
                    path="/teams/:id"
                    render={({match}) => {
                        return <TeamDetail
                            teamId={match.params.id}
                            addFavoriteTeam = {addFavoriteTeam}
                            removeFavoriteTeam = {removeFavoriteTeam}
                        />
                     }}
                />
            </Switch>
            
        </div>
    )
}

export default TeamsContainer

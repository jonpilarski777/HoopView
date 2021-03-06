import React, {useState, useEffect} from 'react'
import {Switch, Route} from 'react-router-dom'
import TeamList from './TeamList'
import TeamDetail from './TeamDetail'
import MyTeams from './MyTeams'

function TeamsContainer({currentUser}) {
    const [teams, setTeams] = useState([])
   
    useEffect(() => {
        fetch('/api/favorite_teams', {
            credentials: 'include'
        })
        .then(r => r.json())
        .then(teams => setTeams(teams))}, [])

    const addFavoriteTeam = (newTeamId) => {
        const newFav = {
            team: teams[newTeamId-1].team_name,
            favorite_team_id: newTeamId,           
            ranking: Math.floor(Math.random() * 10) + 1,
            user_id: currentUser.id,
        }
      
        return fetch('/api/user_favorite_teams', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            credentials: 'include', body: JSON.stringify(newFav)
            })
            .then(r => {
                    if (r.ok) {
               return r.json()}
               else {
                return r.json().then(errors => Promise.reject(errors))
               }
            })
            .then(userFavoriteTeam => {
                const updatedFavoriteTeams = teams.map(team => {
                    if (team.id === newTeamId) { 
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
        let favoriteTeam = teams.find(team => team.id === teamId).user_favorite_team.id
        return fetch(`/api/user_favorite_teams/${favoriteTeam}`, {method: 'DELETE', 
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
            setTeams(updatedFavoriteTeams)
        }
    })
    }

// const updateFavoriteTeamRanking = (teamId) => {
//     return fetch('/api/user_favorite_teams', {
//         method: 'POST',
//         headers: {
//             'Content-Type': 'application/json'
//         },
//         credentials: 'include',
//         body: JSON.stringify({favorite_team_id: teamId})
//         })
//         .then(r => {
//                 if (r.ok) {
//            return r.json()}
//            else {
//             return r.json().then(errors => Promise.reject(errors))
//            }
//         })
//         .then(userFavoriteTeam => {
//             const updatedRanking = myTeams.map((myTeam) => {
//                 if (myTeam.id === teamId) {
//                     return {
//                         ...myTeam,
//                         user_favorite_team: userFavoriteTeam}
//                     } else {
//                         return myTeam
//                     }})
//                     setMyTeams(updatedRanking)
//                 }
//             } 

    return (
        <div>
            <Switch>
                <Route 
                exact 
                path="/favorite_teams"
                >
                <TeamList 
                teams = {teams}
                addFavoriteTeam = {addFavoriteTeam}
                removeFavoriteTeam = {removeFavoriteTeam}
                />                  
                </Route>            
                <Route
                    exact
                    path="/favorite_teams/:id"
                    render={({match}) => {
                        return <TeamDetail
                            newTeamId={match.params.id}
                            addFavoriteTeam = {addFavoriteTeam}
                            removeFavoriteTeam = {removeFavoriteTeam}
                        />
                     }}
                />
                <Route
                    exact
                    path="/user_favorite_teams"
                >
                   <MyTeams currentUser = {currentUser} teams= {teams} />
               </Route>
            </Switch>
            
        </div>
    )
}

export default TeamsContainer

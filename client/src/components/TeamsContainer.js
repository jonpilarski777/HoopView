import React, {useState, useEffect} from 'react'
import {Switch, Route} from 'react-router-dom'
import TeamList from './TeamList'
import TeamDetail from './TeamDetail'

function TeamContainer() {

    const [teams, setTeams] = useState([])

    useEffect(() => {
        fetch('/api/favorite_teams', {
            credentials: 'include'
        })
        .then(r => r.json())
        .then(teams => setTeams(teams))
    }, [])

    // 
    return (
        <div>
            <Switch>
                <Route 
                exact 
                path="/teams"
                >
                <TeamList 
                teams = {teams}
                />                  
                </Route>            
                <Route
                    exact
                    path="/teams/:id"
                    render={({match}) => {
                        return <TeamDetail
                            teamId={match.params.id}
                        />
                     }}
                />
            </Switch>
            
        </div>
    )
}

export default TeamContainer

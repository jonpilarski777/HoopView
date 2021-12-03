import React, {useEffect, useState} from 'react'
import {Switch, Route} from 'react-router-dom'
import GameList from './GameList'
import GameDetail from './GameDetail'

function GamesContainer() {
    const [games, setGames] = useState([])

    useEffect(() => {
        fetch("/api/daily_games", {
            credentials: 'include'
        })
        .then(r => r.json())
        .then(games => setGames(games))
    }, [])





    return (
        <div>
            <Switch>
                <Route
                exact
                path="/games"                
                >
                <GameList 
                games={games}
                />
                </Route>
                <Route
                exact
                path="/games/:id" 
                render= {({match}) => {
                    return (
                        <GameDetail
                        games={games}
                        />
                    )
                }}               
                />
            </Switch>
        </div>
    )
}

export default GamesContainer

import React from 'react'
import {Switch, Route, NavLink } from 'react-router-dom'
import DailyGamesContainer from './DailyGamesContainer.js'
import TeamView from './TeamView.js'

function AuthenticatedApp({currentUser, setCurrentUser, setAuthChecked}) {
  
    const handleLogout = () => {
        fetch(`/api/logout`, {
          method: 'DELETE'
        })
          .then(res => {
            if (res.ok) {
              setCurrentUser(null)
              setAuthChecked(false)
            }
          })
      }
    return (
        <>
        <nav>
            <span>
                <NavLink to= "/user_daily_games"> Daily Games</NavLink>
                <NavLink to= "/user_favorite_teams"> Favorite Teams</NavLink>
            </span>
            <span> Logged in as {currentUser.username} <button onClick= {handleLogout}>Logout</button>
            </span>
        </nav>
            <Switch>
                <Route path="/user_daily_games">
                    <DailyGamesContainer currentUser = {currentUser}/>
                </Route>
                <Route path="/user_favorite_teams">
                    <TeamView currentUser = {currentUser}/>
                </Route>
            </Switch>
            </>
      )

}

export default AuthenticatedApp;

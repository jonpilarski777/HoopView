import React from 'react'
import Navbar from './components/Navbar'
import TeamsContainer from './components/TeamsContainer'
import GamesContainer from './components/GamesContainer'
import MyTeams from './components/MyTeams'
import {Switch, Route, Redirect, useHistory } from 'react-router-dom'


function AuthenticatedApp({currentUser, setCurrentUser}) {
    const history = useHistory()  


    const handleLogout = () => {
        fetch(`/api/logout`, {
          method: 'DELETE',
          credentials: 'include'
        })
          .then(r => {
            if (r.ok) {
              setCurrentUser(null)
              history.push('/')
            }
          })
      }
    return (
        <>
          <Navbar 
            setCurrentUser={setCurrentUser}
            currentUser={currentUser}
            handleLogout={handleLogout}
          />
          <Switch>
            <Route path="/favorite_teams">
                <TeamsContainer currentUser={currentUser}/>
            </Route>
          <span> </span>
            <Route path="/games">
                <GamesContainer currentUser={currentUser}/>
            </Route>
            <Route path="/user_favorite_teams">
                <MyTeams currentUser={currentUser}/>
            </Route>
            <Redirect to= "/favorite_teams" />
          </Switch>
        </>
      );

}

export default AuthenticatedApp;

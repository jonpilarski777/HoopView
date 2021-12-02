import React from 'react'
import Navbar from './components/Navbar'
import TeamsContainer from './components/TeamsContainer'
import GamesContainer from './components/GamesContainer'
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
            <Route path="/teams">
                <TeamsContainer/>
            </Route>
            <Route path="/games">
                <GamesContainer/>
            </Route>
            <Redirect to= "/teams" />
          </Switch>
        </>
      );

}

export default AuthenticatedApp;

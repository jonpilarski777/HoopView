import './App.css';
import React, { useState, useEffect } from 'react';
import { BrowserRouter as Router } from 'react-router-dom';
import AuthenticatedApp from './components/AuthenticatedApp';
import UnauthenticatedApp from './components/UnauthenticatedApp';



function App() {
  // const [count, setCount] = useState(0);
  const [ currentUser, setCurrentUser] = useState(null)
  const [authChecked, setAuthChecked] = useState(false)

  // useEffect(() => {
  //   fetch("/hello")
  //     .then((r) => r.json())
  //     .then((data) => setCount(data.count));
  // }, []);

  useEffect( () => {
    fetch("/api/me", {
          credentials: 'include'
        })
          .then(res => {
            if (res.ok) {
              res.json().then((user) => {
                setCurrentUser(user)
                setAuthChecked(true)
              })
            } else {
              setAuthChecked(false)
            }
          })
      }, [])


      // <Login setCurrentUser = {setCurrentUser}/>
  if(!authChecked) {return <div> </div>}
  return (
    <Router>
      {currentUser? (
        <AuthenticatedApp 
        currentUser={currentUser}
        setCurrentUser = {setCurrentUser}
        setAuthChecked = {setAuthChecked}/>)
        :
        (<UnauthenticatedApp
          setCurrentUser={setCurrentUser}/>
        )}
  </Router>
  );
}

export default App

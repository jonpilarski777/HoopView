import React, {useState} from 'react'
import { Redirect, useHistory, Link } from 'react-router-dom'

function Login({ setCurrentUser }) {
    const history = useHistory()
    const [username, setUsername] = useState('')
    const [password, setPassword] = useState('')
    
    const handleSubmit = (event) => {
      event.preventDefault()
      fetch('/api/login', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json'
        },
        body: JSON.stringify({username, password})
      })
        .then(res => {
          if (res.ok) {
            res.json().then(user => {
              setCurrentUser(user)
              history.push('/teams')
            })
          } else {
            res.json().then(errors => {
              console.error(errors)
            })
          }
        })
    }

return (
    <div>
      <Redirect to="/" />
          <form onSubmit={handleSubmit}>
              <h1> HoopView Login </h1>
         
              <p>
                <label 
                    htmlFor="username"
                >
                    Username
                </label>
                <input
                    type="text"
                    name="username"
                    value={username}
                    onChange={(e) => setUsername(e.target.value)}
                />
              </p>
              <p>
                <label 
                    htmlFor="password"
                >
                    Password
                </label>
                <input
                    type="password"
                    name=""
                    value={password}
                    onChange={(e) => setPassword(e.target.value)}
                />
              </p>
              <p><button type="submit">Log In</button></p>
              <p> First time on HoopView? </p> 
              <p><Link to="/signup"> <button>Create an Account </button></Link></p>
          </form>         
    </div>
    )
}

export default Login

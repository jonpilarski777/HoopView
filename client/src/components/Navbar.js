import React from 'react'
import {NavLink} from 'react-router-dom'

function Navbar({handleLogout, currentUser}) {

    // const [toggleNavbar, settoggleNavbar] = useState(false)

    return (
        <>
            <div>
                <p> Currently signed in as {currentUser.username}</p>
                <button onClick={handleLogout}>Logout</button>
            </div>
            <div>
                <NavLink to="/teams" style={{marginRight: 45}}>Teams</NavLink>
                <NavLink to="/myteams" style={{marginRight: 45}}>Favorite Teams</NavLink>
                <NavLink to="/games">Games</NavLink>
            </div>
        </>
    )
}

export default Navbar

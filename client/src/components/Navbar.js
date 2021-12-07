import React from 'react'
import {NavLink} from 'react-router-dom'

function Navbar({handleLogout, currentUser}) {

    // const [toggleNavbar, settoggleNavbar] = useState(false)

    return (
        <>
            <div>
                <h1> Currently signed in as {currentUser.username}</h1>
                <NavLink to="/teams">Teams</NavLink>
                <NavLink to="/myteams"> Favorite Teams</NavLink>
                <NavLink to="/games">Games</NavLink>
            </div>
            <div>
                <button onClick={handleLogout}>Logout</button>
            </div>

        </>
    )
}

export default Navbar

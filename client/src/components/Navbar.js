import React from 'react'
import {NavLink} from 'react-router-dom'

function Navbar({handleLogout}) {

    // const [toggleNavbar, settoggleNavbar] = useState(false)

    return (
        <>
            <div>
                <NavLink to="/favorite_teams">Teams</NavLink>
                <NavLink to="/daily_games">Games</NavLink>
            </div>
            <div>
                <button onClick={handleLogout}>Logout</button>
            </div>

        </>
    )
}

export default Navbar

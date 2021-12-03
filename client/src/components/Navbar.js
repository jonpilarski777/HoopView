import React from 'react'
import {NavLink} from 'react-router-dom'

function Navbar({handleLogout}) {

    // const [toggleNavbar, settoggleNavbar] = useState(false)

    return (
        <>
            <div>
                <NavLink to="/teams">Teams</NavLink>
                <NavLink to="/games">Games</NavLink>
            </div>
            <div>
                <button onClick={handleLogout}>Logout</button>
            </div>

        </>
    )
}

export default Navbar
